import {
  to = segment_destination.id-640f8709465560ed7874adc8
  id = "640f8709465560ed7874adc8"
}

resource "segment_destination" "id-640f8709465560ed7874adc8" {
  enabled = true
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "63ed446fe60a1b56c5e6f130"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "GA 4 Web Destination for Button Clicker"
  settings = jsonencode({
    allowAdPersonalizationSignals       = true
    allowGoogleSignals                  = true
    cookieDomain                        = "auto"
    cookieExpirationInSeconds           = 63072000
    cookieFlags                         = ""
    cookiePath                          = ""
    cookiePrefix                        = ""
    cookieUpdate                        = true
    defaultAdsStorageConsentState       = "granted"
    defaultAnalyticsStorageConsentState = "granted"
    enableConsentMode                   = false
    measurementID                       = "G-ZNR1K8B5BM"
    pageView                            = true
    waitTimeToUpdateConsentStage        = 0
  })
  source_id = "5Q3P5v2mfBPGwtWEMEGD4q"
}