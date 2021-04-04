import psycopg2
import csv
from config import connection

conn = psycopg2.connect(**connection)
cur = conn.cursor()

query = '''
SELECT l.region, ss.year, min(ss.zno_grade)
FROM migration.students_subjects ss
JOIN migration.institutions i 
ON ss.institution_name = i.institution_name
JOIN migration.locations l
ON i.institution_region = l.region AND
i.institution_area = l.area AND
i.institution_territory = l.territory
WHERE ss.test_status = 'Зараховано' AND
ss.subject_name = 'Українська мова і література'
GROUP BY l.region, ss.year;
'''
cur.execute(query)

with open('result2.csv', 'w', encoding='UTF-8') as f:
    writer = csv.writer(f, lineterminator='\n')
    writer.writerow(['Регіон', 'Рік', 'Мінімальний бал з укр. мови та літератури'])
    for row in cur:
        writer.writerow(row)


cur.close()
conn.close()