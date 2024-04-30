# app/models/string_calculator.rb

class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
  end

it 'returns the sum of one number' do
  calculator = StringCalculator.new
  expect(calculator.add('1')).to eq(1)
end

it 'returns the sum of two numbers' do
  calculator = StringCalculator.new
  expect(calculator.add('1,2')).to eq(3)
end


it 'handles new lines between numbers' do
  calculator = StringCalculator.new
  expect(calculator.add("1\n2,3")).to eq(6)
end


it 'handles custom delimiters' do
  calculator = StringCalculator.new
  expect(calculator.add("//;\n1;2")).to eq(3)
end

end
