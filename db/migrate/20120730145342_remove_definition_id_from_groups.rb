class RemoveDefinitionIdFromGroups < ActiveRecord::Migration
  def change
    remove_column :groups, :definition_id
  end
end
