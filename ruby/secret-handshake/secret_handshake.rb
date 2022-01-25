=begin
Write your code for the 'Secret Handshake' exercise in this file. Make the tests in
`secret_handshake_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/secret-handshake` directory.
=end
class SecretHandshake
    def initialize(number)
        @number = number
    end

    def commands
        return "" if !@number.is_a? Integer
        
        resp = []
        
        if (@number & 0b1).nonzero? != nil
            resp.push "wink"
        end
        
        if (@number & 0b10).nonzero? != nil
            resp.push "double blink"
        end
        
        if (@number & 0b100).nonzero? != nil
            resp.push "close your eyes"
        end
        
        if (@number & 0b1000).nonzero? != nil
            resp.push "jump"
        end
        
        if (@number & 0b10000).nonzero? != nil
            resp.reverse!
        end
        
        resp
    end
end
