import {
  to = segment_function.id-ifnd_66bd0eddfc0f7124a988f942
  id = "ifnd_66bd0eddfc0f7124a988f942"
}

resource "segment_function" "id-ifnd_66bd0eddfc0f7124a988f942" {
  code          = "// token: ZR-j4AftVRLBmOM01J1HP8T4HwmjDiiZdoj2n1_hN0p4KBV7r4M0GMltrI5gayaRatgz0jYkyyjfIcBkQZzIqvqesk7f16Oix8qBVmVkZw5yiuvbcL3AsLkQaPgCSkJ2VgBWbeDFzEAj_fBBPd_ro0PLrBXRmL5EA4lMh8fIEj9mcpBVQgyLtXCwoqKSljbTu9icJw1d7RGzH0taP2d3Ifjv3pQI9-lqkHIIVdt_C4KxGyfvgAi_Mbb81QGdaEyOvkIWDvn5UpVg8kVlv4y4bI7WkV4=\n// spaceId: spa_moWTxQRn1NWcs1YTu8N7ia\n\nasync function fetchUserProfile(event, settings) {\n\t// Check if the event already contains an email\n\tif (event.properties && event.properties.email) {\n\t\tconsole.log('Email found in event properties, skipping profile API call.');\n\t\treturn event.properties.email; // Return the existing email without calling the API\n\t} else if (event.traits && event.traits.email) {\n\t\tconsole.log('Email found in event traits, skipping profile API call.');\n\t\treturn event.traits.email; // Return the existing email without calling the API\n\t}\n\n\t// If no email is found, fetch it from the Segment Profile API\n\tconst endpointProfile = `https://profiles.segment.com/v1/spaces/$${settings.spaceId}/collections/users/profiles/user_id:$${event.userId}/traits?include=email`;\n\n\tconsole.log(settings.spaceId); // Log the space ID for debugging purposes\n\n\ttry {\n\t\t// Fetch the user profile from Segment's Profile API\n\t\tlet response = await fetch(endpointProfile, {\n\t\t\tmethod: 'GET',\n\t\t\theaders: {\n\t\t\t\tAuthorization: `Basic $${btoa(settings.profileToken + ':')}`, // Encode the token in base64\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t}\n\t\t});\n\n\t\t// Retry logic based on the response status\n\t\tif (response.status >= 500 || response.status === 429) {\n\t\t\tthrow new RetryError(`HTTP Status $${response.status}`);\n\t\t}\n\n\t\tlet data = await response.json();\n\t\tconsole.log('Fetched Data:', data); // Log the fetched data for debugging\n\n\t\t// Check if the required data is available\n\t\tif (!data || !data.traits || !data.traits.email) {\n\t\t\tthrow new RetryError(`Email address not found for this userId`);\n\t\t}\n\n\t\treturn data.traits.email; // Return the email address\n\t} catch (err) {\n\t\t// Log the error and retry on connection errors\n\t\tconsole.error('Error fetching user profile:', err);\n\t\tthrow new RetryError(`Failed with $${err.message}`);\n\t}\n}\n\n// Function to handle 'track' events\nasync function onTrack(event, settings) {\n\tlet email = await fetchUserProfile(event, settings); // Fetch the email using the user profile\n\n\t// Create a transformed event with the fetched email\n\tlet transformed_event = {\n\t\t...event,\n\t\tproperties: { ...event.properties, email }\n\t};\n\n\tconsole.log(transformed_event); // Log the transformed event for debugging\n\n\treturn transformed_event;\n}\n\n// Function to handle 'identify' events\nasync function onIdentify(event, settings) {\n\tlet email = await fetchUserProfile(event, settings); // Fetch the email using the user profile\n\n\t// Create a transformed event with the fetched email\n\tlet transformed_event = {\n\t\t...event,\n\t\ttraits: { ...event.traits, email }\n\t};\n\n\tconsole.log(transformed_event); // Log the transformed event for debugging\n\n\treturn transformed_event;\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "INSERT_DESTINATION"
  settings = [
    {
      description = "engage space profile token"
      label       = "profileToken"
      name        = "profileToken"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = "spa_xxx"
      label       = "spaceId"
      name        = "spaceId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}