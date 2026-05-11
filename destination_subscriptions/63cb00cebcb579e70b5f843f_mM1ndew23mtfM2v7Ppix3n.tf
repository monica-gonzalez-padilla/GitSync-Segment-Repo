import {
  to = segment_destination_subscription.id-63cb00cebcb579e70b5f843f_mM1ndew23mtfM2v7Ppix3n
  id = "63cb00cebcb579e70b5f843f:mM1ndew23mtfM2v7Ppix3n"
}

resource "segment_destination_subscription" "id-63cb00cebcb579e70b5f843f_mM1ndew23mtfM2v7Ppix3n" {
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
    enable_batching = true
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
      nombre_de_hubspot_contact_property = {
        "@path" = "$.audience_key"
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
  trigger = "type = \"track\" or event = \"Audience Entered\" or event = \"Audience Exited\""
}