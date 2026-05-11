import {
  to = segment_destination_subscription.id-6509f9878210b9218a00f94a_aHS1D1B5FeNzoLracY2WKs
  id = "6509f9878210b9218a00f94a:aHS1D1B5FeNzoLracY2WKs"
}

resource "segment_destination_subscription" "id-6509f9878210b9218a00f94a_aHS1D1B5FeNzoLracY2WKs" {
  action_id      = "ifeXsLqNNjJ5HJdRKSJwea"
  destination_id = "6509f9878210b9218a00f94a"
  enabled        = true
  model_id       = "khQVH3iVnKCdfikDums9G8"
  name           = "Upsert User"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "15m"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    dataFields = {
      "First Name" = {
        "@path" = "$.properties.firstName"
      }
      "Last Name" = {
        "@path" = "$.properties.lastName"
      }
      "User Type" = {
        "@path" = "$.properties.userType"
      }
      email = {
        "@path" = "$.properties.email"
      }
      userId = {
        "@path" = "$.properties.user_Id"
      }
    }
    email = {
      "@path" = "$.properties.email"
    }
    userId = {
      "@path" = "$.properties.user_Id"
    }
  })
  trigger = "event = \"new\" or event = \"updated\""
}