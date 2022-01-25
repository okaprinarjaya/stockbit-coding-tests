=begin
Write your code for the 'List Ops' exercise in this file. Make the tests in
`list_ops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/list-ops` directory.
=end
class ListOps
    class << self
        def arrays(arr)
            arr.size
        end

        def reverser(arr)
            arr.reverse
        end

        def concatter(arr1, arr2)
            arr1.concat(arr2)
        end

        def mapper(arr)
            arr.reduce([]) { |accm, item| accm << (yield item) }
        end

        def filterer(arr)
            arr.reduce([]) { |accm, item| accm << item if (yield item); accm}
        end

        def sum_reducer(arr)
            arr.sum
        end

        def factorial_reducer(arr)
            arr.reduce(1) { |accm, item| accm * item }
        end
    end
end
