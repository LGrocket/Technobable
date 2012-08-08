class AddDefinitionIdToGroups < ActiveRecord::Migration
    def change
      add_column :groups, :definition_id, :integer
    end
end
