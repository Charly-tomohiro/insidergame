class AddNopToThemes < ActiveRecord::Migration[5.1]
  def change
    add_column :themes, :Nop, :integer
  end
end
