class Sale < ActiveRecord::Base
  belongs_to :hat
  belongs_to :user
end
