class AddWikipediaEntryToRoles < ActiveRecord::Migration[5.0]
  def change
    add_column :roles, :wikipedia_entry, :string
  end
end
