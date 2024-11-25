#python3 -m venv /build/output
#source /build/output/bin/activate
#python3 -m pip install requests

import os
import requests

# Server URL
FHIR_SERVER = "http://localhost:8080/fhir"

# Directory containing FHIR resource files
RESOURCE_DIR = "./build/output/fsh-generated/resources"

# Upload each file in the directory
for filename in os.listdir(RESOURCE_DIR):
    if filename.endswith(".json"):  # Only process JSON files
        with open(os.path.join(RESOURCE_DIR, filename), "r") as file:
            resource = file.read()
            response = requests.post(
                f"{FHIR_SERVER}/{filename.split('-')[0]}",  # Resource type from filename
                headers={"Content-Type": "application/fhir+json"},
                data=resource,
            )
            print(f"Uploaded {filename}: {response.status_code}")