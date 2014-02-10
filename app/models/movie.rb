class Movie < ActiveRecord::Base
  mount_uploader :art, ArtUploader

  def self.search(search)
    if search
      all(:conditions => ['title LIKE ?', "%#{search}%"])
    else
      all
    end
  end
end
