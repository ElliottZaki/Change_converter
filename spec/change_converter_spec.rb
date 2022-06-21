require './lib/change_converter.rb'

describe ChangeConverter do
  it 'should create a new empty class object' do
    change_converter = ChangeConverter.new
    expect(change_converter).to eq (change_converter)
  end

end