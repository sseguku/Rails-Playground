# frozen_string_literal: true

require 'rspec/autorun'

# happy number as defined on leetcode
class HappyNumber
  def happy(num)
    res = false
    num_s_a = num_s.to_s.split('').map(&:to_i)
    loop do
      sum = num_s_a.map { |x| x**2 }.inject(0, &:+)
      if sum == 1
        res = true
        break
      elsif sum == 7
        res = true
        break
      elsif sum <= 9
        res = false
        break
      elsif sum == num
        res = false
        break
      else
        num_s_a = sum.to_s.split('').map(&:to_i)
      end
    end
    res
  end
end

describe HappyNumber do
  let(:happy_number) { HappyNumber.new }
  it '19 should return true ' do
    expect(happy_number.happy(19)).to eq(true)
  end
  it ' 2 should return false' do
    expect(happy_number.happy(2)).to eq(false)
  end
  it ' 5 should return false' do
    expect(happy_number.happy(5)).to eq(false)
  end
  it ' 1111111 should return false' do
    expect(happy_number.happy(1_111_111)).to eq(true)
  end
end
