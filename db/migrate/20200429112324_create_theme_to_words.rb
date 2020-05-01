class CreateThemeToWords < ActiveRecord::Migration[5.1]
  def change
    create_table :theme_to_words do |t|
      t.references :theme, foreign_key: true, null: false
      t.references :word, foreign_key: true, null: false
      t.timestamps
    end
  end
end
