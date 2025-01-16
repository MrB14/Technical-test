import pandas as pd
from datetime import datetime

files = ["branch_a.csv", "branch_b.csv", "branch_c.csv"]
data = pd.concat([pd.read_csv(f) for f in files])

data.dropna(subset=["transaction_id", "date", "customer_id"], inplace=True)
data["date"] = pd.to_datetime(data["date"])
data.drop_duplicates(subset=["transaction_id"], keep="last", inplace=True)

data["total_sales"] = data["quantity"] * data["price"]
result = data.groupby("branch")["total_sales"].sum().reset_index()
result.to_csv("total_sales_per_branch.csv", index=False)
