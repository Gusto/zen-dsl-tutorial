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
    # Configure CompanyStateField::CA
  end

  def employee(&block)
    # Configure EmployeeStateField::CA
  end
end