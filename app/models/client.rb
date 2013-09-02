class Client < ActiveRecord::Base
  attr_accessible :email, :first_name, :formula, :last_name, :phone, :user_id
end
