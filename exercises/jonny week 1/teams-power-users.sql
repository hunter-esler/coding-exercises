
--Write a query to identify the top 2 power users who sent the hgihest number of messages on Microsoft Teams in August 2022.
--Display the IDs of these 2 users along with the total number of messages they sent. Output the results in descending order based on the count of the messages.

--Assumption: No two users have sent the same number of messages in August 2022

create table #messages 
(
    message_id int,
    sender_id int,
    receiver_id int,
    content varchar(8000),
    sent_date datetime
)

insert into #messages (message_id, sender_id, receiver_id, content, sent_date)
values (
    901,3601,4500, 'You up?', '08/03/2022 00:00:00'
), (
    902, 4500, 3601, 'Only if youre buying', '08/03/2022 00:00:00'
), (
    743, 3601, 8752, 'Lets take this offline', '06/14/2022 00:00:00'
), (
    922, 3601, 4500, 'Get on the call', '08/10/2022 00:00:00'
);

-- change #messages to whatever table we are testing against.
select top 2 sender_id, count(*) as massage_count from #messages
where YEAR(sent_date) = '2022' and MONTH(sent_date) = 8
group by sender_id
order by count(*) desc;