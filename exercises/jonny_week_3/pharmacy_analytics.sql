-- 5/21/2024 - Jonny exercise 1 - Pharmacy Analytics
--CVS Health is trying to better understand its pharmacy sales, and how well different products are selling. Each drug can only be produced by one manufacturer.

--Write a query to find the top 3 most profitable drugs sold, and how much profit they made. Assume that there are no ties in the profits. 
--Display the result from the highest to the lowest total profit.

--cogs stands for Cost of Goods Sold which is the direct cost associated with producing the drug.
--Total Profit = Total Sales - Cost of Goods Sold.

--Assumption: No ties in profits

CREATE TABLE #pharmacy_sales
(
    PRODUCT_ID INT,
    UNITS_SOLD INT,
    TOTAL_SALES numeric(16,2),
    COGS numeric(16,2),
    MANUFACTURER varchar(255),
    DRUG varchar(255)
)

insert into #pharmacy_sales
values
(9,37410, 293452.54, 208876.01, 'Eli Lilly', 'Zyprexa'),
(34, 94698, 600997.19, 521182.16, 'AstraZeneca', 'Surmontil'),
(61, 77023, 500101.61, 419174.97, 'Biogen', 'Varicose Relief'),
(136, 144814, 1084258, 1006447.73, 'Biogen', 'Burkhart');

--Only 1 drug can be produced by 1 manufacturer
select 
top 3
drug, total_sales - cogs as total_profit
from #pharmacy_sales
order by total_profit desc;
