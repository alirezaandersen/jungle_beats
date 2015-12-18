
class Node

  attr_accessor :data, :next_node

    def initialize(data, next_up = nil)
      @data = data
      @next_node = next_up

    end

  end



# def append(add_end)
#
#   new_list = string_to_list(add_end)  #create a new list with the words in add_end
#
#   if @head.nil?                     #if head is nil, the new_list will be the linked list
#     @head = new_list
#   else
#   @find
#
#   self                                #return the linked list
# end
#
# def find(look_up)
#   curret = @head
#   while current.next_node != nil
#     current = current.next_node
#   end
#   current.nextNode = new_list
# end
#
# def prepend(add_begining)
#  count = 0
#  words = add_begining.to_s.split.reverse
#
#  words.each do |word|
#    next unless valid?(word).
#    count += 1
#    node = Node.new(word, nil)
#    if empty?
#       @head = node
#    else
#       node.next_node = @head
#      @head = node
# #    end
# #   end
#   end
#  end
# end
