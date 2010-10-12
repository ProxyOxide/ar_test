require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => "test.db"
)

ActiveRecord::Migrator.migrate("migrate")

class Post < ActiveRecord::Base
  
end

Post.create :name => "test post", :body => "hello world"