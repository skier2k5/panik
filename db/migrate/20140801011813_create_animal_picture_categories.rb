class CreateAnimalPictureCategories < ActiveRecord::Migration
  def change
    create_table :animal_picture_categories do |t|
      t.references :animal_picture, :null => false
      t.references :animal_category, :null => false
    end
    add_index :animal_picture_categories, :animal_picture_id
    add_index :animal_picture_categories, :animal_category_id
    add_index :animal_picture_categories, [:animal_picture_id, :animal_category_id], :unique => true, :name => "index_animal_picture_categories_on_api_and_aci"
  end
end
