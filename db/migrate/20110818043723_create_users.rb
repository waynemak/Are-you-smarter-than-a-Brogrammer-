class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :auth_key
      t.string :fb_id
      t.integer :score

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
