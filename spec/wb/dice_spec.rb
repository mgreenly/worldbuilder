# frozen_string_literal: true

RSpec.describe Wb::Dice do
  it "test initialization with quantity, size and bonus." do
    subject = Wb::Dice.new("3d6+1")
    expect(subject.quantity).to eq(3)
    expect(subject.size).to eq(6)
    expect(subject.bonus).to eq(1)
  end

  it "test initialization with just quantity and size." do
    subject = Wb::Dice.new("3d6")
    expect(subject.quantity).to eq(3)
    expect(subject.size).to eq(6)
    expect(subject.bonus).to eq(0)
  end
end
