/*
Using our monsters table with the following monsters table schema:
id
name
legs
arms
characteristics
return the following table:

** output schema**
name
characteristics

Where the name is the original string repeated three times (do not add any spaces),
and the characteristics are the original strings in reverse (e.g. 'abc, def, ghi' becomes 'ihg ,fed ,cba').
*/

SELECT concat(name, name, name) as name, reverse(characteristics) as characteristics
FROM monsters;