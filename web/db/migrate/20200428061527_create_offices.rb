class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.integer :prefecture
      t.string :name
      t.string :zipcode
      t.string :address
      t.decimal :latitude,  precision: 9, scale: 6
      t.decimal :longitude, precision: 9, scale: 6
      t.timestamps
    end
  end
end
