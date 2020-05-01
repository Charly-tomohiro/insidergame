class RemoveTitleFromRooms < ActiveRecord::Migration[5.1]
  def change
    remove_column :rooms, :title, :string
  end
end
