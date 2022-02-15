require "rspec/autorun"

class SingleNumber 
    def solution (num)
        res = 0 

        num.each { |n| 
            res ^= n
        }

        res
    end 
end
#tests 
describe SingleNumber do 

    it "array [2,2,1] should return 1" do 
        s_number = SingleNumber.new 
        expect(s_number.solution([2,2,1])).to eq(1)
    end 

    it " [4,1,2,1,2] should return 4" do 
        s_number = SingleNumber.new 
        expect(s_number.solution([4,1,2,1,2])).to eq(4)
    end

    it " [3,1,4,1,4] should return 4" do 
        s_number = SingleNumber.new 
        expect(s_number.solution([4,1,2,1,2])).to eq(4)
    end
end