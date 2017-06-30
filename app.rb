#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'
require 'sinatra/json'

get '/' do
  vcap_application = ENV['VCAP_APPLICATION'] || '{}'
  app_info = JSON.parse(vcap_application)

  json app_info
end
