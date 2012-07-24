class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :tags

      t.timestamps
    end
  end
end
