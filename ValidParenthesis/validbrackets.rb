require "rspec/autorun"

class ValidBracket
    def is_valid(s)
      return true if s.empty?
      #empty stack 
      stack = [] 

      s.each_char do |c| 
            case c 
                when '(', '{', '['
                    stack.push(c)
                when ')'
                    return false if stack.pop() != '('
                when '}'
                    return false if stack.pop() != '{'
                when ']'
                    return false if stack.pop() != '['
                end
            end 
      return stack.empty?
      end #end array 

    end #ends method 


describe ValidBracket do 
    it " () should be true" do 
     vb = ValidBracket.new 
     expect(vb.is_valid("()")).to be(true)
    end 

    it " ()[]{} should be true" do 
        vb = ValidBracket.new 
        expect(vb.is_valid("()[]{}")).to be(true)
    end 

    it "(] should be false" do 
        vb = ValidBracket.new 
        expect(vb.is_valid("(]")).to be(false)
    end 

end 