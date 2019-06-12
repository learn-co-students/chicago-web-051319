class Textbook < ApplicationRecord
  has_many :rentals
  has_many :students, through: :rentals

  validates :vandalized, inclusion: { in: [true, false],
    message: "%{value} is not valid, please select true or false" }
  validate :title_starts_with_word_the

  def title_starts_with_word_the
    if title.downcase[0..3] != "the "
      errors.add(:title, "must begin with the word 'the' followed by at least one space")
    end
  end
end
