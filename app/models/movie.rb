class Movie < ActiveRecord::Base
  validates :title, :desc, :year, :art, presence: true
  mount_uploader :art, ArtUploader

  def self.search(search)
    if search
      all(:conditions => ['title LIKE ?', "%#{search}%"])
    else
      all
    end
  end
end
