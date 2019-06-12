class Rental < ApplicationRecord
  belongs_to :student
  belongs_to :textbook
end
