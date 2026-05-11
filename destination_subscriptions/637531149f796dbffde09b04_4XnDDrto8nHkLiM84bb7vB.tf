import {
  to = segment_destination_subscription.id-637531149f796dbffde09b04_4XnDDrto8nHkLiM84bb7vB
  id = "637531149f796dbffde09b04:4XnDDrto8nHkLiM84bb7vB"
}

resource "segment_destination_subscription" "id-637531149f796dbffde09b04_4XnDDrto8nHkLiM84bb7vB" {
  action_id            = "5aqZ2N6VPZKq5o8K1r957p"
  destination_id       = "637531149f796dbffde09b04"
  enabled              = false
  model_id             = null
  name                 = "Begin Checkout"
  reverse_etl_schedule = null
  settings = jsonencode({
    client_id = {
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
    coupon = {
      "@path" = "$.properties.coupon"
    }
    currency = {
      "@path" = "$.properties.currency"
    }
    data_stream_type     = "Web"
    engagement_time_msec = 1
    items = {
      "@arrayPath" = ["$.properties.products", {
        affiliation = {
          "@path" = "$.affiliation"
        }
        coupon = {
          "@path" = "$.coupon"
        }
        index = {
          "@path" = "$.position"
        }
        item_brand = {
          "@path" = "$.brand"
        }
        item_category = {
          "@path" = "$.category"
        }
        item_id = {
          "@path" = "$.product_id"
        }
        item_name = {
          "@path" = "$.name"
        }
        item_variant = {
          "@path" = "$.variant"
        }
        price = {
          "@path" = "$.price"
        }
        quantity = {
          "@path" = "$.quantity"
        }
      }]
    }
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
    value = {
      "@path" = "$.properties.value"
    }
  })
  trigger = "type = \"track\" and event = \"Checkout Started\""
}