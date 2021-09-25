SELECT * FROM partners;

SELECT count(status) AS Number_of_successful_Transcation
FROM referrals;

SELECT *
FROM referrals
WHERE created_date BETWEEN 2020-08-31  AND 2020-09-29;

SELECT * 
FROM partners
Order By partner_type;

