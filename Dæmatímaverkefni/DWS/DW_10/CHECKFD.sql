
Select 'R1: A --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R1
     GROUP BY A
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R1: A --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R1
     GROUP BY A
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R1: A --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R1
     GROUP BY A
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R1: A --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R1
     GROUP BY A
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R1: B --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R1
     GROUP BY B
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R1: B --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R1
     GROUP BY B
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R1: B --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R1
     GROUP BY B
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R1: B --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R1
     GROUP BY B
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R1: C --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R1
     GROUP BY C
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R1: C --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R1
     GROUP BY C
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R1: C --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R1
     GROUP BY C
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R1: C --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R1
     GROUP BY C
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R1: D --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R1
     GROUP BY D
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R1: D --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R1
     GROUP BY D
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R1: D --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R1
     GROUP BY D
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R1: D --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R1
     GROUP BY D
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R1: E --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R1
     GROUP BY E
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R1: E --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R1
     GROUP BY E
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R1: E --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R1
     GROUP BY E
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R1: E --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R1
     GROUP BY E
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R2: A --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R2
     GROUP BY A
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R2: A --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R2
     GROUP BY A
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R2: A --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R2
     GROUP BY A
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R2: A --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R2
     GROUP BY A
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R2: B --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R2
     GROUP BY B
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R2: B --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R2
     GROUP BY B
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R2: B --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R2
     GROUP BY B
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R2: B --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R2
     GROUP BY B
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R2: C --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R2
     GROUP BY C
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R2: C --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R2
     GROUP BY C
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R2: C --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R2
     GROUP BY C
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R2: C --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R2
     GROUP BY C
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R2: D --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R2
     GROUP BY D
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R2: D --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R2
     GROUP BY D
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R2: D --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R2
     GROUP BY D
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R2: D --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R2
     GROUP BY D
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R2: E --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R2
     GROUP BY E
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R2: E --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R2
     GROUP BY E
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R2: E --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R2
     GROUP BY E
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R2: E --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R2
     GROUP BY E
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R3: A --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R3
     GROUP BY A
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R3: A --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R3
     GROUP BY A
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R3: A --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R3
     GROUP BY A
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R3: A --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R3
     GROUP BY A
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R3: B --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R3
     GROUP BY B
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R3: B --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R3
     GROUP BY B
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R3: B --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R3
     GROUP BY B
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R3: B --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R3
     GROUP BY B
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R3: C --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R3
     GROUP BY C
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R3: C --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R3
     GROUP BY C
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R3: C --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R3
     GROUP BY C
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R3: C --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R3
     GROUP BY C
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R3: D --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R3
     GROUP BY D
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R3: D --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R3
     GROUP BY D
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R3: D --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R3
     GROUP BY D
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R3: D --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R3
     GROUP BY D
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R3: E --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R3
     GROUP BY E
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R3: E --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R3
     GROUP BY E
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R3: E --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R3
     GROUP BY E
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R3: E --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R3
     GROUP BY E
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R4: A --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R4
     GROUP BY A
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R4: A --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R4
     GROUP BY A
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R4: A --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R4
     GROUP BY A
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R4: A --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R4
     GROUP BY A
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R4: B --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R4
     GROUP BY B
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R4: B --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R4
     GROUP BY B
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R4: B --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R4
     GROUP BY B
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R4: B --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R4
     GROUP BY B
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R4: C --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R4
     GROUP BY C
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R4: C --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R4
     GROUP BY C
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R4: C --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R4
     GROUP BY C
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R4: C --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R4
     GROUP BY C
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R4: D --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R4
     GROUP BY D
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R4: D --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R4
     GROUP BY D
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R4: D --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R4
     GROUP BY D
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R4: D --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R4
     GROUP BY D
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R4: E --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R4
     GROUP BY E
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R4: E --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R4
     GROUP BY E
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R4: E --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R4
     GROUP BY E
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R4: E --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R4
     GROUP BY E
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R5: A --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R5
     GROUP BY A
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R5: A --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R5
     GROUP BY A
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R5: A --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R5
     GROUP BY A
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R5: A --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT A
     FROM R5
     GROUP BY A
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R5: B --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R5
     GROUP BY B
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R5: B --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R5
     GROUP BY B
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R5: B --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R5
     GROUP BY B
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R5: B --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT B
     FROM R5
     GROUP BY B
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R5: C --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R5
     GROUP BY C
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R5: C --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R5
     GROUP BY C
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R5: C --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R5
     GROUP BY C
     HAVING COUNT (DISTINCT D) > 1
) X;
Select 'R5: C --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT C
     FROM R5
     GROUP BY C
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R5: D --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R5
     GROUP BY D
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R5: D --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R5
     GROUP BY D
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R5: D --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R5
     GROUP BY D
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R5: D --> E' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT D
     FROM R5
     GROUP BY D
     HAVING COUNT (DISTINCT E) > 1
) X;
Select 'R5: E --> A' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R5
     GROUP BY E
     HAVING COUNT (DISTINCT A) > 1
) X;
Select 'R5: E --> B' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R5
     GROUP BY E
     HAVING COUNT (DISTINCT B) > 1
) X;
Select 'R5: E --> C' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R5
     GROUP BY E
     HAVING COUNT (DISTINCT C) > 1
) X;
Select 'R5: E --> D' AS FD,
    CASE WHEN COUNT(*)=0 THEN 'HOLDS'
    ELSE 'DOES NOT HOLD' END AS VALIDITY
FROM (
     SELECT E
     FROM R5
     GROUP BY E
     HAVING COUNT (DISTINCT D) > 1
) X;