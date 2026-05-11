import {
  to = segment_destination_subscription.id-6501ea1e5aa338d11164cc25_bF4eKLnijcDWAoMfoPsrmr
  id = "6501ea1e5aa338d11164cc25:bF4eKLnijcDWAoMfoPsrmr"
}

resource "segment_destination_subscription" "id-6501ea1e5aa338d11164cc25_bF4eKLnijcDWAoMfoPsrmr" {
  action_id            = "2P24zUSAL8BUpyGYNGmD7M"
  destination_id       = "6501ea1e5aa338d11164cc25"
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
      favor_audience_example = {
        "@path" = "$.traits.favor_audience_example"
      }
      j_o_abandoned_cart_2__has_not_completed_y44cq = "true"
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