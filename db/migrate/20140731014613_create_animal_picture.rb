class CreateAnimalPicture < ActiveRecord::Migration
  def change
    create_table :animal_pictures do |t|
      t.string :title
      t.string :file_name, :null => false
      t.text :caption
    end
  end
end
