class CreateJoinTableOrganisationPerson < ActiveRecord::Migration[5.0]
  def change
    create_join_table :organisations, :people do |t|
      # t.index [:organisation_id, :person_id]
      # t.index [:person_id, :organisation_id]
    end
  end
end
