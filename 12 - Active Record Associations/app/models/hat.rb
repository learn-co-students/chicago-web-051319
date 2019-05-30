class Hat < ActiveRecord::Base
  has_many :sales
  has_many :buyers, through: :sales, source: :user

  belongs_to :creator, class_name: :User
end
