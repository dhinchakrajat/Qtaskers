class CreateShopkeepers < ActiveRecord::Migration
  def change
    create_table :shopkeepers do |t|
      t.string :shopName
      t.string :ownerName
      t.string :address
      t.string :contact

      t.timestamps null: false
    end
  end
end
