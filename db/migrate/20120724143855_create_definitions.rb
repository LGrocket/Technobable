class CreateDefinitions < ActiveRecord::Migration
  def change
    create_table :definitions do |t|
      t.references :term
      t.string :content
      t.string :context

      t.timestamps
    end
    add_index :definitions, :term_id
  end
end
