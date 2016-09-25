class CreateHospitalities < ActiveRecord::Migration[5.0]
  def change
    create_table :hospitalities do |t|
      t.integer :day
      t.integer :month
      t.integer :year
      t.string :type_of_hospitality

      t.timestamps
    end
  end
end
