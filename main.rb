require 'pry'
require './lib/stray'

unless ARGV.first
  abort <<~MSG
    Usage: ruby #$0 FILE
  MSG
end
Stray::Walker.new(ARGV.first).walk
