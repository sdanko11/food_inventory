class Item < ActiveRecord::Base
  validates :quanity, :numericality => { :greater_than_or_equal_to => 0 }
  validates_presence_of :quanity
  validates_presence_of :description
  validates_presence_of :name
end
