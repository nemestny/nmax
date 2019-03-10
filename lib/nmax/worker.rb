module Nmax
  # class Error < StandardError; end
  
  class Worker
    def initialize(data:, storage:)
      @data = data
      @storage = storage
    end

    def call
      extract_numbers
      print_storage
    end

    private

    def extract_numbers
      number_array = []

      @data.each_char do |char|
        if /\d/.match?(char)
          number_array << char
        elsif number_array.any?
          number = convert_to_number(number_array)
          @storage.add(number)
          number_array.clear
        end
      end
    end

    def convert_to_number(number_array)
      number_array.join.to_i
    end

    def print_storage
      @storage.each do |number|
        puts number
      end
    end
        
  end
end