# frozen_string_literal: true

RSpec.describe Wb::Character::Attributes do
  it "bogus test to have a spec" do
    subject = Wb::Character::Attributes.random
    expect(subject.str).to be_between(3, 18).exclusive
    expect(subject.str).to be >= 3
    expect(subject.str).to be <= 18
  end
end
