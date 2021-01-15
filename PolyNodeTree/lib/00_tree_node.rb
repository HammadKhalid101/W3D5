class PolyTreeNode

    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        # self.parent = node
         if !node.children.any?{|child| child == self}
            node.children.unshift(self)
        end
    end




end