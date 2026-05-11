import {
  to = segment_destination_subscription.id-63b8ab11f9d33c81f73430ad_pZmhQUPoUJvLk9mAxP6BCs
  id = "63b8ab11f9d33c81f73430ad:pZmhQUPoUJvLk9mAxP6BCs"
}

resource "segment_destination_subscription" "id-63b8ab11f9d33c81f73430ad_pZmhQUPoUJvLk9mAxP6BCs" {
  action_id            = "v3BPw5E3WcwKH4nngqta2i"
  destination_id       = "63b8ab11f9d33c81f73430ad"
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
      "@path" = "$.traits.company"
    }
    country = {
      "@path" = "$.traits.address.country"
    }
    email = {
      "@path" = "$.traits.email"
    }
    firstname = {
      "@if" = {
        else = {
          "@path" = "$.traits.firstName"
        }
        exists = {
          "@path" = "$.traits.first_name"
        }
        then = {
          "@path" = "$.traits.first_name"
        }
      }
    }
    lastname = {
      "@if" = {
        else = {
          "@path" = "$.traits.lastName"
        }
        exists = {
          "@path" = "$.traits.last_name"
        }
        then = {
          "@path" = "$.traits.last_name"
        }
      }
    }
    phone = {
      "@path" = "$.traits.phone"
    }
    properties = {
      favorite_color = {
        "@path" = "$.traits.favoriteColor"
      }
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