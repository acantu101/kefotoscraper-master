#!/usr/bin/env ruby

require "bundler/setup"
require "kefoto_scraper/CLI.rb"
require "kefoto_scraper/version.rb"

KefotoScraper::CLI.new.call
