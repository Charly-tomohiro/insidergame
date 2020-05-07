# ## Schema Information
#
# Table name: `themes`
#
# ### Columns
#
# Name                | Type               | Attributes
# ------------------- | ------------------ | ---------------------------
# **`id`**            | `integer`          | `not null, primary key`
# **`Answer01`**      | `string`           |
# **`Answer02`**      | `string`           |
# **`Answer03`**      | `string`           |
# **`Answer04`**      | `string`           |
# **`Answer05`**      | `string`           |
# **`Answer06`**      | `string`           |
# **`Answer07`**      | `string`           |
# **`Answer08`**      | `string`           |
# **`Crazy`**         | `string`           | `default("Crazy")`
# **`CrazyCheck`**    | `integer`          |
# **`Fase01Answer`**  | `string`           |
# **`Fase01Time`**    | `integer`          |
# **`Insider`**       | `string`           | `default("Insider"), not null`
# **`Master`**        | `string`           | `default("Master"), not null`
# **`Nop`**           | `integer`          |
# **`Normal01`**      | `string`           | `default("Normal"), not null`
# **`Normal02`**      | `string`           | `default("Normal")`
# **`Normal03`**      | `string`           | `default("Normal")`
# **`Normal04`**      | `string`           | `default("Normal")`
# **`Normal05`**      | `string`           | `default("Normal")`
# **`Normal06`**      | `string`           | `default("Normal")`
# **`Normal07`**      | `string`           | `default("Normal")`
# **`PeaceCheck`**    | `integer`          |
# **`Tag1`**          | `string`           | `default("Tag1")`
# **`Tag2`**          | `string`           | `default("Tag2")`
# **`TagCheck`**      | `integer`          |
# **`Title`**         | `string`           | `not null`
# **`created_at`**    | `datetime`         | `not null`
# **`updated_at`**    | `datetime`         | `not null`
# **`room_id`**       | `integer`          | `not null`
#
# ### Indexes
#
# * `index_themes_on_room_id`:
#     * **`room_id`**
#
class Theme < ApplicationRecord
  belongs_to :room
  has_many :theme_to_words, dependent: :destroy
  has_many :words, through: :theme_to_words
end
