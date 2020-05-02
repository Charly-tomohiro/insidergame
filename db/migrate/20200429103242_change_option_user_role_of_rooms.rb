class ChangeOptionUserRoleOfRooms < ActiveRecord::Migration[5.1]

  # 変更内容
  def up
    change_column :rooms, :User01Role, :string, null: true
    change_column :rooms, :User02Role, :string, null: true
    change_column :rooms, :User03Role, :string, null: true
    change_column :rooms, :User04Role, :string, null: true
  end

  # 変更前の状態
  def down
    change_column :rooms, :User01Role, :string, null: false
    change_column :rooms, :User02Role, :string, null: false
    change_column :rooms, :User03Role, :string, null: false
    change_column :rooms, :User04Role, :string, null: false
  end

end
