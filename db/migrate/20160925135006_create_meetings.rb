class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.integer :day
      t.integer :month
      t.integer :year
      t.string :purpose_of_meeting

      t.timestamps
    end
  end
end
