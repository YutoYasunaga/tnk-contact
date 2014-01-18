class City < ActiveRecord::Base
  has_one :branch
  belongs_to :contact
end
