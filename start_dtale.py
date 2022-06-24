import dtale
import pandas as pd

if __name__ == "__main__":
    data_df = pd.read_parquet("./option_chain_data.parquet")
    data_df["date"] = pd.to_datetime(data_df["date"])
    dtale.show(data_df, subprocess=False)
