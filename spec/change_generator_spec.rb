require './lib/change_generator.rb'

describe Change_generator do
  let (:change_generator) {Change_generator.new}
  # let (:currency_value) {{"£20"=>20, "£10"=>10, "£5"=>5, "£2"=>2, "£1"=>1, "50p"=>0.5, "20p"=>0.2, "10p"=>0.1, "5p"=>0.05, "2p"=>0.02, "1p"=>0.01}}

  it 'should respond to #convert method with 1 argument' do
    expect(change_generator).to respond_to(:convert).with(1).argument
  end

  describe '#convert method' do

  end

  describe '#divisable_by_20? method' do
    it 'should breakdown 20 and return a £20 note' do
      expect(change_generator.convert(20)).to eq (["£20"])
    end

    it 'should breakdown 40 and return 2x £20 notes' do
      expect(change_generator.convert(40)).to eq (["£20", "£20"])
    end
  end

  describe '#divisable_by_10? method' do
    it 'should breakdown 50 and return 2x £20 notes, & 1x £10 note' do
      expect(change_generator.convert(50)).to eq (["£20", "£20", "£10"])
      expect(change_generator.convert(50)).not_to eq (["£10", "£10", "£10", "£10", "£10"])
    end
  end

  describe '#divisable_by_5? method' do
    it 'should breakdown 15 and return 1x £10 note, & 1x £5 note' do
      expect(change_generator.convert(15)).to eq (["£10", "£5",])
    end
  end

end