require 'rspec/autorun'

class AddDigit 
    def add(num)
        a = num.to_s
        b = a.split("").map(&:to_i)
      
        loop do

            if b.size > 1 
                a = b.sum 
                a = a.to_s
                b = a.split("").map(&:to_i)
            end

            break if b.size == 1

        end

        b[0].to_i
      #  b.length

    end

end

describe AddDigit  do
    it "test 1 - 11" do
         digit = AddDigit.new
         expect(digit.add(11)).to eq(2)
    end

    it "test 2 - 0" do
        digit = AddDigit.new
        expect(digit.add(0)).to eq(0)
    end

    it "test 3 - 38 " do
        digit = AddDigit.new
        expect(digit.add(38)).to eq(2)
    end
end