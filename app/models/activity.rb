class Activity < ApplicationRecord
  acts_as_tenant(:company)
  belongs_to :company
end
