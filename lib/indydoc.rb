#!/usr/bin/env ruby

# file: indydoc.rb

require 'polyrex'
require 'nokogiri'
require 'open-uri'
require 'method_parser'


class IndyDoc
  
  attr_reader :to_s
  
  def initialize(file=nil, path: File.dirname(__FILE__))
    @file = file
    @px = Polyrex.new file if file
    @path = path
  end
  
  def merge(rbfile = nil)


    buffer = File.read rbfile
    
    @px.records.each do |x|

      x.records.each do |method|

        if method.desc.strip.length > 0 then

          buffer.sub!(/( *)def\s+#{method.name}/) do |y|

            indent = ($1)

            comment = if method.desc.lines.length < 2 then 
              method.desc.lines\
                    .map {|line| "%s# %s\n" % [indent,line.chomp]}
            else
              
              lines = method.desc.lines\
                    .map {|line| "%s# %s" % [indent,line.chomp]}

              [indent + '#'] << lines << [indent + "#\n"]

            end
            
            y.sub(/(?= *def\s+#{method.name})/, comment.join("\n"))
            
          end
        end
      end
    end
    
    @to_s = buffer
    
  end

  def parse(filepath)    
    mp = MethodParser.new File.read(filepath)
    @raw_xml = mp.to_xml
  end
  
  def save(filepath=@file)
    
    raise 'IndyDoc#save: please supply a file path' if filepath.nil?

    @px ? px.save(filepath) : File.write(filepath, @px=self.to_px)       
    puts 'saved'
  end

  def to_px
    doc  = Nokogiri::XML(@raw_xml)
    xsl_source = File.read(File.join(@path,'to_polyrex.xsl'))
    #xsl_source = open(File.join(@path,'template.xsl'), 
    #                                        'UserAgent' => 'IndyDoc').read
    xslt = Nokogiri::XSLT(xsl_source)
    xslt.transform(doc).to_s 
  end
end
