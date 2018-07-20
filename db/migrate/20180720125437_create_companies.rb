class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :title, null: false
      t.string :address_snippet
      t.integer :company_number, null: false, uniqueness: true
      t.timestamps null: false
    end
  end
end
