class CreateThemes < ActiveRecord::Migration[5.1]
  def change
    create_table :themes do |t|
      t.references :room, foreign_key: true, null: false
      t.string :Title,	  null: false
      t.string :Insider,  null: false, default: 'Insider'
      t.string :Master,   null: false, default: 'Master'
      t.string :Normal01, null: false, default: 'Normal'
      t.string :Normal02, default: 'Normal'
      t.string :Normal03, default: 'Normal'
      t.string :Normal04, default: 'Normal'
      t.string :Normal05, default: 'Normal'
      t.string :Normal06, default: 'Normal'
      t.string :Fase01Answer
      t.string :Answer01
      t.string :Answer02
      t.string :Answer03
      t.string :Answer04
      t.string :Answer05
      t.string :Answer06
      t.string :Answer07
      t.string :Answer08 
      t.integer :timeFase01
      t.integer :Nop
      
      t.timestamps
    end
  end
end
