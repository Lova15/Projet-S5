class GossipesTags < ActiveRecord::Migration[6.0]
  def change
  	create_table :gossipes_tags, id: false do |t|
  		t.belongs_to :gossipe
  		t.belongs_to :tag
  	end
  end
end
