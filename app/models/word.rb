class Word < ApplicationRecord

  has_many :theme_to_words
  has_many :themes, through: :theme_to_words
end