require 'fizzbuzz'

describe 'fizzbuzz' do
  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end
  it 'returns "buzz" when passed 5' do
    expect(fizzbuzz(5)).to eq 'buzz'
  end
  it 'returns "fizz" when its a multiple of 3' do
    number = 0
    until number % 3 == 0 do
      number = rand(0..100)
    end
    expect(fizzbuzz(number)).to eq 'fizz'
    end
  it 'returns "buzz" when its a multiple of 5' do
    number = 0
    until number % 5 == 0 do
      number = rand(0..100)
    end
    expect(fizzbuzz(number)).to eq 'buzz'
  end
end
