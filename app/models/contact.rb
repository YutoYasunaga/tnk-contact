class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, confirmation: true
  validates :description, presence: true
  serialize :city_ids
end
