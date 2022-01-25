=begin
Write your code for the 'Change' exercise in this file. Make the tests in
`change_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/change` directory.
=end
class Change
    class NegativeTargetError < StandardError; end
    class ImpossibleCombinationError < StandardError; end
    
    def self.generate(coins, change)
        return [] if change.zero?
        return [change] if coins.include? change

        raise NegativeTargetError if change.negative?
        raise ImpossibleCombinationError if coins.min > change
        
        coins_chosen = coins.select { |coin| coin <= change }
        result = []
        destination_value = change
        
        while destination_value > 0
            coins_chosen_mod_ify = coins_chosen.select { |coin| coin != 1 && (destination_value % coin).zero? }

            if coins_chosen_mod_ify.empty?
                maxval = coins_chosen.max
                result << maxval
                destination_value -= maxval
            else
                result << coins_chosen_mod_ify
                destination_value -= coins_chosen_mod_ify.sum
            end
        end

        return result.flatten.reverse
    end
end
