class Member < ActiveRecord::Base
  attr_accessible :image_url, :name

  validates_presence_of :name
end
