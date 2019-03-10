require "nmax/version"
require "nmax/worker"
require "nmax/storage"

module Nmax
  # class Error < StandardError; end
  
  def self.run
    size = ARGV[0].to_i

    if STDIN.tty? || !size.positive? #no typing, use cat command only
      puts 'No correct data. See docs for use nmax.'
      return 
    end

    storage = Storage.new(size: size)
    
    worker = Worker.new(data: STDIN,storage: storage).call
  end
end
