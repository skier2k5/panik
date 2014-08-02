class CreateAnimalCategories < ActiveRecord::Migration
  def change
    create_table :animal_categories do |t|
      t.string :name
    end
  end
end
