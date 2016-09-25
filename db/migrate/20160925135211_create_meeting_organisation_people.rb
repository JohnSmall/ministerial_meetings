class CreateMeetingOrganisationPeople < ActiveRecord::Migration[5.0]
  def change
    create_table :meeting_organisation_people do |t|
      t.references :meeting, foreign_key: true
      t.references :organisation, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
