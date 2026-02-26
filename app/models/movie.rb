class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, :overview, presence: true
  validates :title, uniqueness: true

  def display_rating_one_decimal
    rating.truncate(1)
  end
end
