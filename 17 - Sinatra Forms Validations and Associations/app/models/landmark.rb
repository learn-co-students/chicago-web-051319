class Landmark < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :location, presence: true
  validates :max_capacity, presence: true
  validate :is_not_the_louvre

  has_many :visits
  has_many :books, through: :visits

  def is_not_the_louvre
    errors.add(:name, "cannot be 'The Louvre'") if self.name == "The Louvre"
  end
end
