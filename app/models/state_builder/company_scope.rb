class StateBuilder
  class CompanyScope
    def initialize(state, &block)
      @klass = CompanyStateField.const_set state, Class.new(CompanyStateField)

      instance_eval &block
    end

    def method_missing(attribute, &block)
      AttributesScope.new(@klass, attribute, &block)
    end
  end
end