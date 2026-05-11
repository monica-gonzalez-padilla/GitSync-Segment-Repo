import {
  to = segment_destination_subscription.id-64ff6a63c6911261f6e58aef_jLFuu5sCzGfNh1BcGHtQVP
  id = "64ff6a63c6911261f6e58aef:jLFuu5sCzGfNh1BcGHtQVP"
}

resource "segment_destination_subscription" "id-64ff6a63c6911261f6e58aef_jLFuu5sCzGfNh1BcGHtQVP" {
  action_id            = "2P24zUSAL8BUpyGYNGmD7M"
  destination_id       = "64ff6a63c6911261f6e58aef"
  enabled              = true
  model_id             = null
  name                 = "Update User Profile"
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
      favor_audience_new = {
        "@path" = "$.traits.favor_audience_example"
      }
    }
    email = {
      "@path" = "$.traits.email"
    }
    enable_batching = true
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