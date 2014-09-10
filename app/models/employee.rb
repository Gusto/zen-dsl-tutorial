class Employee < ActiveRecord::Base
  belongs_to :company
  has_many :employee_state_fields, dependent: :destroy
end
