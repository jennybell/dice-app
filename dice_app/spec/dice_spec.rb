require 'dice'

describe DiceApp do
  it { is_expected. to respond_to :roll }
  
  it 'rolls a random number 1-6' do
    expect(subject.roll(1)).to be_between(1,6)
  end

  it 'rolls more than one dice' do
    expect(subject.roll(3)).to eq 3
  end

  it 'records the dice rolls' do
    subject.roll(4)
    subject.roll(2)
    expect(subject.rolls.count).to eq 6
  end

  it ' returns the total score' do
    subject.roll(4)
    subject.roll(2)
    expect(subject.total).to be_between(6,36)
  end

end