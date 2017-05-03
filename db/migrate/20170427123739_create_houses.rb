class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.text :description
      t.integer :telephone, :limit => 8
      t.text :location
      t.string :street
      t.string :bedrooms
      t.string :minimumstay
      t.text :rules
      t.text :ammenities
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
