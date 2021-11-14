SELECT R.Race INTO "Race"
FROM (
SELECT "Race / Ethnicity",
CASE 
	WHEN "Race / Ethnicity" = 'Asian, non-Hispanic' THEN 'Asian'
	WHEN "Race / Ethnicity" = 'Black, non-Hispanic' THEN 'African American'
	WHEN "Race / Ethnicity" = 'White, non-Hispanic' THEN 'White'
	WHEN "Race / Ethnicity" = 'Hispanic' THEN 'Hispanic'
	WHEN "Race / Ethnicity" = 'Other' THEN 'Other'
END AS Race
FROM public."NYS_Income")R;

ALTER TABLE public."NYS_Income"
ADD COLUMN Race VARCHAR;

UPDATE public."NYS_Income"
SET Race = (
CASE
WHEN "Race / Ethnicity" = 'Asian, non-Hispanic' THEN 'Asian'
WHEN "Race / Ethnicity" = 'Black, non-Hispanic' THEN 'African American'
WHEN "Race / Ethnicity" = 'White, non-Hispanic' THEN 'White'
WHEN "Race / Ethnicity" = 'Hispanic' THEN 'Hispanic'
WHEN "Race / Ethnicity" = 'Other' THEN 'Other'
END);

SELECT * FROM public."demographics"
INNER JOIN public."NYS_Income"
	ON "County / County Group" = "County"
ORDER BY "County"