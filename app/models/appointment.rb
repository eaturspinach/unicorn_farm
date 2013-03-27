class Appointment < ActiveRecord::Base
  attr_accessible :date, :notes, :time, :user_id

  validates_presence_of :date, :time
end
