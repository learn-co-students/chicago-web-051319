class Cohort < ApplicationRecord
  has_many :students
  validates :name, presence: true, uniqueness: true
  validates :name, format: { with: /\A[a-zA-Z0-9-]+\z/,
    message: "must contain only letters, numbers, and dashes" }
end
