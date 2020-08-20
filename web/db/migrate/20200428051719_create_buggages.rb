class CreateBuggages < ActiveRecord::Migration[6.0]
  def change
    create_table :buggages, id: :string do |t|
      t.integer :status, limit: 7
      t.integer :departure_id
      t.integer :arrival_id
      t.integer :height
      t.integer :width
      t.integer :depth
      t.float   :weight
      t.boolean :time_specified
      t.datetime :specified_date, null: true
      t.integer :specified_time, limit: 5
      t.timestamps
    end
  end
end
