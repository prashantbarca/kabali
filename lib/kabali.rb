require "kabali/version"

module Kabali
  class Kabali
    attr_accessor :message      # Members of the class
    
    # Constructor
    def initialize message
      final_yarv = []                      # This array would be used to store the final YARV code, stripped off all the additional info 
      obj_code = RubyVM::InstructionSequence.compile(message).disasm # Disassemble the object code
      lines = obj_code.split("\n")         # Split the lines in separate lines.
      lines[1,lines.length].each do |line| # Skip the first line, and iterate through the other lines.
         final_yarv.push line[5,line.length]           # Skip the first column, which had 4 digit numbers
      end
      self.message = final_yarv            # Store the final yarv in the member data. 
    end  # End of method initialize 
    
    # Helper method to call lisp, to draw the stack
    def draw
      # TODO -- interface with lisp
    end  # End of method draw
    
    private :draw               # The method to draw doesn't need to be accessible from outside, it will be called for each iteration
  end    # End of class 
end      # End of Module
