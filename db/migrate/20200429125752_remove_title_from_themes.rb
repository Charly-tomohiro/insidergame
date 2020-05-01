class RemoveTitleFromThemes < ActiveRecord::Migration[5.1]
  def change
    remove_column :themes, :title, :string
  end
end
