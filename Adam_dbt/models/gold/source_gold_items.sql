WITH dedup AS
(
  SELECT
    *,
    ROW_NUMBER() OVER (PARTITION BY id ORDER BY updateDate DESC) AS dedup_key
  FROM
    {{ source('source', 'items') }}
)
SELECT 
  id,
  name,
  category,
  updateDate
FROM 
  dedup
WHERE
  dedup_key = 1