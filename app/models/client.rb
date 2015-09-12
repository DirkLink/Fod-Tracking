class Client < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  has_one :measurement
  has_one :finish
  has_one :note
end