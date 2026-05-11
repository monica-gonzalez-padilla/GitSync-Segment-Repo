import {
  to = segment_destination_subscription.id-6644f533698f3cc2727c2806_ika6Gw7R3fZ7fePv8Yy263
  id = "6644f533698f3cc2727c2806:ika6Gw7R3fZ7fePv8Yy263"
}

resource "segment_destination_subscription" "id-6644f533698f3cc2727c2806_ika6Gw7R3fZ7fePv8Yy263" {
  action_id            = "e3hcjRJqFJAJYkAis7RpeV"
  destination_id       = "6644f533698f3cc2727c2806"
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
    enable_batching = true
    external_id = {
      "@path" = "$.userId"
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