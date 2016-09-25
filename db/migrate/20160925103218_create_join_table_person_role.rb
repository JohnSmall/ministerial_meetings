class CreateJoinTablePersonRole < ActiveRecord::Migration[5.0]
  def change
    create_join_table :people, :roles do |t|
       t.index [:person_id, :role_id]
       t.index [:role_id, :person_id]
    end
  end
end
