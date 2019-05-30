class User < ActiveRecord::Base
  # Sales where I purchased
  has_many :sales

  # Hats where I purchased
  has_many :purchased_hats, through: :sales, source: :hat

  # Hat creators I've bought from
  has_many :supported_creators, through: :purchased_hats, source: :creator

  has_many :secondhand_supported_hats, through: :supported_creators, source: :purchased_hats

  # Hats I have created
  has_many :hats, foreign_key: :creator_id

end
