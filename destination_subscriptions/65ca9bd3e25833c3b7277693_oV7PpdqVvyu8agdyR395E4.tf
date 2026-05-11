import {
  to = segment_destination_subscription.id-65ca9bd3e25833c3b7277693_oV7PpdqVvyu8agdyR395E4
  id = "65ca9bd3e25833c3b7277693:oV7PpdqVvyu8agdyR395E4"
}

resource "segment_destination_subscription" "id-65ca9bd3e25833c3b7277693_oV7PpdqVvyu8agdyR395E4" {
  action_id            = "4eDL7bCbqSbFusKgkdfbwT"
  destination_id       = "65ca9bd3e25833c3b7277693"
  enabled              = true
  model_id             = null
  name                 = "Create or Update a User Profile"
  reverse_etl_schedule = null
  settings = jsonencode({
    age = {
      "@path" = "$.traits.age"
    }
    append_arrays = false
    birthday = {
      "@path" = "$.traits.birthday"
    }
    city = {
      "@path" = "$.traits.address.city"
    }
    country = {
      "@path" = "$.traits.address.country"
    }
    email = {
      "@path" = "$.traits.email"
    }
    email_as_identifier = true
    firstName = {
      "@path" = "$.traits.first_name"
    }
    gender = {
      "@path" = "$.traits.gender"
    }
    lastName = {
      "@path" = "$.traits.last_name"
    }
    phone = {
      "@path" = "$.traits.phone"
    }
    phone_number_as_identifier = true
    segment_anonymous_id = {
      "@path" = "$.anonymousId"
    }
    uuid = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"identify\""
}