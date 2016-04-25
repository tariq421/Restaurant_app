class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :party
      t.references :menu
      t.timestamps null: false
    end
  end
end
