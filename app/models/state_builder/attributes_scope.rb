class StateBuilder
  class AttributesScope
    def initialize(klass, attribute, &block)
      @validation_options = []

      klass.send(:store_accessor, :data, attribute)

      instance_eval &block

      klass.send(:validates, attribute, *@validation_options)
    end

    private
    def format(regex)
      @validation_options << { format: { with: Regexp.new(regex) } }
    end

    def max(value)
      @validation_options << { numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: value } }
    end

    def options(values)
      @validation_options << { inclusion: { in: values } }
    end
  end
end