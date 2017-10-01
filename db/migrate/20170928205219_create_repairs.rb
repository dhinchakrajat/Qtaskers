class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.boolean :tv
      t.boolean :laptop
      t.boolean :washingMachine
      t.boolean :refrigerator
      t.boolean :geyser
      t.boolean :ac
      t.boolean :lights
      t.boolean :invertor
      t.boolean :houseWiring
      t.references :Shopkeeper, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
