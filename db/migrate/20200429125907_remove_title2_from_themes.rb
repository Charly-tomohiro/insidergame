class RemoveTitle2FromThemes < ActiveRecord::Migration[5.1]
  def change
    remove_column :themes, :Title, :string
  end
end
