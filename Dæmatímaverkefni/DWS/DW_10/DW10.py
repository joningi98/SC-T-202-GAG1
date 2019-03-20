list1 = ['R1', 'R2', 'R3', 'R4', 'R5']
list2 = ['A', 'B', 'C', 'D', 'E']

with open('CHECKFD.sql', 'w') as file:
    for i in list1:
        for j in list2:
            for k in list2:
                if j != k:
                    file.write(f"""
Select '{i}: {j} --> {k}' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT {j}
     FROM {i}
     GROUP BY {j}
     HAVING COUNT (DISTINCT {k}) > 1
) X;""")

list1 = ['R2']
with open('CHECKMVD.sql', 'w') as file:
    for i in list1:
        for j in list2:
            for k in list2:
                for u in list2:
                    if j != k:
                        if k != u:
                            file.write(f"""
SELECT IF (COUNT(*) = 0, 'MAYBE MVD', 'NO MVD') AS MVD 
FROM (SELECT {j}
      FROM {i}
      GROUP BY {j}
      HAVING (COUNT(DISTINCT {k}) * COUNT(DISTINCT {u}) 
                   <> COUNT(*))
) X;
""")
