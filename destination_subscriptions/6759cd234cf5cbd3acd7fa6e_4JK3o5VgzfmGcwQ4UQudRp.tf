import {
  to = segment_destination_subscription.id-6759cd234cf5cbd3acd7fa6e_4JK3o5VgzfmGcwQ4UQudRp
  id = "6759cd234cf5cbd3acd7fa6e:4JK3o5VgzfmGcwQ4UQudRp"
}

resource "segment_destination_subscription" "id-6759cd234cf5cbd3acd7fa6e_4JK3o5VgzfmGcwQ4UQudRp" {
  action_id            = "e3hcjRJqFJAJYkAis7RpeV"
  destination_id       = "6759cd234cf5cbd3acd7fa6e"
  enabled              = true
  model_id             = null
  name                 = "Upsert Profile"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["list_id", "override_list_id"]
    batch_size = 10000
    email = {
      "@path" = "$.traits.email"
    }
    first_name = {
      "@path" = "$.traits.firstName"
    }
    image = {
      "@path" = "$.traits.avatar"
    }
    last_name = {
      "@path" = "$.traits.lastName"
    }
    location = {
      address1 = {
        "@path" = "$.traits.address.street"
      }
      city = {
        "@path" = "$.traits.address.city"
      }
      country = {
        "@path" = "$.traits.address.country"
      }
      region = {
        "@path" = "$.traits.address.state"
      }
      zip = {
        "@path" = "$.traits.address.postal_code"
      }
    }
    organization = {
      "@path" = "$.traits.company.name"
    }
    override_list_id = {
      "@path" = "$.integrations.Klaviyo.listId"
    }
    phone_number = {
      "@path" = "$.context.traits.phone"
    }
    properties = {
      "@path" = "$.traits"
    }
    title = {
      "@path" = "$.traits.title"
    }
  })
  trigger = "type = \"identify\""
}