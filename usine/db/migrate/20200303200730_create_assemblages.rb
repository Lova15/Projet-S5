class CreateAssemblages < ActiveRecord::Migration[6.0]
  def change
    create_table :assemblages do |t|
    	t.string :name
      t.timestamps
    end
  end
end
