# encoding: utf-8
require 'yaml'
require 'json'
require 'logger'
require 'ruby-debug'

logger = Logger.new(STDOUT)
logger.level = Logger::INFO

yamldata = YAML.load_file('input.yaml')
debugger
logger.info("yamldata: #{JSON.pretty_generate(yamldata)}")

# Example to print only non-hash
yamldata['janusgraph']['lookup'].each do |key, value|
  if not value.is_a?(Hash)
    logger.info("key='#{key}' ; value='#{value}'")
  end
end
