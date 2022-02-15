require "rspec/autorun"

class HappyNumber 

    def is_happy(num)

        res = false 
        #number to string
        num_s = num.to_s
        #string to integer array 
        num_s_a = num_s.split("").map(&:to_i)
        
        loop do 

            sum = num_s_a.map{ |x| x**2}.inject(0, &:+)

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
                #number to string
                num_s = sum.to_s
                #string to integer array 
                num_s_a = num_s.split("").map(&:to_i)
            end
        end
        #returns true or false
        res
 
    end
end

describe HappyNumber do
    it "19 should return true " do 
        happyNo = HappyNumber.new
        expect(happyNo.is_happy(19)).to eq(true) 
    end

    it " 2 should return false" do 
        happyNo = HappyNumber.new
        expect(happyNo.is_happy(2)).to eq(false)
    end

    it " 5 should return false" do 
        happyNo = HappyNumber.new
        expect(happyNo.is_happy(5)).to eq(false)
    end


    it " 1111111 should return false" do 
        happyNo = HappyNumber.new
        expect(happyNo.is_happy(1111111)).to eq(true)
    end
end