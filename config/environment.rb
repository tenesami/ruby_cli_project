#Add Dependecy of teh Bundler and devenv
require 'bundler/setup'
require 'dotenv/load' 
Bundler.require

#route to the class
require_relative "../lib/api"
require_relative "../lib/cli"
require_relative "../lib/holiday.rb"