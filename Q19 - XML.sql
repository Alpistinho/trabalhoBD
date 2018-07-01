CREATE TABLE T1(Col1 int primary key, Col2 xml)   

DECLARE @x xml
set @x = '<note><to>Tove</to><from>Jani</from><heading>Reminder</heading><body>Dont forget me this weekend!</body></note>'

insert into T1 values(1,@x)
select * from T1