class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :table_name
      t.boolean :paid, default: false
      t.references :user
      t.timestamps null: false
    end
  end
end
