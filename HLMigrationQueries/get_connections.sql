 
----Query to get connection open

select inst_id,machine,count(*) from gv$session where username='CUSTOMER' group by inst_id,machine;

select inst_id,machine,count(*) from gv$session where username='LOYALTY_USER' group by inst_id,machine;

