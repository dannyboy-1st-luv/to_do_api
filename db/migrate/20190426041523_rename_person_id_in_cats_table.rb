class RenamePersonIdInCatsTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :cats, :person_id, :individual_id
  end
end
