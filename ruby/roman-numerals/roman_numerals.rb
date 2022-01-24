=begin
Write your code for the 'Roman Numerals' exercise in this file. Make the tests in
`roman_numerals_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/roman-numerals` directory.
=end
class Fixnum
    @@number_roman_map = {
        1 => "I",
        4 => "IV",
        5 => "V",
        9 => "IX",
        10 => "X",
        40 => "XL",
        50 => "L",
        90 => "XC",
        100 => "C",
        400 => "CD",
        500 => "D",
        900 => "CM",
        1000 => "M"
    }

    def to_roman
        number = self
        return 0 if number == 0
        
        roman = ""
        num = number

        while num > 0
            if @@number_roman_map[num]
                roman << @@number_roman_map[num]
                return roman
            end

            substract_with = substractor(num)
            roman << @@number_roman_map[substract_with]
            num -= substract_with
        end
        return roman
    end

    def substractor(number)
        keys = @@number_roman_map.keys
        substract_with = (keys.push(number).sort.index(number)) - 1
        return keys[substract_with]
    end
end
