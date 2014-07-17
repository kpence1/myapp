class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :hometown
      t.string :favfish
      t.string :waterway
      t.text :about

      t.timestamps
    end
  end
end
