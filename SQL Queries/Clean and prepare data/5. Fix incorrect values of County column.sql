-- some values of County Column are incorrect
-- updated table to have correct values

UPDATE [UK_Housing_Prices]
SET County = REPLACE(County, '"BOURNEMOUTH', 'BOURNEMOUTH')
