class AddTimeToCreateTheme < ActiveRecord::Migration[5.1]
  def change
  	add_column :themes, :Fase01Time, :integer
  end
end