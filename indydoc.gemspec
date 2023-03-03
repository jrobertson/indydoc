Gem::Specification.new do |s|
  s.name = 'indydoc'
  s.version = '0.2.2'
  s.summary = 'Generate source code documentation from source code + Polyrex file.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*']
  s.add_runtime_dependency('nokogiri', '~> 1.14', '>=1.14.2') 
  s.add_runtime_dependency('method_parser', '~> 0.2', '>=0.2.1')
  s.add_runtime_dependency('polyrex', '~> 1.4', '>=1.4.2') 
  s.signing_key = '../privatekeys/indydoc.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/indydoc'
end
