class StateBuilder
  def self.build(state, &block)
    raise unless block_given?

    StateBuilder.new(state, &block)
  end

  def initialize(state, &block)
    @state = state

    instance_eval &block
  end

  def company(&block)
    StateBuilder::CompanyScope.new(@state, &block)
  end

  def employee(&block)
    StateBuilder::EmployeeScope.new(@state, &block)
  end
end