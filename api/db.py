from dotenv import load_dotenv
import os
import psycopg2

load_dotenv()

DATABASE_URL = os.environ['DATABASE_URL']

conn = psycopg2.connect(DATABASE_URL)

conn.close()
