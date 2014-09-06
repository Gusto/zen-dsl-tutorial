class EmployeeStateField < ActiveRecord::Base
  serialize :data, Hash

  belongs_to :employee
end
