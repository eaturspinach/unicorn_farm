class User < ActiveRecord::Base
  has_many :appointments

  attr_accessible :email, :first, :last

  accepts_nested_attributes_for :appointments

  validates_presence_of :first, :last, :email
  
end
