# frozen_string_literal: true

module Wb
  # is it lookign for this
  class Character
    class << self
      def random
        new(Attributes.random)
      end
    end

    attr_reader :attributes, :character_class

    def initialize(attributes)
      @attributes = attributes
    end

    def to_h
      {
        attributes:
      }
    end

    # a fit character has more than 3 attributes with a value of 8 or more
    def fit?
      attributes.take_while { |i| i > 8 }.count > 3
    end

    def score
      attributes.sum
    end
  end
end
