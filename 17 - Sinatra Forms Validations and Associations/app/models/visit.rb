class Visit < ActiveRecord::Base
  validates_presence_of :reflection
  belongs_to :landmark
  belongs_to :book
end
