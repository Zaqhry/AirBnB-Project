



--AirBnB Project 

----------------------------

SELECT * 
FROM Listings 

----------------------------

--Average price per Bedroom 

SELECT bedrooms,
       AVG(price) avg_price
FROM Listings 
WHERE bedrooms IS NOT NULL
  GROUP BY bedrooms
  ORDER BY avg_price
  
  

--Average price, weekly price & monthly price for each zipcode

SELECT zipcode,
       ROUND(AVG(price),2) avg_price,
       ROUND(AVG(weekly_price),2) weekly_price,
       ROUND(AVG(monthly_price),2) monthly_price
FROM Listings 
WHERE zipcode IS NOT NULL
  GROUP BY zipcode 
  ORDER BY avg_price DESC



--Availability (t = available, f = not available)

SELECT instant_bookable,
       COUNT(*) 
FROM Listings 
  GROUP BY instant_bookable



-------------------------------------------------------------------------------------------------------

--Number of of bedrooms & bathrooms for each property type

SELECT property_type,
       ROUND(AVG(bedrooms),0) number_of_rooms,
       ROUND(AVG(bathrooms),0) number_of_bathrooms
FROM Listings 
WHERE property_type IS NOT NULL and bedrooms IS NOT NULL
  GROUP BY property_type



--Average price charged number of properties present in each neighbourhood 

SELECT neighbourhood,
       AVG(price) avg_price,
       COUNT(property_type) num_of_properties
FROM Listings 
WHERE neighbourhood IS NOT NULL
  GROUP BY neighbourhood,
           property_type
  ORDER BY num_of_properties DESC



--Number of properties per each property 

SELECT property_type, 
       COUNT(*) number
FROM Listings 
WHERE property_type IS NOT NULL
  GROUP BY property_type



--Average price per property type

SELECT property_type,
       AVG(price) average_price
FROM Listings
WHERE property_type IS NOT NULL
  GROUP BY property_type



--Number of properties available for each room type 

SELECT room_type,
       COUNT(*) number
FROM Listings
  GROUP BY room_type



--Average cleaning fee per each property type 

SELECT property_type,
       AVG(cleaning_fee) cleaning_fee
FROM Listings 
WHERE property_type IS NOT NULL and cleaning_fee IS NOT NULL
  GROUP BY property_type 
  ORDER BY cleaning_fee DESC




