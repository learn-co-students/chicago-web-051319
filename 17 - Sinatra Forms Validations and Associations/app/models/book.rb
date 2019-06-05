class Book < ActiveRecord::Base
  has_many :visits
  has_many :landmarks, through: :visits
end
