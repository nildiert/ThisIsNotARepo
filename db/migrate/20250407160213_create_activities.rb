class CreateActivities < ActiveRecord::Migration[7.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
