=begin
Write your code for the 'Beer Song' exercise in this file. Make the tests in
`beer_song_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/beer-song` directory.
=end
class BeerSong
    def self.recite(bottles_num, stop_num)
        verses = []
        
        i = 0
        while i < stop_num
            num = bottles_num - i
            
            if num.zero?
                verses << self.no_more_bottles
            elsif num == 1
                verses << self.only_one_bottle
            else
                verses << self.num_bottles(num)
            end

            i += 1
        end

        return verses.join("\n")
    end

    def self.num_bottles(num)
        text = <<~TEXT
        #{num} bottles of beer on the wall, #{num} bottles of beer.
        Take one down and pass it around, #{num-1} #{num - 1 > 1 ? "bottles" : "bottle"} of beer on the wall.
        TEXT
    end

    def self.only_one_bottle
        text = <<~TEXT
        1 bottle of beer on the wall, 1 bottle of beer.
        Take it down and pass it around, no more bottles of beer on the wall.
        TEXT
    end

    def self.no_more_bottles
        text = <<~TEXT
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
        TEXT
    end
end
