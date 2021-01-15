require "byebug"
class PolyTreeNode

    attr_reader :parent, :children, :value 
    attr_writer :parent, :children, :value
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(new_parent) 
    
        if @parent != nil
            @parent.children.reject! {|child| child == self}
            @parent = new_parent
        else
            @parent = new_parent
        end

        if !@parent.nil? && !@parent.children.include?(self) 
            @parent.children << self
        end

    end

    def add_child

    end


end

# new_node = PolyTreeNode.new("A")
# p new_node
# new_node.parent = PolyTreeNode.new("Z")
# p new_node