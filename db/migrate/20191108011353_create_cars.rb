class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :car_model
      t.string :car_make
      t.integer :car_rating
      t.string :caption

      t.timestamps
    end
  end
end
