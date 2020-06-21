#!/usr/bin/env ruby

require_relative "../lib/environment"
require "bundler/setup"
# require "environment"

ClimbersCli::CLI.new.call
API.get_routes