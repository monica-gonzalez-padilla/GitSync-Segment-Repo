import {
  to = segment_function.id-ifnd_64d6aad687322c0107f5b8ee
  id = "ifnd_64d6aad687322c0107f5b8ee"
}

resource "segment_function" "id-ifnd_64d6aad687322c0107f5b8ee" {
  code          = "async function onTrack(event, settings) {\n\tconst endpointProfile = `https://profiles.segment.com/v1/spaces/$${settings.spaceId}/collections/users/profiles/user_id:$${event.userId}/traits?include=favoriteFood`;\n\tconsole.log(settings.spaceId);\n\t//It constructs a URL called endpointProfile.\n\t//This URL is used to request information about a user's profile from a service called Segment.\n\t// It uses the settings.spaceId and event.userId to form the URL, so it can fetch user profile traits.\n\tlet favoriteFood = '';\n\t//A variable called favoriteFood is created and initialized as an empty string\n\n\ttry {\n\t\tlet response = await fetch(endpointProfile, {\n\t\t\tmethod: 'GET',\n\t\t\theaders: {\n\t\t\t\tAuthorization: `Basic $${btoa(settings.profileToken + ':')}`,\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t}\n\t\t\t////It uses the fetch function to make an HTTP GET request to the endpointProfile URL.\n\t\t\t//This is how the code is asking the Segment service for the user's profile traits.\n\t\t\t//The await keyword is used before the fetch function call. This tells JavaScript to wait for the HTTP request to complete before moving on to the next step.\n\t\t\t//This is what makes the function an async function – it can pause and continue execution later.\n\t\t\t//Inside the fetch function call, an object with configuration options is provided.\n\t\t});\n\t\tlet data = await response.json();\n\t\tconsole.log('Fetched Data:', data); // Log the fetched data\n\n\t\tfavoriteFood = data.traits.favoriteFood;\n\t} catch (error) {\n\t\tthrow new RetryError(`Failed with $${error}`);\n\t}\n\n\tif (!favoriteFood) {\n\t\tconsole.log('Empty');\n\t\tthrow new RetryError(`Missing favoriteFood`);\n\t}\n\n\tlet transformed_event = { ...event };\n\ttransformed_event.properties['CurrentFavoriteFood'] = favoriteFood;\n\n\tconsole.log(transformed_event);\n\n\treturn transformed_event;\n}\n\n//It specifies that the request should be a GET request and sets headers, including an Authorization header.\n//This header is used to authenticate the request using a token.\n//The token is created by combining settings.profileToken with an empty string (represented by ':').\n\n//By adding console.log(\"Fetched Data:\", data); within the .then() block after parsing the JSON response, you'll be able to see the structure of the data object in the browser's console.\n//This can help you identify whether the structure matches what you're trying to access, and you can adjust your code accordingly.\n"
  description   = "Profile API used"
  display_name  = null
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "INSERT_DESTINATION"
  settings = [
    {
      description = ""
      label       = "profileToken"
      name        = "profileToken"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "spaceId"
      name        = "spaceId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}