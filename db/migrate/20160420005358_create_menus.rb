class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.string :beverage
      t.integer :price
      t.timestamps null: false
    end
  end
end
