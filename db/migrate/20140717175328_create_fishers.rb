class CreateFishers < ActiveRecord::Migration
  def change
    create_table :fishers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
