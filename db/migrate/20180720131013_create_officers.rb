class CreateOfficers < ActiveRecord::Migration[5.2]
  def change
    create_table :officers do |t|
      t.string :name, null: false
      t.belongs_to :company
      t.timestamps
    end
  end
end
