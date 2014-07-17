class AddIndexToFishersEmail < ActiveRecord::Migration
  def change
  	add_index :fishers, :email, unique: true
  end
end
