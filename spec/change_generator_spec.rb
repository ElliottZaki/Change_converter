require './lib/change_generator.rb'

describe Change_generator do
  let (:change_generator) {Change_generator.new}

  it 'should create a new empty class object' do
    expect(change_generator).to eq (change_generator)
  end

  it 'should respond to #convert method' do
    expect(change_generator).to respond_to (:convert)
  end

end