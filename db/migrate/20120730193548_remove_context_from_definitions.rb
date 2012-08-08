class RemoveContextFromDefinitions < ActiveRecord::Migration
  def up
    remove_column :definitions, :context
  end

  def down
    add_column :definitions, :context, :string
  end
end
