--Troubleshooting: If it gives error, del the listings table,and try to re-import it.

SELECT *
FROM PortfolioProject..listings

SELECT amenities
FROM PortfolioProject..listings

SELECT	LEFT(amenities,len(amenities)-1) as left_character
FROM PortfolioProject..listings;

UPDATE PortfolioProject..listings
SET amenities = LEFT(amenities,len(amenities) - 1)

SELECT amenities
FROM PortfolioProject..listings

SELECT RIGHT(amenities,len(amenities) - 1) as right_character
FROM PortfolioProject..listings

UPDATE PortfolioProject..listings
SET amenities = RIGHT(amenities,len(amenities) - 1)

SELECT amenities
FROM PortfolioProject..listings



SELECT neighbourhood_cleansed, value as tag, COUNT(*) as num
FROM PortfolioProject..listings
cross apply string_split(amenities,',')
--Input the ZIPCODE that you are interested in. Eg: 76574,78602,78610, 78612
WHERE neighbourhood_cleansed = '76530'  
GROUP BY neighbourhood_cleansed, value 
ORDER BY neighbourhood_cleansed,COUNT(*) DESC




