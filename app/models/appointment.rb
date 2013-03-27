class Appointment < ActiveRecord::Base
  attr_accessible :date, :notes, :time, :user_id

  belongs_to :user

  validates_presence_of :date, :time
end
