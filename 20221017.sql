use bank;
select * from trans;

select * from bank.trans;

-- comentarioooç

select trans_id, account_id, date, type
from bank.trans;

-- to select some columns instead of all
select bank.trans.trans_id, bank.trans.account_id, bank.trans.date, bank.trans.type
from bank.trans;

-- aliasing columns
select bt.trans_id as Transaction_ID, bt.account_id as Account_ID, bt.date as Date, bt.type as Type
from bank.trans as bt;

-- limiting the number of rows in the results
select bt.trans_id as Transaction_ID
from bank.trans as bt
limit 10;

-- check the number of entires in a table
select count(*) from bank.trans;

select "Hello World";

select (2+2);

select distinct type 
from bank.card;

select distinct bank.district.A2 as district_name
from bank.district;

select distinct A2 as District, A3 as Region
from bank.district
order by A2 asc
limit 30;

select *, amount - payments as balance
from bank.loan;

select * 
from bank.loan
where status in ("B", "b");

select * from bank.loan
where status in ("B", "b") and amount > 100000;

select * from bank.loan
limit 10;

select * from bank.account
order by account_id desc
limit 10;
