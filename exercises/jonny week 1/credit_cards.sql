-- 5/7/2024 - Jonny exercise 4 - Teams Power Users
-- Your team at JPMorgan Chase is preparing to launch a new credit card, and to gain some insights, you're analyzing
-- how many credit cards were issued each month.

--Write a query that outputs the name of each credit card and the difference in the number of issued cards between
-- the month with the highest issuance cards and the lowest issuance. 
--Arrange the results based on the largest disparity.


create table #monthly_cards_issued
(
    card_name varchar(200),
    issued_amount INT,
    issue_month int,
    issue_year int,

)

insert into #monthly_cards_issued (card_name, issued_amount, issue_month, issue_year)
values
('Chase Freedom Flex', 55000, 1, 2021),
('Chase Freedom Flex', 60000, 2, 2021),
('Chase Freedom Flex', 65000, 3, 2021),
('Chase Freedom Flex', 70000, 4, 2021),
('Chase Sapphire Reserve', 170000, 1, 2021),
('Chase Sapphire Reserve', 175000, 2, 2021),
('Chase Sapphire Reserve', 180000, 3, 2021);

-- may need to add a where clause to select the year 2021 or whatever year you're trying to grab,
-- or even better add a year as a group by as well.
select 
card_name, 
-- issue_year,
max(issued_amount) - min(issued_amount) as difference from #monthly_cards_issued
-- where issue_year = 2021
group by 
    card_name
    -- , issue_year

order by difference desc;