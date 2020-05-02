class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :User01Name, null: false
      t.string :User02Name, null: false
      t.string :User03Name, null: false
      t.string :User04Name, null: false
      t.string :User05Name
      t.string :User06Name
      t.string :User07Name
      t.string :User08Name
      t.string :User01Role, null: false
      t.string :User02Role, null: false
      t.string :User03Role, null: false
      t.string :User04Role, null: false
      t.string :User05Role
      t.string :User06Role
      t.string :User07Role
      t.string :User08Role

      t.timestamps
    end
  end
end
