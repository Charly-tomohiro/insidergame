# ## Schema Information
#
# Table name: `theme_to_words`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
# **`theme_id`**    | `integer`          | `not null`
# **`word_id`**     | `integer`          | `not null`
#
# ### Indexes
#
# * `index_theme_to_words_on_theme_id`:
#     * **`theme_id`**
# * `index_theme_to_words_on_word_id`:
#     * **`word_id`**
#
class ThemeToWord < ApplicationRecord
  belongs_to :theme, optional: true
  belongs_to :word, optional: true
end
