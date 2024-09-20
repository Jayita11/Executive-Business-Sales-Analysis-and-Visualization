#!/usr/bin/env python
# coding: utf-8

# In[1]:


pip install pandas mysql-connector-python sqlalchemy


# In[11]:


import pandas as pd
from sqlalchemy import create_engine

# Step 1: Load the data using Pandas with specified encoding
data = pd.read_csv('/Users/jayitachatterjee/Desktop/Products.csv', encoding='ISO-8859-1')

# Step 2: Connect to the MySQL database
engine = create_engine("mysql+mysqlconnector://root:******@localhost/executive_sales")

# Step 3: Write the data into a MySQL table
data.to_sql(name='Products', con=engine, if_exists='replace', index=False)

print("Data imported successfully!")


# In[12]:


import pandas as pd
from sqlalchemy import create_engine

# Step 1: Load the data using Pandas with specified encoding
data = pd.read_csv('/Users/jayitachatterjee/Desktop/Location.csv', encoding='ISO-8859-1')

# Step 2: Connect to the MySQL database
engine = create_engine("mysql+mysqlconnector://root:*****@localhost/executive_sales")

# Step 3: Write the data into a MySQL table
data.to_sql(name='Location', con=engine, if_exists='replace', index=False)

print("Data imported successfully!")


# In[13]:


import pandas as pd
from sqlalchemy import create_engine

# Step 1: Load the data using Pandas with specified encoding
data = pd.read_csv('/Users/jayitachatterjee/Desktop/Customers.csv', encoding='ISO-8859-1')

# Step 2: Connect to the MySQL database
engine = create_engine("mysql+mysqlconnector://root:*****@localhost/executive_sales")

# Step 3: Write the data into a MySQL table
data.to_sql(name='customers', con=engine, if_exists='replace', index=False)

print("Data imported successfully!")


# In[14]:


import pandas as pd
from sqlalchemy import create_engine

# Step 1: Load the data using Pandas with specified encoding
data = pd.read_csv('/Users/jayitachatterjee/Desktop/Orders.csv', encoding='ISO-8859-1')

# Step 2: Connect to the MySQL database
engine = create_engine("mysql+mysqlconnector://root:*****@localhost/executive_sales")

# Step 3: Write the data into a MySQL table
data.to_sql(name='Orders', con=engine, if_exists='replace', index=False)

print("Data imported successfully!")


# In[ ]:




