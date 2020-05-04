class AddExtraToThemes < ActiveRecord::Migration[5.1]
  def change
    add_column :themes, :CrazyCheck, :integer
    add_column :themes, :TagCheck, :integer
    add_column :themes, :PeaceCheck, :integer
  end
end
