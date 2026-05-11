import {
  to = segment_destination_subscription.id-640f8709465560ed7874adc8_xdnKHdUsEGS8vRJMEnkp3P
  id = "640f8709465560ed7874adc8:xdnKHdUsEGS8vRJMEnkp3P"
}

resource "segment_destination_subscription" "id-640f8709465560ed7874adc8_xdnKHdUsEGS8vRJMEnkp3P" {
  action_id            = "s4P812yhNfyexNfYTWCFMB"
  destination_id       = "640f8709465560ed7874adc8"
  enabled              = false
  model_id             = null
  name                 = "View Item"
  reverse_etl_schedule = null
  settings = jsonencode({
    currency = {
      "@path" = "$.properties.currency"
    }
    items = {
      "@arrayPath" = ["$.properties.products", {
        affiliation = {
          "@path" = "$.affiliation"
        }
        coupon = {
          "@path" = "$.coupon"
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
    send_to = true
    value = {
      "@path" = "$.properties.value"
    }
  })
  trigger = "type = \"track\" and event =  \"Product Viewed\""
}