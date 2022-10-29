class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.date :takeoff_date
      t.string :takeoff_time
      t.string :arrival_time 
      t.integer :duration
      t.integer :price

      t.timestamps
    end
  end
end
