#!/usr/bin/env ruby
#
# Status checker for Swisscom iPhone orders
#
# Copyright (c) 2012 Michael Weibel
#
# License: do what the fuck you want license
#

require 'nokogiri'
require 'open-uri'
require 'uri'

token = File.open(File.dirname(__FILE__) + "/.token", &:readline)
doc = Nokogiri::HTML(open("http://services.bluewin.ch/iphone/?token=" + token.strip()))

h3 = doc.xpath('/html/body/div/div[3]/h3')
puts h3.inner_html
