class PolyTreeNode

    attr_reader :parent, :children, :value 
    attr_writer :parent, :children, :value
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    # def parent=(new_parent)
    #     return self.parent if new_parent == nil
    #         if self.parent != nil
    #             self.parent.children.reject! {|child| child == self}
    #              self.parent = new_parent
    #         # else
    #         #     self.parent = new_parent
    #         end

    #     if !new_parent.children.any?{|child| child == self}
    #         new_parent.children.unshift(self)
    #     end
    # end

    def add_child
        
    end


end

new_node = PolyTreeNode.new("A")
# p new_node
new_node.parent = PolyTreeNode.new("Z")
p new_node