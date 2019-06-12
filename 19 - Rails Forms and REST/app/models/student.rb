class Student < ApplicationRecord
  has_many :rentals
  has_many :textbooks, through: :rentals
  belongs_to :cohort

  accepts_nested_attributes_for :textbooks, reject_if: proc { |attributes| p attributes; attributes['title'].include?("hate") }
end
