class Post < ActiveRecord::Base
  # Remember to create a migration!
  validates :body_content, :presence => true
  validates :title, :presence => true
  #creates a direct route from post to subject bypas the tag. can do post.subject
  has_many :subjects, :through => :tags
end
