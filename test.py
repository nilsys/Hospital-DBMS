import cx_Oracle

conn = cx_Oracle.connect('C##hospital_manager','123','xe')
cur = conn.cursor()
query = """ select * from system.doctor"""
cur.execute(query)
data = cur.fetchall()
	
for line in data:
	print(line)