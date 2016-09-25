class CreateMeetingPersonRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :meeting_person_roles do |t|
      t.references :meeting, foreign_key: true
      t.references :person, foreign_key: true
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
