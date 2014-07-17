class AddPasswordDigestToFishers < ActiveRecord::Migration
  def change
    add_column :fishers, :password_digest, :string
  end
end
