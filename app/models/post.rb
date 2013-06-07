class Post < ActiveRecord::Base
  # Remember to create a migration!
  validates :body_content, :presence => true
  validates :title, :presence => true
end
