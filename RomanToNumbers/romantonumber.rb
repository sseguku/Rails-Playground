require 'rspec/autorun'

class RomanToNumber 
    def convert(s)
     num  =  0
        symbol = {
            "I" => 1, 
            "V" => 5, ##VV not valid 
            "X" => 10, 
            "L" => 50, ## LL not valid 
            "C" =>  100,
            "D" => 500, ## DD not valid 
            "M" => 1000
        }
        #converts strings to character array 
        s_to_char = s.chars 
        #loops through array
        for i in 0..s_to_char.length-1 do 
            j = i + 1  #next array item
            
            #
            if symbol[s_to_char[i]].to_i >= symbol[s_to_char[j]].to_i 
                num += symbol[s_to_char[i]] 

            elsif symbol[s_to_char[i]].to_i < symbol[s_to_char[j]].to_i 
                num -= symbol[s_to_char[i]] 
            end

        end 
        
        num
    end
end

describe RomanToNumber do 
    ##Global method to initialize class instance 
    let(:rtn) { RomanToNumber.new }
    
    #test 1
    it " s - III should return 3" do 
        expect(rtn.convert("III")).to eq(3)
    end 
    #test 2
    it " s - LVIII should return 58" do 
        expect(rtn.convert("LVIII")).to eq(58)
    end 

    #test 3 
    it " s - MCMXCIV should return 1994" do 
        expect(rtn.convert("MCMXCIV")).to eq(1994)
    end 

end 