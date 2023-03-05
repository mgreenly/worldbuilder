# frozen_string_literal: true

module Wb
  class Character
    # top level comment
    class Attributes
      KEYS = %i[str int wis con dex cha].freeze

      class << self
        def random
          new(**KEYS.to_h { |k| [k, Dice.new("3d6").result] })
        end
      end

      attr_reader(*KEYS)

      def initialize(str:, int:, wis:, con:, dex:, cha:) # rubocop:disable Lint/UnusedMethodArgument
        KEYS.map { |k| instance_variable_set("@#{k}".to_sym, eval(k.to_s)) } # rubocop:disable Security/Eval
      end

      def to_h
        KEYS.to_h { |k| [k, send(k)] }
      end

      def to_a
        to_h.values
      end

      def sum
        to_a.sum
      end
    end
  end
end
