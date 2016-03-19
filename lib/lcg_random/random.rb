module LcgRandom
  # Random interface
  class Random
    @modulus = 6075
    @increment = 1283
    @multiplier = 106

    class << self
      attr_reader :modulus, :increment, :multiplier

      def next(prev)
        (prev * multiplier + increment) % modulus
      end
    end

    attr_reader :seed, :last

    def initialize(seed)
      @seed = seed
      @last = seed
    end

    def reset
      @last = seed
    end

    def next
      @last = Random.next(last)
    end
  end
end
