import {
  to = segment_tracking_plan.id-tp_38zNsXEZibXBIiNDbO37nUGQpR9
  id = "tp_38zNsXEZibXBIiNDbO37nUGQpR9"
}

resource "segment_tracking_plan" "id-tp_38zNsXEZibXBIiNDbO37nUGQpR9" {
  description = "description"
  name        = "stock x test Tracking Plan"
  rules = [
    {
      json_schema = jsonencode({
        "$schema"   = "http://json-schema.org/draft-07/schema#"
        description = "Blocks events from specific bots across userAgent, page URLs, and referrers, and strictly whitelists allowed context.page.search marketing parameters to prevent Snowflake column explosions."
        not = {
          anyOf = [{
            properties = {
              context = {
                properties = {
                  userAgent = {
                    pattern = "[gG][oO][oO][gG][lL][eE][bB][oO][tT]|[bB][iI][nN][gG][bB][oO][tT]|[bB][aA][iI][dD][uU]|[yY][aA][nN][dD][eE][xX]|[yY][iI][sS][oO][uU][sS][pP][iI][dD][eE][rR]|[dD][uU][cC][kK][dD][uU][cC][kK][bB][oO][tT]|[sS][lL][uU][rR][pP]|[sS][eE][mM][rR][uU][sS][hH]|[aA][hH][rR][eE][fF][sS]|[mM][jJ]12[bB][oO][tT]|[sS][cC][rR][eE][aA][mM][iI][nN][gG][\\s_-]?[fF][rR][oO][gG]|[cC][rR][aA][wW][lL][eE][rR]|[bB][oO][tT]|[sS][pP][iI][dD][eE][rR]|[pP][iI][nN][gG][dD][oO][mM]"
                    type    = "string"
                  }
                }
                required = ["userAgent"]
                type     = "object"
              }
            }
            }, {
            properties = {
              context = {
                properties = {
                  page = {
                    properties = {
                      url = {
                        pattern = "[gG][oO][oO][gG][lL][eE][bB][oO][tT]|[bB][iI][nN][gG][bB][oO][tT]|[bB][aA][iI][dD][uU]|[yY][aA][nN][dD][eE][xX]|[yY][iI][sS][oO][uU][sS][pP][iI][dD][eE][rR]|[dD][uU][cC][kK][dD][uU][cC][kK][bB][oO][tT]|[sS][lL][uU][rR][pP]|[sS][eE][mM][rR][uU][sS][hH]|[aA][hH][rR][eE][fF][sS]|[mM][jJ]12[bB][oO][tT]|[sS][cC][rR][eE][aA][mM][iI][nN][gG][\\s_-]?[fF][rR][oO][gG]|[cC][rR][aA][wW][lL][eE][rR]|[bB][oO][tT]|[sS][pP][iI][dD][eE][rR]|[pP][iI][nN][gG][dD][oO][mM]"
                        type    = "string"
                      }
                    }
                    required = ["url"]
                    type     = "object"
                  }
                }
                required = ["page"]
                type     = "object"
              }
            }
            }, {
            properties = {
              context = {
                properties = {
                  referrer = {
                    properties = {
                      url = {
                        pattern = "[gG][oO][oO][gG][lL][eE][bB][oO][tT]|[bB][iI][nN][gG][bB][oO][tT]|[bB][aA][iI][dD][uU]|[yY][aA][nN][dD][eE][xX]|[yY][iI][sS][oO][uU][sS][pP][iI][dD][eE][rR]|[dD][uU][cC][kK][dD][uU][cC][kK][bB][oO][tT]|[sS][lL][uU][rR][pP]|[sS][eE][mM][rR][uU][sS][hH]|[aA][hH][rR][eE][fF][sS]|[mM][jJ]12[bB][oO][tT]|[sS][cC][rR][eE][aA][mM][iI][nN][gG][\\s_-]?[fF][rR][oO][gG]|[cC][rR][aA][wW][lL][eE][rR]|[bB][oO][tT]|[sS][pP][iI][dD][eE][rR]|[pP][iI][nN][gG][dD][oO][mM]"
                        type    = "string"
                      }
                    }
                    required = ["url"]
                    type     = "object"
                  }
                }
                required = ["referrer"]
                type     = "object"
              }
            }
          }]
        }
        properties = {
          context = {
            properties = {
              page = {
                properties = {
                  search = {
                    additionalProperties = false
                    description          = "Strict allowlist of authorized marketing, search, and Facebook campaign parameters."
                    properties = {
                      fb_ad = {
                        type = "string"
                      }
                      fb_adid = {
                        type = "string"
                      }
                      fb_adset = {
                        type = "string"
                      }
                      fb_adsetid = {
                        type = "string"
                      }
                      fb_campaign = {
                        type = "string"
                      }
                      fb_campaignid = {
                        type = "string"
                      }
                      fbclid = {
                        type = "string"
                      }
                      gclid = {
                        type = "string"
                      }
                      q = {
                        type = "string"
                      }
                      utm_campaign = {
                        type = "string"
                      }
                      utm_content = {
                        type = "string"
                      }
                      utm_id = {
                        type = "string"
                      }
                      utm_medium = {
                        type = "string"
                      }
                      utm_source = {
                        type = "string"
                      }
                      utm_term = {
                        type = "string"
                      }
                    }
                    type = "object"
                  }
                }
                type = "object"
              }
            }
            type = "object"
          }
          properties = {}
          traits     = {}
        }
        required = ["context"]
        type     = "object"
      })
      key     = null
      type    = "COMMON"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema"   = "http://json-schema.org/draft-07/schema#"
        description = "DO NOT EDIT. Event generated to store end users consent preferences for Unify and Twilio Engage."
        properties = {
          context = {
            type = "object"
          }
          properties = {
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Segment Consent Preference Updated"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              items = {
                id = "/properties/properties/properties/items"
                items = {
                  id = "/properties/properties/properties/items/items"
                  properties = {
                    "$" = {
                      description = ""
                      id          = "/properties/properties/properties/items/items/properties/%24"
                      properties  = {}
                      required    = []
                      type        = "object"
                    }
                    index = {
                      description = ""
                      id          = "/properties/properties/properties/items/items/properties/index"
                      type        = "integer"
                    }
                    productUUID = {
                      description = ""
                      id          = "/properties/properties/properties/items/items/properties/productUUID"
                      type        = "string"
                    }
                    skuUUID = {
                      description = ""
                      id          = "/properties/properties/properties/items/items/properties/skuUUID"
                      type        = "string"
                    }
                  }
                  required = []
                  type     = "object"
                }
                type = "array"
              }
              screenName = {
                id   = "/properties/properties/properties/screenName"
                type = ["string"]
              }
              swooshName = {
                id   = "/properties/properties/properties/swooshName"
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Product Carousel Viewed"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              propertyName = {
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Insert event name"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Page Viewed"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}