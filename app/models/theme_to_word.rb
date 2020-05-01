class ThemeToWord < ApplicationRecord
  belongs_to :theme, optional: true
  belongs_to :word, optional: true
end
