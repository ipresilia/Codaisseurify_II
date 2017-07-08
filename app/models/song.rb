class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true, length: { maximum: 50 }
  validates :release_date, presence: true
  validates :genre, presence: true
  validates :artwork, presence: true, length: { maximum: 250}
  validates :album, presence: true
  validates :artist, presence: true

end
