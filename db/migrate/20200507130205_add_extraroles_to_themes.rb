class AddExtrarolesToThemes < ActiveRecord::Migration[5.1]
  def change
    add_column :themes, :Tag1, :string, default: "Tag1"
    add_column :themes, :Tag2, :string, default: "Tag2"
    add_column :themes, :Crazy, :string, default: "Crazy"
    add_column :themes, :Normal07, :string, default: "Normal"
  end
end
