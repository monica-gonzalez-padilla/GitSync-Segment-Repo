import {
  to = segment_destination_subscription.id-63fe6572466ce18cc3a4cbd6_75gAK7WuugBDV8uoty6BtX
  id = "63fe6572466ce18cc3a4cbd6:75gAK7WuugBDV8uoty6BtX"
}

resource "segment_destination_subscription" "id-63fe6572466ce18cc3a4cbd6_75gAK7WuugBDV8uoty6BtX" {
  action_id      = "v3BPw5E3WcwKH4nngqta2i"
  destination_id = "63fe6572466ce18cc3a4cbd6"
  enabled        = true
  model_id       = "khQVH3iVnKCdfikDums9G8"
  name           = "Upsert Contact"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "15m"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    address = {
      "@path" = "$.traits.address.street"
    }
    city = {
      "@path" = "$.traits.address.city"
    }
    company = {
      "@path" = "$.traits.company"
    }
    country = {
      "@path" = "$.traits.address.country"
    }
    email = {
      "@path" = "$.properties.email"
    }
    phone = {
      "@path" = "$.traits.phone"
    }
    properties = {
      segment_user_id = {
        "@path" = "$.properties.user_Id"
      }
      user_type = {
        "@path" = "$.properties.userType"
      }
    }
    state = {
      "@path" = "$.traits.address.state"
    }
    website = {
      "@path" = "$.traits.website"
    }
  })
  trigger = "event = \"new\" or event = \"updated\""
}