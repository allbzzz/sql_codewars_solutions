/*
DESCRIPTION:
You are given a table named repositories, format as below:

** repositories table schema **

project
commits
contributors
address
The table shows project names of major cryptocurrencies, their numbers of commits and contributors and also a random donation address ( not linked in any way :) ).

Your job is to split out the letters and numbers from the address provided, and return a table in the following format:

** output table schema **

project
letters
numbers
Case should be maintained.
*/

SELECT project,
  REGEXP_REPLACE(address, '\d', '', 'g') AS letters,
  REGEXP_REPLACE(address, '\D', '', 'g') AS numbers
FROM repositories;