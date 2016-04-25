class AddForeignKeyToOrders < ActiveRecord::Migration
  def change
    add_foreign_key :orders, :parties
    add_foreign_key :orders, :menus
  end
end
