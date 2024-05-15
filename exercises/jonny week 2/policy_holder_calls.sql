

create table #callers
(
    policy_holder_id int,
    case_id varchar(1000),
    call_category varchar(1000),
    call_date TIME,
    call_duration_secs int
);

insert into #callers (policy_holder_id, case_id, call_category, call_date, call_duration_secs)
values
(1, 'f1d012f9', 'emergency assistance', '2023-04-13T19:16:53Z', '144'),
(1, '41CE8FB6', 'authorisation', '2023-05-25T09:09:30Z', '815'),
(2, '9b1af84b', 'claims assistance', '2023-01-26T01:21:27Z', '992'),
(2, '8471a3d4', 'emergency assistance', '2023-03-09T10:58:54Z', '128'),
(2, '38208fae', 'benefits', '2023-06-05T07:35:43Z', '619');

select count(*) as policy_holder_count 
from (
    select count(case_id) as c
    from #callers
    group by policy_holder_id
) r
where c >= 3;