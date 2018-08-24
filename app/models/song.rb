class Song < ActiveRecord::Base
  validates_presence_of :title
  validates :title, uniqueness: {scope: [:release_year, :artist_name]}
  validates :release_year, presence: true, if: :released?
  validates_presence_of :artist_name
end
