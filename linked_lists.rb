#[ NODE(head) ] -> [ NODE ] -> [ NODE(tail) ] -> nil

class LinkedList
    #list = []
    attr_accessor :size, :head, :tail
    def initialize(head = nil)
        @size = 0
        @head = Node.new(head)
        @tail = @head

    end

    def append(value)
        if @head == nil; prepend(value)
        else
            list[0] = @head
            list = list.next_node until list.next_node.nil?
            @tail = list.next_node
            @size += 1
        
        end

    end

    def prepend(value)
        @head = Node.new(value, head);
 
     end

    def ins_aft(value, next_node)
        temp = Node.new(value) #@head = Node.new(value)
        @size += 1
        until temp == nil && !temp.data != value do 
            temp = temp.next_node

        end
        
        if temp != nil
            temp.next_node = Node.new(next_node, temp.next_node)
        
        end

    end

    def ins_bef(value, next_node)
        if @head == nil; return nil end
        if @head.data.eql?(value)
            prepend(next_node)
            return

        end
        
        prev = nil
        cur = @head
        until cur == nil && cur.data.eql?(value) do
            prev = cur
            cur = cur.next_node

        end

        if cur != nil; prev.next_node = Node.new(value,cur); end

    end

    def size
        temp = 0
        cur = @head
        until cur == nil do
            temp += 1
            cur = cur.next_node

        end

        return temp

    end

    def head
        return @head

    end

    def tail
        cur = @head
        until cur == nil do
            cur = cur.next_node

        end
        tail_ = cur
        return tail_

    end

    def at(index)
        temp = 0
        cur = @head
        until temp > index do
            cur = cur.next_node
            temp += 1

        end

        return cur

    end

    def contains?(value)
        cur = @head
        until cur == nil  do
            cur = cur.next_node
            if cur == value
                return true
                break

            else
                return false
    
            end

        end
          
    end

    def find(value)
        cur = @head
        temp = 0
        until cur == nil  do
            cur = cur.next_node
            if cur == value
                temp += 1
                return temp
                break
                
            else
                temp += 1
    
            end

        end

        #if temp is still zero return nil
        if temp == 0; return nil end

    end

    def to_s
        cur = @head
        prev = nil
        strng = ""
        until cur == nil  do
            strng = strng + cur
            cur = cur.next_node
            prev = cur

        end

    end

    def insert_at(value, index)
        if head.data.eql?(index)
            @head = @head.next_node
            return

        end

        cur = @head
        prev = nil

        until cur == nil && cur.data.eql?(index) do
            prev = cur
            cur = cur.next_node

        end

        cur.next_node = cur.next_node #############

    end


    def remove_at(index)
        if @head == nil; print "cannot delete" end
        if head.data.eql?(index)
            @head = @head.next_node
            return

        end

        cur = @head
        prev = nil

        until cur == nil && cur.data.eql?(index) do
            prev = cur
            cur = cur.next_node

        end

        if cur == nil ; print "cannot delete" end
        prev.next_node = cur.next_node

    end

end

class Node
    attr_accessor :value, :next_node
    def def initialize(value = nil, next_node = nil)
      @value = value
      @next_node = next_node
    
    end

end
