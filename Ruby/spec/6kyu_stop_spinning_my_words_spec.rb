require_relative '../lib/6kyu_stop_spinning_my_words.rb'

RSpec.describe 'stop_spinning_my_words' do
  it "spinWords('fellow') == 'wollef'" do
    result = spinWords('fellow')
    expect(result).to eq 'wollef'
  end

  it "spinWords('Hey fellow') == 'Hey wollef'" do
    result = spinWords('Hey fellow')
    expect(result).to eq 'Hey wollef'
  end
end
