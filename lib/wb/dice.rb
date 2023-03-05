# frozen_string_literal: true

module Wb
  # dop level docs
  class Dice
    attr_reader :quantity, :size

    def initialize(desc)
      @quantity, @size, @bonus = desc.split(/[d+-]/).map { |i| Integer(i) }
      freeze
    end

    def bonus
      @bonus || 0
    end

    def roll
      quantity.times.map { rand(1..size) }
    end

    def result
      roll.sum + bonus
    end
  end
end
