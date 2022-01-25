=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end
class Raindrops
    def self.convert(num)
        rain_sound_map = {3 => "Pling", 5 => "Plang", 7 => "Plong"}
        sounds = rain_sound_map.select { |moder,_| (num % moder).zero? }
        .values
        .join

        return sounds if !sounds.empty?
        num.to_s
    end
end