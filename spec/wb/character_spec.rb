# frozen_string_literal: true

RSpec.describe Wb::Character do
  it "to_h maintains identity" do
    hash = {
      str: 1,
      int: 2,
      wis: 3,
      con: 4,
      dex: 5,
      cha: 6
    }

    subject = Wb::Character.new(**hash)
    expect(subject.to_h).to eq(**hash)
  end
end
