import pandas as pd

df = pd.read_csv("./TNL/test1/Survey_22Oct.csv", header=0,
                 index_col=False, encoding='utf-8-sig')
print(len(df.columns))
print(df.head())
