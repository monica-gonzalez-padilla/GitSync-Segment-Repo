import {
  to = segment_destination_subscription.id-650b312753efebd8d9fbc9d8_chV8kstjRS2oq9khWgk3ru
  id = "650b312753efebd8d9fbc9d8:chV8kstjRS2oq9khWgk3ru"
}

resource "segment_destination_subscription" "id-650b312753efebd8d9fbc9d8_chV8kstjRS2oq9khWgk3ru" {
  action_id            = "ifeXsLqNNjJ5HJdRKSJwea"
  destination_id       = "650b312753efebd8d9fbc9d8"
  enabled              = true
  model_id             = null
  name                 = "Identify Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    dataFields = {
      "Audience Favorite Color Blue" = {
        "@path" = "$.traits.favorite_color_blue"
      }
      "Audience Favorite Color Red" = {
        "@path" = "$.traits.favorite_color_red"
      }
      email = {
        "@path" = "$.traits.email"
      }
      phone = {
        "@path" = "$.traits.phone"
      }
    }
    email = {
      "@path" = "$.traits.email"
    }
    mergeNestedObjects = false
    phoneNumber = {
      "@path" = "$.traits.phone"
    }
    userId = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"identify\""
}