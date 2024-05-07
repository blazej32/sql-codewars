SELECT slrsc.senshi_name AS sailor_senshi, slrsc.real_name_jpn AS real_name,
       slrsc.cat_name AS cat, s.school AS school
FROM
  (SELECT slrs.id, slrs.senshi_name, slrs.real_name_jpn, c.name AS cat_name
   FROM sailorsenshi slrs
   LEFT JOIN cats c
   ON slrs.id = c.id) AS slrsc
   LEFT JOIN schools AS s
   ON slrsc.id = s.id;
