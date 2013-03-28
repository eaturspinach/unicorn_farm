class User < ActiveRecord::Base
  has_many :appointments, :dependent => :destroy
  # accepts_nested_attributes_for :appointments
  attr_accessible :email, :first, :last
  validates_presence_of :first, :last, :email
end
