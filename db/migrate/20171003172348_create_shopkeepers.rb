class CreateShopkeepers < ActiveRecord::Migration
  def change
    create_table :shopkeepers do |t|
      t.string :shopName
      t.string :ownerName
      t.string :address
      t.string :contact
      t.boolean :tv
      t.boolean :laptop
      t.boolean :washingMachine
      t.boolean :refrigerator
      t.boolean :geyser
      t.boolean :ac
      t.boolean :lights
      t.boolean :invertor
      t.boolean :houseWiring

      t.timestamps null: false
    end
  end
end
