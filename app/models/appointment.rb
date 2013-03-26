class Appointment < ActiveRecord::Base
  attr_accessible :date, :notes, :time, :user_id
end
