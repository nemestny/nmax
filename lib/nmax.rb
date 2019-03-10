# require "nmax/version"

module Nmax
  # class Error < StandardError; end
  
  def self.run
    puts 'hi'


    if STDIN.tty? #no typing, use cat command only
      puts 'No data..'
      return 
    end

    
    
    n_max_count = ARGV[0].to_i
    storage = Storage.new(size: )
    




    STDIN.each_char do |char|
      puts char if /\d/.match?(char)
    end
  end
end
