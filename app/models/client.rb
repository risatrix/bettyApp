class Client < ActiveRecord::Base
  attr_accessible :email, :first_name, :formula, :last_name, :phone, :user_id
  validates_presence_of :email, :first_name, :formula, :last_name, :phone, :user_id
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  belongs_to :user
end
