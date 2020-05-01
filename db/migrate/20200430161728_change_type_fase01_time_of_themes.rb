class ChangeTypeFase01TimeOfThemes < ActiveRecord::Migration[5.1]
  # 変更内容
  def up
    change_column :themes, :Fase01Time, :integer
  end

  # 変更前の状態
  def down
    change_column :themes, :Fase01Time, :time
  end
end
