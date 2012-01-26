CREATE OR REPLACE FUNCTION longToDate
 ( longTime NUMBER )
RETURN date
is
newDate date;
BEGIN
select TO_DATE('19700101000000','YYYYMMDDHH24MISS') + (longTime)/24/60/60/1000 into newDate
from dual;
 RETURN newDate;
END;