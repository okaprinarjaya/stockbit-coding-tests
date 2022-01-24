=begin
Write your code for the 'Microwave' exercise in this file. Make the tests in
`microwave_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/microwave` directory.
=end
class Microwave
    def initialize(time)
        @time = time
    end

    def timer
        hours, seconds = @time.divmod(100)
        hours = hours + (seconds / 60)
        seconds = seconds % 60
        "%02d:%02d" % [hours, seconds]
    end
end
