require 'fizzbuzz'

describe 'fizzbuzz' do
  
=begin
  it 'returns "fizz" when its a multiple of 3' do
    number = 3
    expect(fizzbuzz(number)).to eq 'fizz'
  end
  it 'returns "buzz" when its a multiple of 5' do
   number = 5
    expect(fizzbuzz(number)).to eq 'buzz'
  end
  it 'return "fizzbuzz" when it\'s a multiple of 3 and 5' do
    number = 15
    expect(fizzbuzz(number)).to eq 'fizzbuzz'
  end
=end
  
  it 'returns fizz with a random multiple  of 3' do
    number = rand(0..100)
    puts number
    if number % 3 == 0 && number % 5 != 0
      expect(fizzbuzz(number)).to eq 'fizz'
    end
  end
  
  it 'returns "buzz" with a random multiple of 5' do
    number = rand(0..100)
    puts number
    if number % 5 == 0 && number % 3 != 0
      expect(fizzbuzz(number)).to eq 'buzz'
    end
  end
  
  it 'returns "fizzbuzz" with a multiple  of 3 & 5' do
    number = rand(0..100)
    if number % 5 == 0 && number % 3 == 0
      expect(fizzbuzz(number)).to eq 'fizzbuzz'
    end
  end
  
  it 'returns fizz with a random multiple of 3' do
    number = rand(0..100)
    puts number
    until number % 3 == 0 && number % 5 != 0
      number = rand(0..100)
    end
    expect(fizzbuzz(number)).to eq 'fizz'
  end
  
  it 'returns buzz with a random multiple of 5' do
    number = rand(0..100)
    puts number
    until number % 5 == 0 && number % 3 != 0
      number = rand(0..100)
    end
    expect(fizzbuzz(number)).to eq 'buzz'
  end
  
  it 'returns fizzbuzz with a random multiple of 3 and 5' do
    number = rand(0..100)
    puts number
    until number % 5 == 0 && number % 3 == 0
      number = rand(0..100)
    end
    expect(fizzbuzz(number)).to eq 'fizzbuzz'
  end
  
  it 'returns number with a number that isn\'t a fizz/buzz/fizzbuzz' do
    number = rand(0..100)
    puts number
    until number % 5 != 0 && number % 3 != 00
      number = rand(0..100)
    end
    expect(fizzbuzz(number)).to eq number
  end
end
