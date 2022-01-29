=begin
Write your code for the 'Simple Linked List' exercise in this file. Make the tests in
`simple_linked_list_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/simple-linked-list` directory.
=end
class Element
    attr_reader :datum
    attr_accessor :next

    def initialize(datum)
        @datum = datum
    end
end

class SimpleLinkedList
    @@head
    
    def initialize(arr = [])
        @@head = nil

        arr.each do |n|
            push(Element.new(n))
        end
    end

    def push(node)
        node.next = @@head
        @@head = node
        self
    end

    def pop
        return nil if @@head.nil?
        temp = @@head
        @@head = temp.next
        temp
    end

    def reverse!
        prev_node = nil
        current_node = @@head
        next_node = nil

        while !current_node.nil?
            next_node = current_node.next
            current_node.next = prev_node
            prev_node = current_node
            current_node = next_node
        end
        @@head = prev_node
        self
    end

    def to_a
        arr = []
        current_node = @@head
        while !current_node.nil?
            arr << current_node.datum
            current_node = current_node.next
        end
        arr
    end

    def get_head
        @@head 
    end
end
