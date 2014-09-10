class StateBuilder
  class EmployeeScope
    def initialize(state, &block)
      @klass = EmployeeStateField.const_set state, Class.new(EmployeeStateField)

      instance_eval &block
    end

    def method_missing(attribute, &block)
      AttributesScope.new(@klass, attribute, &block)      
    end
  end
end