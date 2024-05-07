SELECT slrsc.senshi_name AS sailor_senshi, slrsc.real_name_jpn AS real_name,
       slrsc.cat_name AS cat, s.school AS school
FROM
  (SELECT slrs.id, slrs.school_id, slrs.senshi_name, slrs.real_name_jpn, c.name AS cat_name
  FROM sailorsenshi slrs
  LEFT JOIN cats c
  ON slrs.cat_id = c.id) as slrsc
  LEFT JOIN schools s
  ON slrsc.school_id = s.id
