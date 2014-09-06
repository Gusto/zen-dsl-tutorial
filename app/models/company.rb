class Company < ActiveRecord::Base
  has_many :employees
  has_many :company_state_fields, dependent: :destroy
end
