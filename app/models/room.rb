# ## Schema Information
#
# Table name: `rooms`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`User01Name`**  | `string`           | `not null`
# **`User01Role`**  | `string`           | `default("User01Role")`
# **`User02Name`**  | `string`           | `not null`
# **`User02Role`**  | `string`           | `default("User02Role")`
# **`User03Name`**  | `string`           | `not null`
# **`User03Role`**  | `string`           | `default("User03Role")`
# **`User04Name`**  | `string`           | `not null`
# **`User04Role`**  | `string`           | `default("User04Role")`
# **`User05Name`**  | `string`           |
# **`User05Role`**  | `string`           | `default("User05Role")`
# **`User06Name`**  | `string`           |
# **`User06Role`**  | `string`           | `default("User06Role")`
# **`User07Name`**  | `string`           |
# **`User07Role`**  | `string`           | `default("User07Role")`
# **`User08Name`**  | `string`           |
# **`User08Role`**  | `string`           | `default("User08Role")`
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#
class Room < ApplicationRecord

  has_many :themes, dependent: :destroy
  
end
