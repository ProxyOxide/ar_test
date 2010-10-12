class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.column :name, :string
      t.column :body, :test
    end
  end
  
  def self.down
    drop_table :posts
  end
  
end