class AddSourceToAnimalPictures < ActiveRecord::Migration
  def change
    add_column :animal_pictures, :source, :string
    add_column :animal_pictures, :source_url, :string
  end
end
