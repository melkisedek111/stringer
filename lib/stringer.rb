# frozen_string_literal: true

require_relative "stringer/version"

module Stringer
  def self.spacify(*strings)
    string = ""
    strings.each do |s|
      string += " " + s
    end
    string.strip
  end

  def self.minify string, length
    string.length >= length ? string[0...length] + "..." : string
  end

  def self.replacify string, stringRemove, stringInsert
    string.gsub(stringRemove, stringInsert)
  end

  def self.tokenize string
    string.split(" ")
  end

  def self.removify string,toRemove
    string.gsub(toRemove, "").gsub(/\s+/, ' ')
  end
  class Error < StandardError; end

  # Your code goes here...
end
