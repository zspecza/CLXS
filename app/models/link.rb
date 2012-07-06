class Link < ActiveRecord::Base
  attr_accessible :keyword, :url

  validates_presence_of :url
  validates_presence_of :keyword
  validates_uniqueness_of :url
end
