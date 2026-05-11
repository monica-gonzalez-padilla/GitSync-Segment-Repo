import {
  to = segment_destination_subscription.id-63cb00cebcb579e70b5f843f_aketRxwAYkwZhfhhTETGsL
  id = "63cb00cebcb579e70b5f843f:aketRxwAYkwZhfhhTETGsL"
}

resource "segment_destination_subscription" "id-63cb00cebcb579e70b5f843f_aketRxwAYkwZhfhhTETGsL" {
  action_id            = "v3BPw5E3WcwKH4nngqta2i"
  destination_id       = "63cb00cebcb579e70b5f843f"
  enabled              = false
  model_id             = null
  name                 = "Upsert Contact- Favorite Color green"
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
      " favorite_color" = {
        "@path" = "$.traits.favoriteColor"
      }
      favorite_color_green = {
        "@path" = "$.traits.favorite_color_green"
      }
      favorite_food = {
        "@path" = "$.traits.favoriteFood"
      }
      j_o_send_to_hub_spot_test_track_event__send_to_hs_ezep2 = {
        "@path" = "$.traits.j_o_send_to_hub_spot_test_track_event__send_to_hs_ezep2"
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