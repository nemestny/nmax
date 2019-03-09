# require "nmax/version"

module Nmax
  # class Error < StandardError; end
  
  def self.run
    puts 'hi'
    STDIN.each_char do |char|
      puts char
    end
  end
end
