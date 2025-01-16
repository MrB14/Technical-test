import requests
import pandas as pd

url = "http://universities.hipolabs.com/search"

def fetch_data(country):
    response = requests.get(url, params={"country": country})
    if response.status_code == 200:
        return response.json()
    else:
        print(f"Error: {response.status_code}")
        return []

country = "United States"
data = fetch_data(country)

df = pd.DataFrame(data)
df = df[["name", "web_pages", "country", "domains", "state-province"]]
df.columns = ["Name", "Web Pages", "Country", "Domains", "State Province"]
filtered_df = df[df["State Province"].isna()]

print("\nData tanpa State Province:")
print(filtered_df)
filtered_df.to_csv("Data_tanpa_state_province.csv", index=False)
