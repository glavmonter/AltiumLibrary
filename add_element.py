import csv
import mariadb
import sys


try:
    conn = mariadb.connect(
         user='altium',
         password='d2b841e971488',
         host='wintercactus.online',
         port=3306,
         database='altium_library')
except mariadb.Error as e:
    print(f'Error connecting to MariaDB: {e}')
    sys.exit(1)

cur = conn.cursor()

table_name = 'tTest'

sql_query_columns = """
SELECT `COLUMN_NAME` 
FROM `INFORMATION_SCHEMA`.`COLUMNS` 
WHERE `TABLE_SCHEMA`='altium_library' 
    AND `TABLE_NAME`=?;
"""
cur.execute(sql_query_columns, (table_name,))

ignore_csv_columns = ['COMMENT', 'SHEETPART', 'DESIGNATOR', 'DESCRIPTION']
db_columns = []
for (column_name,) in cur:
    print(f'Column: {column_name}')
    db_columns.append(column_name)

with open('Import.csv') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        print(row)
        part_name = row['LIBRARYREFERENCE']
        if part_name == 'IGNORE':
            continue
        cur.execute("INSERT INTO `altium_library`.`tTest` (`Part Name`) VALUES (?)", (part_name,))

conn.close()
