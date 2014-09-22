Gem::Specification.new do |s|
  s.name = 'indydoc'
  s.version = '0.2.1'
  s.summary = 'Generate source code documentation from source code + Polyrex file.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*']
  s.add_runtime_dependency('nokogiri', '~> 1.6', '>=1.6.2.1') 
  s.add_runtime_dependency('method_parser', '~> 0.1', '>=0.1.5')
  s.add_runtime_dependency('polyrex', '~> 0.9', '>=0.9.11') 
  s.signing_key = '../privatekeys/indydoc.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/indydoc'
end
