require './lib/change_generator.rb'

describe Change_generator do
  let (:change_generator) {Change_generator.new}

  it 'should respond to #convert method with 1 argument' do
    expect(change_generator).to respond_to(:convert).with(1).argument
  end

  describe '#convert method' do
    it 'should breakdown a number into the most efficent monetary denominiations' do
      expect(change_generator.convert(2398)).to eq (["£20", "£2", "£1", "50p", "20p", "20p", "5p", "2p", "1p"])
    end
  end

  describe '#divisable_by_20? method' do
    it 'should breakdown 20 and return a £20 note' do
      expect(change_generator.convert(2000)).to eq (["£20"])
    end

    it 'should breakdown 40 and return 2x £20 notes' do
      expect(change_generator.convert(4000)).to eq (["£20", "£20"])
    end
  end

  describe '#divisable_by_10? method' do
    it 'should breakdown 50 and return 2x £20 notes, & 1x £10 note' do
      expect(change_generator.convert(5000)).to eq (["£20", "£20", "£10"])
      expect(change_generator.convert(5000)).not_to eq (["£10", "£10", "£10", "£10", "£10"])
    end
  end

  describe '#divisable_by_5? method' do
    it 'should breakdown 15 and return 1x £10 note, & 1x £5 note' do
      expect(change_generator.convert(1500)).to eq (["£10", "£5",])
    end
  end

  describe '#divisable_by_2? method' do
    it 'should breakdown 7 and return 1x £5 note, & 1x £2 coin' do
      expect(change_generator.convert(700)).to eq (["£5", "£2"])
    end
  end

  describe '#divisable_by_1? method' do
    it 'should breakdown 3 and return 1x £2 coin, & 1x £1 coin' do
      expect(change_generator.convert(300)).to eq (["£2", "£1"])
    end
  end

  describe '#divisable_by_0_50? method' do
    it 'should breakdown 1.50 and return 1x £1 coin & 1x 50p coin' do
      expect(change_generator.convert(150)).to eq (["£1", "50p"])
    end
  end

  describe '#divisable_by_0_20? method' do
    it 'should breakdown 0.75 and return 1x 50p coin & 1x 20p coin' do
      expect(change_generator.convert(70)).to eq (["50p", "20p"])
    end
  end

  describe '#divisable_by_0_10? method' do
    it 'should breakdown 0.10 and return a 10p coin' do
      expect(change_generator.convert(10)).to eq (["10p"])
    end
  end

  describe '#divisable_by_0_05? method' do
    it 'should breakdown 0.05 and return a 5p coin' do
      expect(change_generator.convert(5)).to eq (["5p"])
    end
  end

  describe '#divisable_by_0_02? method' do
    it 'should breakdown 0.02 and return a 2p coin' do
      expect(change_generator.convert(2)).to eq (["2p"])
    end
  end

  describe '#divisable_by_0_01? method' do
    it 'should breakdown 0.31 and return 1x £20p coin, a 10p coin & x 1p coin' do
      expect(change_generator.convert(31)).to eq (["20p", "10p", "1p"])
    end
  end


end