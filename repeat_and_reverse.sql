-- using monsters table return name and characterstics column
-- where the name is the original string repeated three times
-- and the characteristics are the original strings in reverse

SELECT REPEAT(name, 3) AS name, REVERSE(characteristics) AS characteristics
FROM monsters;