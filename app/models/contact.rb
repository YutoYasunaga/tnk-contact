class Contact < ActiveRecord::Base
  validates :email, confirmation: true
  serialize :city_ids
end
