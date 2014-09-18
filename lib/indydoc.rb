#!/usr/bin/env ruby

# file: indydoc.rb

require 'nokogiri'
require 'open-uri'
require 'method_parser'


class IndyDoc
  
  def initialize(file=nil, path: File.dirname(__FILE__))
    @file = file
    @px = File.read(file) if file
    @path = path
  end  

  def parse(filepath)
    mp = MethodParser.new File.read(filepath)
    @raw_xml = mp.to_xml
  end
  
  def save(filepath=@file)
    
    raise 'IndyDoc#save: please supply a file path' if filepath.nil?
    
    @px ||= self.to_px
    File.write filepath, @px
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
