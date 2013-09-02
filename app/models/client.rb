class Client < ActiveRecord::Base
  attr_accessible :email, :first_name, :formula, :last_name, :phone, :user_id
  validates_presence_of :email, :first_name, :formula, :last_name, :phone, :user_id
end
