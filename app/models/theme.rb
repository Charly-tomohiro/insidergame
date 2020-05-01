class Theme < ApplicationRecord
  belongs_to :room
  has_many :theme_to_words, dependent: :destroy
  has_many :words, through: :theme_to_words
end