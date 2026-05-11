import {
  to = segment_destination_subscription.id-63cb00cebcb579e70b5f843f_mnb5v6Z5y45LqvE9AanpiK
  id = "63cb00cebcb579e70b5f843f:mnb5v6Z5y45LqvE9AanpiK"
}

resource "segment_destination_subscription" "id-63cb00cebcb579e70b5f843f_mnb5v6Z5y45LqvE9AanpiK" {
  action_id            = "v3BPw5E3WcwKH4nngqta2i"
  destination_id       = "63cb00cebcb579e70b5f843f"
  enabled              = false
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
      referral_made = {
        "@path" = "$.referral_made"
      }
    }
    state = {
      "@path" = "$.traits.address.state"
    }
    website = {
      "@path" = "$.traits.website"
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