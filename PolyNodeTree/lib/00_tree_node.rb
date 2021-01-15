class PolyTreeNode

    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        # self.parent ||= node
        # self.parent = node

        if !node.children.any?{|child| child == self}
            node.children.unshift(self)
        end
    end

    def add_child
        
    end


end

new_node = PolyTreeNode.new("A")
# p new_node
new_node.parent = PolyTreeNode.new("Z")
p new_node