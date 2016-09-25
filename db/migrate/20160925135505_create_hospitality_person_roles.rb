class CreateHospitalityPersonRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :hospitality_person_roles do |t|
      t.references :hospitality, foreign_key: true
      t.references :person, foreign_key: true
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
