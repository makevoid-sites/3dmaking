path = File.expand_path "../../", __FILE__
PATH = path

require 'bundler/setup'
Bundler.require :default
require 'yaml'


require "#{path}/lib/fb_albums"
require "#{path}/lib/photo"
require "#{path}/lib/album"
require "#{path}/lib/albums"
require "#{path}/lib/product"

require "#{path}/lib/utils"
include Utils

eval File.read "db/products.rb"