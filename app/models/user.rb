class User < ActiveRecord::Base
  attr_accessible :email, :first, :last

  has_many :appointments
end
