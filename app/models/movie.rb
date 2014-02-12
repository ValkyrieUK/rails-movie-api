class Movie < ActiveRecord::Base
  validates :title, :desc, :year, :art, presence: true
  mount_uploader :art, ArtUploader

  def self.search(search)
    return unless search
      Movie.where("title LIKE ?", "%#{search}%")
  end
end
