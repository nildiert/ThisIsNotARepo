class AddSubdomainToCompanies < ActiveRecord::Migration[7.2]
  def change
    add_column :companies, :subdomain, :string
  end
end
