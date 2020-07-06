#!/usr/bin/env ruby

require_relative "../lib/environment"
require "bundler/setup"
# require "environment"

ClimbersCli::CLI.new.call
ClimbersCli::API.get_routes