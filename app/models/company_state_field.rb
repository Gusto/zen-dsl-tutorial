class CompanyStateField < ActiveRecord::Base
  serialize :data, Hash

  belongs_to :company
end
