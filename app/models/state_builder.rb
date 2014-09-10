class StateBuilder
  def self.build(state, &block)
    # If no block is passed in, raise an exception
    raise "You need a block to build!" unless block_given?

    StateBuilder.new(state, &block)
  end

  def initialize(state, &block)
    @state = state

    # Evaluate the contents of the block passed in within the context of this instance of StateBuilder
    instance_eval &block
  end

  def company(&block)
    # Configure CompanyStateField::CA
  end

  def employee(&block)
    # Configure EmployeeStateField::CA
  end
end