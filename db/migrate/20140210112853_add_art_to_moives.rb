class AddArtToMoives < ActiveRecord::Migration
  def change
    add_column :movies, :art, :string
  end
end
