version = File.read(File.expand_path("../VERSION", __FILE__)).strip

Gem::Specification.new do |s|
  s.name = 'my-yaml-parser'
  s.version = version
  s.licenses = ['MIT']
  s.summary = 'Parsing YAML'
  s.description = 'Example how to parse YAML file'
  s.authors = ['extra2000']
  s.email = 'dummy@extra2000.io'
  s.homepage = 'https://github.com/extra2000/jruby-examples'
  s.require_paths = ['src']

  s.files = Dir[
    'src/parse-yaml.rb',
    '*.gemspec',
    'Gemfile',
    'README.md',
    'VERSION'
  ]
end
