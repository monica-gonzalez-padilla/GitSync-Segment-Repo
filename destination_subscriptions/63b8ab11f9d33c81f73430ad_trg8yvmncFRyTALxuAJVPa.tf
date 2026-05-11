import {
  to = segment_destination_subscription.id-63b8ab11f9d33c81f73430ad_trg8yvmncFRyTALxuAJVPa
  id = "63b8ab11f9d33c81f73430ad:trg8yvmncFRyTALxuAJVPa"
}

resource "segment_destination_subscription" "id-63b8ab11f9d33c81f73430ad_trg8yvmncFRyTALxuAJVPa" {
  action_id            = "dfT2tG36Ddr8MUKCUvcvLt"
  destination_id       = "63b8ab11f9d33c81f73430ad"
  enabled              = false
  model_id             = null
  name                 = "Upsert Company"
  reverse_etl_schedule = null
  settings = jsonencode({
    address = {
      "@path" = "$.traits.address.street"
    }
    associateContact = true
    city = {
      "@path" = "$.traits.address.city"
    }
    createNewCompany = true
    description = {
      "@path" = "$.traits.description"
    }
    domain = {
      "@path" = "$.traits.website"
    }
    groupid = {
      "@if" = {
        else = {
          "@path" = "$.context.groupId"
        }
        exists = {
          "@path" = "$.groupId"
        }
        then = {
          "@path" = "$.groupId"
        }
      }
    }
    industry = {
      "@path" = "$.traits.industry"
    }
    name = {
      "@path" = "$.traits.name"
    }
    numberofemployees = {
      "@path" = "$.traits.employees"
    }
    phone = {
      "@path" = "$.traits.phone"
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
  trigger = "type = \"group\""
}