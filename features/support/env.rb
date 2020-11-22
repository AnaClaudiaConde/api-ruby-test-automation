require 'httparty'
require 'rspec'
require 'yaml'

@profire = ENV['PROFILE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + '/amb.yml')
API = CONFIG[@profire]
