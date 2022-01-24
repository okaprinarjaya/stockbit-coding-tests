=begin
Write your code for the 'Bob' exercise in this file. Make the tests in
`bob_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/bob` directory.
=end
class Bob
    def self.hey(remark)
        bob_resp_map = {
            "SURE" => "Sure.",
            "WHOA" => "Whoa, chill out!",
            "CALM" => "Calm down, I know what I'm doing!",
            "FINE" => "Fine. Be that way!",
            "WHATEVER" => "Whatever."
        }
    
        str = remark.strip
        
        if str.empty?
            return bob_resp_map["FINE"]
        elsif str != str.downcase && str == str.upcase
            if str.include? "?"
                return bob_resp_map["CALM"]
            else
                return bob_resp_map["WHOA"]
            end
        elsif str[str.length - 1] == "?"
            return bob_resp_map["SURE"]
        else
            return bob_resp_map["WHATEVER"]
        end
    end
end
