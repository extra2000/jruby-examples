version = File.read(File.expand_path("../VERSION", __FILE__)).strip

Gem::Specification.new do |s|
  s.name = 'hello-world'
  s.version = version
  s.licenses = ['MIT']
  s.summary = 'Hello world'
  s.description = 'Hello world example'
  s.authors = ['extra2000']
  s.email = 'dummy@extra2000.io'
  s.homepage = 'https://github.com/extra2000/jruby-examples'
  s.require_paths = ['src']

  s.files = Dir[
    'src/hello-world.rb',
    '*.gemspec',
    'Gemfile',
    'README.md',
    'VERSION'
  ]
end
