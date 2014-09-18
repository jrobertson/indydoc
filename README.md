# Introducing the indydoc gem

    require 'indydoc'

    idoc = IndyDoc.new
    idoc.parse('/home/james/learning/ruby/temp/simple_number.rb')
    puts idoc.to_px

The indydoc gem which is under development is intended to make documenting source code easier, by creating a template outline from the project's defined methods. This template which is a Polyrex file can be used to contain the descriptions, usage examples and comments. The Polyrex file will then be merged with the original source code file to create a well documented source code file.

output

<pre>
&lt;?xml version="1.0"?&gt;
&lt;doc&gt;
  &lt;summary&gt;
    &lt;project&gt;project1&lt;/project&gt;
    &lt;desc&gt; &lt;/desc&gt;
  &lt;/summary&gt;
  &lt;records&gt;
    &lt;klass&gt;
      &lt;summary&gt;
        &lt;name&gt;SimpleNumber&lt;/name&gt;
      &lt;/summary&gt;
      &lt;records&gt;
        &lt;def&gt;
          &lt;summary&gt;
            &lt;name&gt;initialize&lt;/name&gt;
            &lt;scope&gt;private&lt;/scope&gt;
            &lt;desc&gt; &lt;/desc&gt;
          &lt;/summary&gt;
          &lt;records/&gt;
        &lt;/def&gt;
        &lt;def&gt;
          &lt;summary&gt;
            &lt;name&gt;add&lt;/name&gt;
            &lt;scope&gt;public&lt;/scope&gt;
            &lt;desc&gt; &lt;/desc&gt;
          &lt;/summary&gt;
          &lt;records/&gt;
        &lt;/def&gt;
        &lt;def&gt;
          &lt;summary&gt;
            &lt;name&gt;multiply&lt;/name&gt;
            &lt;scope&gt;public&lt;/scope&gt;
            &lt;desc&gt; &lt;/desc&gt;
          &lt;/summary&gt;
          &lt;records/&gt;
        &lt;/def&gt;
        &lt;def&gt;
          &lt;summary&gt;
            &lt;name&gt;divide&lt;/name&gt;
            &lt;scope&gt;private&lt;/scope&gt;
            &lt;desc&gt; &lt;/desc&gt;
          &lt;/summary&gt;
          &lt;records/&gt;
        &lt;/def&gt;
        &lt;def&gt;
          &lt;summary&gt;
            &lt;name&gt;square&lt;/name&gt;
            &lt;scope&gt;protected&lt;/scope&gt;
            &lt;desc&gt; &lt;/desc&gt;
          &lt;/summary&gt;
          &lt;records/&gt;
        &lt;/def&gt;
      &lt;/records&gt;
    &lt;/klass&gt;
  &lt;/records&gt;
&lt;/doc&gt;
</pre>

## Resources

* [indydoc](http://rubygems.org/gems/indydoc)

indydoc gem documentation generator
