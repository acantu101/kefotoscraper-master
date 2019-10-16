#!/usr/bin/env ruby

require "bundler/setup"
require "kefoto_scraper"

Kefoto_scraper::CLI.new.call
