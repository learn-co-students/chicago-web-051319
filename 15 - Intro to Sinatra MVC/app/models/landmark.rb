class Landmark < ActiveRecord::Base
  validates :name, presence: true
end
