import {
  to = segment_destination_subscription.id-63b859f9b94465f9a7fc7947_7WNgNzpvqzHcxM2bTzJ77A
  id = "63b859f9b94465f9a7fc7947:7WNgNzpvqzHcxM2bTzJ77A"
}

resource "segment_destination_subscription" "id-63b859f9b94465f9a7fc7947_7WNgNzpvqzHcxM2bTzJ77A" {
  action_id            = "hSedKQQp1KxbB5FXsrofKB"
  destination_id       = "63b859f9b94465f9a7fc7947"
  enabled              = true
  model_id             = null
  name                 = "Upsert Contact"
  reverse_etl_schedule = null
  settings = jsonencode({
    address = {
      "@path" = "$.traits.address.street"
    }
    city = {
      "@path" = "$.traits.address.city"
    }
    company = {
      "@path" = "$.traits.company.name"
    }
    country = {
      "@path" = "$.traits.address.country"
    }
    custom_properties = {
      "@path" = "$.traits"
    }
    email = {
      "@path" = "$.traits.email"
    }
    id = {
      "@path" = "$.userId"
    }
    state = {
      "@path" = "$.traits.address.state"
    }
    zip = {
      "@if" = {
        else = {
          "@path" = "$.traits.address.postal_code"
        }
        exists = {
          "@path" = "$.traits.address.postalCode"
        }
        then = {
          "@path" = "$.traits.address.postalCode"
        }
      }
    }
  })
  trigger = "type = \"identify\""
}