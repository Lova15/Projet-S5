class AssemblagesPieces < ActiveRecord::Migration[6.0]
    def change
  	create_table :assemblages_pieces, id: false do |t|
  		t.belongs_to :assemblage, index: true
  		t.belongs_to :piece, index: true
  	end
  end
end
