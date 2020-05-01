class ChangeDefalutUserRoleOfRooms < ActiveRecord::Migration[5.1]

  # 変更内容
  def up
    change_column :rooms, :User01Role, :string, default: "User01Role"
    change_column :rooms, :User02Role, :string, default: "User02Role"
    change_column :rooms, :User03Role, :string, default: "User03Role"
    change_column :rooms, :User04Role, :string, default: "User04Role"
    change_column :rooms, :User05Role, :string, default: "User05Role"
    change_column :rooms, :User06Role, :string, default: "User06Role"
    change_column :rooms, :User07Role, :string, default: "User07Role"
    change_column :rooms, :User08Role, :string, default: "User08Role"
  end

  # 変更前の状態
  def down
    change_column :rooms, :User01Role, :string
    change_column :rooms, :User02Role, :string
    change_column :rooms, :User03Role, :string
    change_column :rooms, :User04Role, :string
    change_column :rooms, :User05Role, :string
    change_column :rooms, :User06Role, :string
    change_column :rooms, :User07Role, :string
    change_column :rooms, :User08Role, :string
  end
  
end
