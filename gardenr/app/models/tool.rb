class Tool < ApplicationRecord
  validates :name, presence: true
  validates :condition, presence: true
  belongs_to :user
end
