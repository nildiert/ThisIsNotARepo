class Company < ApplicationRecord
  has_many :events

  validates :name, presence: true
  validates :subdomain, presence: true, uniqueness: true
  validates :subdomain, format: { with: /\A[a-z0-9\-]+\z/, message: "only allows lowercase letters, numbers, and hyphens" }
end
