class Post < ActiveRecord::Base
  attr_accessible :context, :name, :title
  
  validates :name, :presence => true
  validates :title, :presence => true, :length => {:minimum => 5}
  validates :context, :presence => true, :length => {:minimum => 10}
  
  has_many :comments
end
