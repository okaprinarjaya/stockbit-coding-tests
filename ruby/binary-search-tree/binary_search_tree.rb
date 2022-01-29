=begin
Write your code for the 'Binary Search Tree' exercise in this file. Make the tests in
`binary_search_tree_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/binary-search-tree` directory.
=end
class Bst < Struct.new(:data, :left, :right)
    def initialize(value)
        self.data = value
    end

    def insert(value)
        if value <= data
            return self.left = Bst.new(value) if left.nil?
            left.insert(value)
        else
            return self.right = Bst.new(value) if right.nil?
            right.insert(value)
        end
    end

    def each
        return traverse_tree(self, []).to_enum(:each) unless block_given?
        traverse_tree(self, []).each { |n| yield n } 
    end

    def traverse_tree(tree, values)
        return values.sort if tree.nil?
        values << tree.data
        traverse_tree(tree.left, values)
        traverse_tree(tree.right, values)
    end
end


