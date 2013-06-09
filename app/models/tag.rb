class Tag < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :post
  belongs_to :subject
end
