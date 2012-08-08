class AddGroupIdToDefinitions < ActiveRecord::Migration
  def change
    add_column :definitions, :group_id, :integer
  end
end
