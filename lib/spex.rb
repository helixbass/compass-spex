$:.unshift File.dirname(__FILE__)

require "sass"
require "compass"

module Sass::Script::Functions
  def char_at( string, index )
    assert_type string, :String
    Sass::Script::String.new( string.value[ index.value.to_i ] )
  end
  def substr( string, start, ender )
    assert_type string, :String
    Sass::Script::String.new( string.value[ start.value.to_i ... ender.value.to_i ] )
  end
end
