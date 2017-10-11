
-----****************Query 1a
select count(*) from LOYALTY_AGGREGATOR  where  to_char(create_date ,'YYYY')='2013'
UNION ALL
select count(*) from LOYALTY_AGGREGATOR  where  to_char(create_date ,'YYYY')='2014'
UNION ALL
select count(*) from LOYALTY_AGGREGATOR  where  to_char(create_date ,'YYYY')='2015'
UNION ALL
select count(*) from LOYALTY_AGGREGATOR  where  to_char(create_date ,'YYYY')='2016';

----*****************Query 1b

select count(*) from LOYALTY_AGGREGATOR where  to_char(create_date ,'Mon-YYYY')='Jan-2017'
UNION ALL
select count(*) from LOYALTY_AGGREGATOR where  to_char(create_date ,'Mon-YYYY')='Feb-2017'
UNION ALL
select count(*) from LOYALTY_AGGREGATOR where   to_char(create_date ,'Mon-YYYY')='Mar-2017'
UNION ALL
select count(*) from LOYALTY_AGGREGATOR where   to_char(create_date ,'Mon-YYYY')='Apr-2017'
UNION ALL
select count(*) from LOYALTY_AGGREGATOR where   to_char(create_date ,'Mon-YYYY')='May-2017'
UNION ALL
select count(*) from LOYALTY_AGGREGATOR where   to_char(create_date ,'Mon-YYYY')='Jun-2017'
UNION ALL
select count(*) from LOYALTY_AGGREGATOR where   to_char(create_date ,'Mon-YYYY')='Jul-2017'
UNION ALL
select count(*) from LOYALTY_AGGREGATOR where   to_char(create_date ,'Mon-YYYY')='Aug-2017'
UNION ALL
select count(*) from LOYALTY_AGGREGATOR where   to_char(create_date ,'Mon-YYYY')='Sep-2017';

select max(LOYALTY_TRANSACTION_ID),count(*) from LOYALTY_TRANSACTION where   to_char(create_date ,'dd-Mon-YYYY')='04-Oct-2017';

-----****************Query 2a
select count(*) from LOYALTY_CC_STATUS_HIST  where  to_char(create_date ,'YYYY')='2014'
UNION ALL
select count(*) from LOYALTY_CC_STATUS_HIST  where  to_char(create_date ,'YYYY')='2015'
UNION ALL
select count(*) from LOYALTY_CC_STATUS_HIST  where  to_char(create_date ,'YYYY')='2016';

-----****************Query 2b
select count(*) from LOYALTY_CC_STATUS_HIST where  to_char(create_date ,'Mon-YYYY')='Jan-2017'
UNION ALL
select count(*) from LOYALTY_CC_STATUS_HIST where  to_char(create_date ,'Mon-YYYY')='Feb-2017'
UNION ALL
select count(*) from LOYALTY_CC_STATUS_HIST where   to_char(create_date ,'Mon-YYYY')='Mar-2017'
UNION ALL
select count(*) from LOYALTY_CC_STATUS_HIST where   to_char(create_date ,'Mon-YYYY')='Apr-2017'
UNION ALL
select count(*) from LOYALTY_CC_STATUS_HIST where   to_char(create_date ,'Mon-YYYY')='May-2017'
UNION ALL
select count(*) from LOYALTY_CC_STATUS_HIST where   to_char(create_date ,'Mon-YYYY')='Jun-2017'
UNION ALL
select count(*) from LOYALTY_CC_STATUS_HIST where   to_char(create_date ,'Mon-YYYY')='Jul-2017'
UNION ALL
select count(*) from LOYALTY_CC_STATUS_HIST where   to_char(create_date ,'Mon-YYYY')='Aug-2017'
UNION ALL
select count(*) from LOYALTY_CC_STATUS_HIST where   to_char(create_date ,'Mon-YYYY')='Sep-2017';


-----****************Query 3
select count(*) from LOYALTY_CREDIT_PENDING  where  to_char(create_date ,'Mon-YYYY')='Jan-2017'
UNION ALL
select count(*) from LOYALTY_CREDIT_PENDING where  to_char(create_date ,'Mon-YYYY')='Feb-2017'
UNION ALL
select count(*) from LOYALTY_CREDIT_PENDING where   to_char(create_date ,'Mon-YYYY')='Mar-2017'
UNION ALL
select count(*) from LOYALTY_CREDIT_PENDING where   to_char(create_date ,'Mon-YYYY')='Apr-2017'
UNION ALL
select count(*) from LOYALTY_CREDIT_PENDING where   to_char(create_date ,'Mon-YYYY')='May-2017'
UNION ALL
select count(*) from LOYALTY_CREDIT_PENDING where   to_char(create_date ,'Mon-YYYY')='Jun-2017'
UNION ALL
select count(*) from LOYALTY_CREDIT_PENDING where   to_char(create_date ,'Mon-YYYY')='Jul-2017'
UNION ALL
select count(*) from LOYALTY_CREDIT_PENDING where   to_char(create_date ,'Mon-YYYY')='Aug-2017'
UNION ALL
select count(*) from LOYALTY_CREDIT_PENDING where   to_char(create_date ,'Mon-YYYY')='Sep-2017';


-----****************Query 4a

select count(*) from LOYALTY_MEMBER  where  to_char(create_date ,'YYYY')='2011'
UNION ALL
select count(*) from LOYALTY_MEMBER  where  to_char(create_date ,'YYYY')='2012'
UNION ALL
select count(*) from LOYALTY_MEMBER  where  to_char(create_date ,'YYYY')='2013'
UNION ALL
select count(*) from LOYALTY_MEMBER  where  to_char(create_date ,'YYYY')='2014'
UNION ALL
select count(*) from LOYALTY_MEMBER  where  to_char(create_date ,'YYYY')='2015'
UNION ALL
select count(*) from LOYALTY_MEMBER  where  to_char(create_date ,'YYYY')='2016';

-----****************Query 4b
select count(*) from LOYALTY_MEMBER where  to_char(create_date ,'Mon-YYYY')='Jan-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER where  to_char(create_date ,'Mon-YYYY')='Feb-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER where   to_char(create_date ,'Mon-YYYY')='Mar-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER where   to_char(create_date ,'Mon-YYYY')='Apr-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER where   to_char(create_date ,'Mon-YYYY')='May-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER where   to_char(create_date ,'Mon-YYYY')='Jun-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER where   to_char(create_date ,'Mon-YYYY')='Jul-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER where   to_char(create_date ,'Mon-YYYY')='Aug-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER where   to_char(create_date ,'Mon-YYYY')='Sep-2017';



-----****************Query 5a
select count(*) from LOYALTY_MEMBER_XREF  where  to_char(create_date ,'YYYY')='2011'
UNION ALL
select count(*) from LOYALTY_MEMBER_XREF  where  to_char(create_date ,'YYYY')='2012'
UNION ALL
select count(*) from LOYALTY_MEMBER_XREF  where  to_char(create_date ,'YYYY')='2013'
UNION ALL
select count(*) from LOYALTY_MEMBER_XREF  where  to_char(create_date ,'YYYY')='2014'
UNION ALL
select count(*) from LOYALTY_MEMBER_XREF  where  to_char(create_date ,'YYYY')='2015'
UNION ALL
select count(*) from LOYALTY_MEMBER_XREF  where  to_char(create_date ,'YYYY')='2016';

-----****************Query 5b
select count(*) from LOYALTY_MEMBER_XREF where  to_char(create_date ,'Mon-YYYY')='Jan-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER_XREF where  to_char(create_date ,'Mon-YYYY')='Feb-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER_XREF where   to_char(create_date ,'Mon-YYYY')='Mar-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER_XREF where   to_char(create_date ,'Mon-YYYY')='Apr-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER_XREF where   to_char(create_date ,'Mon-YYYY')='May-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER_XREF where   to_char(create_date ,'Mon-YYYY')='Jun-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER_XREF where   to_char(create_date ,'Mon-YYYY')='Jul-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER_XREF where   to_char(create_date ,'Mon-YYYY')='Aug-2017'
UNION ALL
select count(*) from LOYALTY_MEMBER_XREF where   to_char(create_date ,'Mon-YYYY')='Sep-2017';


-----****************Query 6a

select count(*) from LOYALTY_TIER_CRITERIA  where  to_char(create_date ,'YYYY')='2016';

-----****************Query 6b
select count(*) from LOYALTY_TIER_CRITERIA where  to_char(create_date ,'Mon-YYYY')='Jan-2017'
UNION ALL
select count(*) from LOYALTY_TIER_CRITERIA where  to_char(create_date ,'Mon-YYYY')='Feb-2017'
UNION ALL
select count(*) from LOYALTY_TIER_CRITERIA where   to_char(create_date ,'Mon-YYYY')='Mar-2017'
UNION ALL
select count(*) from LOYALTY_TIER_CRITERIA where   to_char(create_date ,'Mon-YYYY')='Apr-2017'
UNION ALL
select count(*) from LOYALTY_TIER_CRITERIA where   to_char(create_date ,'Mon-YYYY')='May-2017'
UNION ALL
select count(*) from LOYALTY_TIER_CRITERIA where   to_char(create_date ,'Mon-YYYY')='Jun-2017'
UNION ALL
select count(*) from LOYALTY_TIER_CRITERIA where   to_char(create_date ,'Mon-YYYY')='Jul-2017'
UNION ALL
select count(*) from LOYALTY_TIER_CRITERIA where   to_char(create_date ,'Mon-YYYY')='Aug-2017'
UNION ALL
select count(*) from LOYALTY_TIER_CRITERIA where   to_char(create_date ,'Mon-YYYY')='Sep-2017';


-----****************Query 7a

select count(*) from LOYALTY_TIER_HIST  where  to_char(create_date ,'YYYY')='2011'
UNION ALL
select count(*) from LOYALTY_TIER_HIST  where  to_char(create_date ,'YYYY')='2012'
UNION ALL
select count(*) from LOYALTY_TIER_HIST  where  to_char(create_date ,'YYYY')='2013'
UNION ALL
select count(*) from LOYALTY_TIER_HIST  where  to_char(create_date ,'YYYY')='2014'
UNION ALL
select count(*) from LOYALTY_TIER_HIST  where  to_char(create_date ,'YYYY')='2015'
UNION ALL
select count(*) from LOYALTY_TIER_HIST  where  to_char(create_date ,'YYYY')='2016';

-----****************Query 7b
select count(*) from LOYALTY_TIER_HIST  where  to_char(create_date ,'Mon-YYYY')='Jan-2017'
UNION ALL
select count(*) from LOYALTY_TIER_HIST where  to_char(create_date ,'Mon-YYYY')='Feb-2017'
UNION ALL
select count(*) from LOYALTY_TIER_HIST where   to_char(create_date ,'Mon-YYYY')='Mar-2017'
UNION ALL
select count(*) from LOYALTY_TIER_HIST where   to_char(create_date ,'Mon-YYYY')='Apr-2017'
UNION ALL
select count(*) from LOYALTY_TIER_HIST where   to_char(create_date ,'Mon-YYYY')='May-2017'
UNION ALL
select count(*) from LOYALTY_TIER_HIST where   to_char(create_date ,'Mon-YYYY')='Jun-2017'
UNION ALL
select count(*) from LOYALTY_TIER_HIST where   to_char(create_date ,'Mon-YYYY')='Jul-2017'
UNION ALL
select count(*) from LOYALTY_TIER_HIST where   to_char(create_date ,'Mon-YYYY')='Aug-2017'
UNION ALL
select count(*) from LOYALTY_TIER_HIST where   to_char(create_date ,'Mon-YYYY')='Sep-2017';

-----****************Query 8a

select count(*) from LOYALTY_TRANSACTION  where  to_char(create_date ,'YYYY')='2011'
UNION ALL
select count(*) from LOYALTY_TRANSACTION  where  to_char(create_date ,'YYYY')='2012'
UNION ALL
select count(*) from LOYALTY_TRANSACTION  where  to_char(create_date ,'YYYY')='2013'
UNION ALL
select count(*) from LOYALTY_TRANSACTION  where  to_char(create_date ,'YYYY')='2014'
UNION ALL
select count(*) from LOYALTY_TRANSACTION  where  to_char(create_date ,'YYYY')='2015'
UNION ALL
select count(*) from LOYALTY_TRANSACTION  where  to_char(create_date ,'YYYY')='2016';

-----****************Query 8b

select count(*) from LOYALTY_TRANSACTION  where  to_char(create_date ,'Mon-YYYY')='Jan-2017'
UNION ALL
select count(*) from LOYALTY_TRANSACTION where  to_char(create_date ,'Mon-YYYY')='Feb-2017'
UNION ALL
select count(*) from LOYALTY_TRANSACTION where   to_char(create_date ,'Mon-YYYY')='Mar-2017'
UNION ALL
select count(*) from LOYALTY_TRANSACTION where   to_char(create_date ,'Mon-YYYY')='Apr-2017'
UNION ALL
select count(*) from LOYALTY_TRANSACTION where   to_char(create_date ,'Mon-YYYY')='May-2017'
UNION ALL
select count(*) from LOYALTY_TRANSACTION where   to_char(create_date ,'Mon-YYYY')='Jun-2017'
UNION ALL
select count(*) from LOYALTY_TRANSACTION where   to_char(create_date ,'Mon-YYYY')='Jul-2017'
UNION ALL
select count(*) from LOYALTY_TRANSACTION where   to_char(create_date ,'Mon-YYYY')='Aug-2017'
UNION ALL
select count(*) from LOYALTY_TRANSACTION where   to_char(create_date ,'Mon-YYYY')='Sep-2017';

----****************Query 9
select * from LOYALTY_TRANSACTION where to_char(create_date ,'Mon-YYYY')='May-2017' fetch first 2 rows only;

select * from LOYALTY_MEMBER_XREF where   to_char(create_date ,'Mon-YYYY')='Aug-2017' fetch first 2 rows only;

select *  from LOYALTY_MEMBER where   to_char(create_date ,'Mon-YYYY')='May-2017' fetch first 2 rows only;
