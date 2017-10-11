---Query to get total row count along with table_name s
select 
   table_name, 
   num_rows counter 
from 
   dba_tables 
where 
   owner = 'CUSTOMER' and table_name not in ('awsdms_apply_exceptions')
order by 
   table_name;




