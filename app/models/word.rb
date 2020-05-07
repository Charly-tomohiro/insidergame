# ## Schema Information
#
# Table name: `words`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`Word`**        | `string`           |
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#
class Word < ApplicationRecord

  has_many :theme_to_words
  has_many :themes, through: :theme_to_words
end
