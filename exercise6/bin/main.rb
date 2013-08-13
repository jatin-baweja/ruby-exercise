#!/usr/bin/env ruby
require_relative "../lib/bike"
pulsar = Bike.new("Pulsar", 60000, "Bajaj")
pulsar.details
pulsar.price = 80000
pulsar.details