class Landmark < ActiveRecord::Base
  validates :name, presence: true
  has_many :visits
  has_many :books, through: :visits
end
