class Author < ActiveRecord::Base
  attr_accessible :image_url, :name
  has_many :books
end
