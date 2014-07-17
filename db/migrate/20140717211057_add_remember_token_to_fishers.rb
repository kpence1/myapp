class AddRememberTokenToFishers < ActiveRecord::Migration
  def change
  	add_column :fishers, :remember_token, :string
    add_index  :fishers, :remember_token
  end
end
