import {
  to = segment_function.id-dfn_6758c2e679af7eda6cfc13a3
  id = "dfn_6758c2e679af7eda6cfc13a3"
}

resource "segment_function" "id-dfn_6758c2e679af7eda6cfc13a3" {
  code          = "async function onBatch(events, settings) {\n\tconst audience_data = {};\n\n\tfor (let i = 0; i < events.length; i++) {\n\t\tconst event = events[i];\n\t\tconst { audience_name, email, in_audience } = process_identify_event(\n\t\t\tevent,\n\t\t\tsettings\n\t\t);\n\t\tlet emails = audience_data[audience_name];\n\n\t\tif (!emails) {\n\t\t\temails = [];\n\t\t\taudience_data[audience_name] = emails;\n\t\t}\n\t\temails.push([email, in_audience]);\n\t}\n\n\tconst audience_names = Object.keys(audience_data);\n\n\tawait Promise.all(\n\t\taudience_names.map(async audience_name => {\n\t\t\tconst emails = audience_data[audience_name];\n\t\t\tawait send_to_bing(audience_name, emails, settings);\n\t\t})\n\t);\n}\n// is on batch needed if sending audiences only?? i dont think so\n\nasync function onIdentify(event, settings) {\n\tconst { audience_name, email, in_audience } = process_identify_event(\n\t\tevent,\n\t\tsettings\n\t);\n\t//This function handles a single identify event and sends that data to Bing Ads.\n\t//It processes the event in the same way as in onBatch, extracting audience_name, email, and in_audience.\n\n\tawait send_to_bing(audience_name, [[email, in_audience]], settings);\n}\n// After extracting the relevant data, it sends the email data to Bing Ads using the send_to_bing function.\nfunction process_identify_event(event, settings) {\n\tlet email = '';\n\tlet in_audience = false;\n\tlet audience_name = '';\n\n\t//Initializes the variables for storing the extracted data.\n\n\tconst trait_keys = Object.keys(event.traits);\n\t// Extracts all trait keys from the event and iterates over them to find the relevant data (e.g., email and audience name).\n\tfor (let i = 0; i < trait_keys.length; i++) {\n\t\tconst trait_key = trait_keys[i];\n\n\t\tif (trait_key == settings.hashedEmailTrait) {\n\t\t\temail = event.traits[trait_key];\n\t\t} else {\n\t\t\tswitch (trait_key) {\n\t\t\t\tcase 'email': {\n\t\t\t\t\temail = event.traits.email;\n\t\t\t\t\tbreak;\n\t\t\t\t}\n\t\t\t\tcase 'user_id':\n\t\t\t\tcase 'userId': {\n\t\t\t\t\tbreak;\n\t\t\t\t}\n\t\t\t\tdefault: {\n\t\t\t\t\tif (\n\t\t\t\t\t\t!settings.audienceNameTrait ||\n\t\t\t\t\t\ttrait_key == settings.audienceNameTrait\n\t\t\t\t\t) {\n\t\t\t\t\t\taudience_name = trait_key;\n\t\t\t\t\t\tconst ia = event.traits[trait_key];\n\n\t\t\t\t\t\tif (typeof ia != 'boolean') {\n\t\t\t\t\t\t\tconsole.error(trait_key);\n\t\t\t\t\t\t\tconsole.error(ia);\n\t\t\t\t\t\t\tthrow new ValidationError(\n\t\t\t\t\t\t\t\t`Unexpected audience trait value. Audience trait should be a boolean: $${trait_key} : $${ia}`\n\t\t\t\t\t\t\t);\n\t\t\t\t\t\t}\n\t\t\t\t\t\tin_audience = ia;\n\t\t\t\t\t}\n\t\t\t\t\tbreak;\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}\n\n\t//Extracts all trait keys from the event and iterates over them to find the relevant data (e.g., email and audience name).\n\t// If the trait matches the hashedEmailTrait, it assigns the email.\n\t//If the trait matches audienceNameTrait,\n\t//it assigns the audience name and checks the in_audience status (whether the user is part of the audience)\n\n\tif (!email) {\n\t\tthrow new ValidationError(\n\t\t\t'User does not have an email listed as one of their traits'\n\t\t);\n\t} else if (!audience_name) {\n\t\tthrow new ValidationError('Event does not provide an audience trait');\n\t}\n\t//If no email or audience name is found, it throws an error to indicate that these are required.\n\treturn { email, audience_name, in_audience };\n}\n// If the trait matches the hashedEmailTrait, it assigns the email.\n//\n//Returns the extracted and validated data.\n\nasync function send_to_bing(audience_name, emails, settings) {\n\tconst access_token = await get_access_token(settings);\n\t// This function sends the audience data to Bing Ads.\n\t// It gets the access token required for authentication with the Bing Ads API.\n\n\tconst { to_add_request, to_remove_request } = await do_all(\n\t\taccess_token,\n\t\tsettings,\n\t\taudience_name,\n\t\temails,\n\t\t!!settings.hashedEmailTrait\n\t);\n\t// Calls the do_all function to prepare the data for adding and removing users, then sends this data to Bing Ads.\n\n\tconsole.log('To Add Status Details:');\n\tconsole.log(to_add_request);\n\tconsole.log('To Remove Status Details:');\n\tconsole.log(to_remove_request);\n}\n// Logs the results of the upload process for debugging and tracking.\n\nasync function do_all(\n\taccess_token,\n\tsettings,\n\taudience_name,\n\temails,\n\thash_email\n) {\n\tconst { to_add, to_remove } = await make_data(\n\t\taudience_name,\n\t\temails,\n\t\thash_email\n\t);\n\t// This function prepares the data for upload and sends it to Bing Ads in bulk.\n\t// Calls make_data to structure the audience data into to_add (add users) and to_remove (remove users) formats.\n\n\tlet to_add_request = { RequestId: '', TrackingId: '' };\n\tlet to_remove_request = { RequestId: '', TrackingId: '' };\n\n\tif (to_add.length > 0) {\n\t\tconsole.log(to_add);\n\t\tconst { upload_url } = await get_upload_uri(access_token, settings);\n\n\t\tconst upload = await upload_csv(upload_url, access_token, settings, to_add);\n\n\t\tif (!upload) {\n\t\t\tthrow new ValidationError('Error creating file');\n\t\t}\n\n\t\tconst { RequestId, TrackingId } = upload;\n\t\tto_add_request = { RequestId, TrackingId };\n\t}\n\t// If there are users to be added (to_add array),\n\t//it calls get_upload_uri to get the upload URL and then uploads the data via upload_csv.\n\n\tif (to_remove.length > 0) {\n\t\tconsole.log(to_remove);\n\t\tconst { upload_url } = await get_upload_uri(access_token, settings);\n\n\t\tconst upload = await upload_csv(\n\t\t\tupload_url,\n\t\t\taccess_token,\n\t\t\tsettings,\n\t\t\tto_remove\n\t\t);\n\n\t\tif (!upload) {\n\t\t\tthrow new ValidationError('Error creating file');\n\t\t}\n\n\t\tconst { RequestId, TrackingId } = upload;\n\t\tto_remove_request = { RequestId, TrackingId };\n\t}\n\t//Similarly, if there are users to be removed (to_remove array), it uploads that data.\n\n\treturn { to_add_request, to_remove_request };\n}\n\n// After uploading the data, it returns the status of the add and remove operations.\n\nasync function make_data(audience_name, emails, hash_email) {\n\tconst client_id = 'segment';\n\t//This function generates the required data structure for uploading to Bing Ads, and optionally hashes emails if specified.\n\tlet to_add = [\n\t\t{\n\t\t\tType: 'Format Version',\n\t\t\tStatus: '',\n\t\t\tId: '',\n\t\t\t'Parent Id': '',\n\t\t\t'Client Id': '',\n\t\t\t'Modified Time': '',\n\t\t\tName: '6.0',\n\t\t\tDescription: '',\n\t\t\tScope: '',\n\t\t\tAudience: '',\n\t\t\t'Action Type': '',\n\t\t\t'Sub Type': '',\n\t\t\tText: ''\n\t\t},\n\t\t{\n\t\t\tType: 'Customer List',\n\t\t\tStatus: 'Active',\n\t\t\tId: '-10',\n\t\t\t'Parent Id': '',\n\t\t\t'Client Id': client_id,\n\t\t\t'Modified Time': '',\n\t\t\tName: '',\n\t\t\tDescription: '',\n\t\t\tScope: 'Customer',\n\t\t\tAudience: audience_name,\n\t\t\t'Action Type': 'Add',\n\t\t\t'Sub Type': '',\n\t\t\tText: ''\n\t\t}\n\t];\n\n\tlet to_remove = [{ ...to_add[0] }, { ...to_add[1] }];\n\tto_remove[1]['Action Type'] = 'Remove';\n\t//Creates template rows for to_add and to_remove that are required by Bing Ads' bulk upload API.\n\n\tfor (let i = 0; i < emails.length; i++) {\n\t\tconst [email, is_in] = emails[i];\n\n\t\t//For each email, it checks if it needs to be hashed (if hash_email is true),\n\t\t// and adds it to the appropriate list (to_add or to_remove).\n\n\t\tlet Text = email;\n\t\tif (hash_email) {\n\t\t\t// Hash the email if hash_email is true\n\t\t\tconst hashBuffer = await crypto\n\t\t\t\t.createHash('sha256')\n\t\t\t\t.update(email)\n\t\t\t\t.digest();\n\t\t\tconst hashArray = Array.from(new Uint8Array(hashBuffer));\n\t\t\tText = hashArray.map(b => b.toString(16).padStart(2, '0')).join('');\n\t\t}\n\t\t//If hash_email is true, it hashes the email using SHA-256 before adding it to the Text field.\n\n\t\tconst data = is_in ? to_add : to_remove;\n\n\t\tdata.push({\n\t\t\tType: 'Customer List Item',\n\t\t\tStatus: '',\n\t\t\tId: '',\n\t\t\t'Parent Id': '-10',\n\t\t\t'Client Id': client_id,\n\t\t\t'Modified Time': '',\n\t\t\tName: '',\n\t\t\tDescription: '',\n\t\t\tScope: '',\n\t\t\tAudience: '',\n\t\t\t'Action Type': '',\n\t\t\t'Sub Type': 'email',\n\t\t\tText\n\t\t});\n\t}\n\n\t// Remove the initial template rows if no data was added\n\tif (to_add.length === 2) {\n\t\tto_add = [];\n\t}\n\tif (to_remove.length === 2) {\n\t\tto_remove = [];\n\t}\n\n\treturn { to_add, to_remove };\n}\n//Returns the data ready for uploading to Bing Ads.\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/2e87e186-3bca-4d55-b93b-97705deb2a73.svg"
  resource_type = "DESTINATION"
  settings = [
    {
      description = ""
      label       = "clientId"
      name        = "clientId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "clientSecret"
      name        = "clientSecret"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "customerAccountId"
      name        = "customerAccountId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "customerId"
      name        = "customerId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "redirectUri"
      name        = "redirectUri"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "refreshToken"
      name        = "refreshToken"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}