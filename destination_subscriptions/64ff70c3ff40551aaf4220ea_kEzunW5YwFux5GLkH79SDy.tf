import {
  to = segment_destination_subscription.id-64ff70c3ff40551aaf4220ea_kEzunW5YwFux5GLkH79SDy
  id = "64ff70c3ff40551aaf4220ea:kEzunW5YwFux5GLkH79SDy"
}

resource "segment_destination_subscription" "id-64ff70c3ff40551aaf4220ea_kEzunW5YwFux5GLkH79SDy" {
  action_id            = "2P24zUSAL8BUpyGYNGmD7M"
  destination_id       = "64ff70c3ff40551aaf4220ea"
  enabled              = true
  model_id             = null
  name                 = "Identify Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    country = {
      "@path" = "$.context.location.country"
    }
    current_location = {
      latitude = {
        "@path" = "$.context.location.latitude"
      }
      longitude = {
        "@path" = "$.context.location.longitude"
      }
    }
    custom_attributes = {
      "@path" = "$.traits"
    }
    email = {
      "@path" = "$.traits.email"
    }
    external_id = {
      "@path" = "$.userId"
    }
    first_name = {
      "@path" = "$.traits.firstName"
    }
    gender = {
      "@path" = "$.traits.gender"
    }
    home_city = {
      "@path" = "$.traits.address.city"
    }
    image_url = {
      "@path" = "$.traits.avatar"
    }
    last_name = {
      "@path" = "$.traits.lastName"
    }
    phone = {
      "@path" = "$.traits.phone"
    }
  })
  trigger = "type = \"identify\""
}