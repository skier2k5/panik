class AddViewPathToClient < ActiveRecord::Migration
  def change
    add_column :clients, :view_path, :string
  end
end
