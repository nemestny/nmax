module Nmax
  ## Storage class for storage sorted numbers
  class Storage
    def initialize(size:)
      @sorted_storage = SortedSet.new
      @size = size
    end

    def add(number)
      return if @sorted_storage.include?(number)

      if @sorted_storage.size < @size
        @sorted_storage.add(number)
      else
        custom_add(number)
      end
    end

    def each(&block)
      @sorted_storage.each(&block)
    end

    private

    def custom_add(number)
      min_number = @sorted_storage.min

      return unless min_number < number

      @sorted_storage.delete(min_number)
      @sorted_storage.add(number)
    end
  end
end
