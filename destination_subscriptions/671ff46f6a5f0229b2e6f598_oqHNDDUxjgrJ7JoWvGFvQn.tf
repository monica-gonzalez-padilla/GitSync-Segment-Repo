import {
  to = segment_destination_subscription.id-671ff46f6a5f0229b2e6f598_oqHNDDUxjgrJ7JoWvGFvQn
  id = "671ff46f6a5f0229b2e6f598:oqHNDDUxjgrJ7JoWvGFvQn"
}

resource "segment_destination_subscription" "id-671ff46f6a5f0229b2e6f598_oqHNDDUxjgrJ7JoWvGFvQn" {
  action_id            = "3d5gFs6q9sfwJVAYPDyGQc"
  destination_id       = "671ff46f6a5f0229b2e6f598"
  enabled              = true
  model_id             = null
  name                 = "Custom Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    action_source = "app"
    app_data_field = {
      advertiser_tracking_enabled = true
      anonId = {
        "@path" = "$.context.anon_id"
      }
      application_tracking_enabled = {
        "@path" = "$.context.device.adTrackingEnabled"
      }
      carrier = {
        "@path" = "$.context.network.carrier"
      }
      density = {
        "@path" = "$.context.screen.density"
      }
      deviceName = {
        "@path" = "$.context.device.model"
      }
      deviceTimezone = {
        "@path" = "$.context.timezone"
      }
      height = {
        "@path" = "$.context.screen.height"
      }
      locale = {
        "@path" = "$.context.locale"
      }
      longVersion = {
        "@path" = "$.context.app.version"
      }
      madId = {
        "@path" = "$.context.madId"
      }
      osVersion = {
        "@path" = "$.context.os.version"
      }
      packageName = {
        "@path" = "$.context.app.namespace"
      }
      use_app_data = true
      version      = "a2"
      width = {
        "@path" = "$.context.screen.width"
      }
    }
    event_id = {
      "@path" = "$.messageId"
    }
    event_name = {
      "@path" = "$.event"
    }
    event_source_url = {
      "@path" = "$.context.page.url"
    }
    event_time = {
      "@path" = "$.timestamp"
    }
    user_data = {
      city = {
        "@path" = "$.context.traits.address.city"
      }
      client_ip_address = {
        "@path" = "$.context.ip"
      }
      client_user_agent = {
        "@path" = "$.context.userAgent"
      }
      dateOfBirth = {
        "@path" = "$.context.traits.birthday"
      }
      email = {
        "@path" = "$.context.traits.email"
      }
      externalId = {
        "@if" = {
          else = {
            "@path" = "$.anonymousId"
          }
          exists = {
            "@path" = "$.userId"
          }
          then = {
            "@path" = "$.userId"
          }
        }
      }
      fbc = {
        "@path" = "$.properties.fbc"
      }
      fbp = {
        "@path" = "$.properties.fbp"
      }
      firstName = {
        "@path" = "$.context.traits.firstName"
      }
      lastName = {
        "@path" = "$.context.traits.lastName"
      }
      phone = {
        "@path" = "$.context.traits.phone"
      }
      state = {
        "@path" = "$.context.traits.address.state"
      }
      zip = {
        "@path" = "$.context.traits.address.postalCode"
      }
    }
  })
  trigger = "type = \"track\""
}