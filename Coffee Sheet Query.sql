-select count(*) from coffee_sheet;
select * from coffee_sheet;

         /*COFFEE SHEET SALES DATA ANALYSIS USING POSTGRESQL*/
--Q1. Write a sql querry to find the total sales of coffee.
--solution:
select sum(money) from coffee_sheet;
--Answer= 122271.58

--Q2. Write a sql querry to find the top 3 coffee in respect of purchase count.
--solution:
select coffee_name, count(money) as purchase_count from coffee_sheet
group by coffee_name
order by  count(money) desc limit 3;
--Answer= 1. Americano with milk with 824 count.
     --2. latte with 806 count.
	 --3. Americano with 593 count.

--Q3. Write a sql querry to find which Cash_type used the most(card or cash).
--solution:
select cash_type, count(money) as count from coffee_sheet
group by cash_type
order by count(money) desc;
--Answer= Card(3729count)

--Q4. Write a sql querry to find bottom 3 coffee in respect of sales.
--solution:
select coffee_name, sum(money) as sales from coffee_sheet
group by coffee_name
order by sum(money) limit 3;
--Answer= 1. Caramel with 22.00 Revenue
        --2. Double chocolate with 25.00 Revenue
		--3. Chocolate with 25.00 Revenue

--Q5. sql querry to find on which date Revenue were Maximum.
--solution:
select date, sum(money) as Max_Revenue from coffee_sheet
group by date
order by sum(money) desc limit 1;
--Answer: 21-02-2025 with 979.08 Revenue.

--Q6. Use sql querry to find peak order hour of coffee.
--solution:
select extract(hour from time), count(money) as Peak_Hour from coffee_sheet
group by extract(hour from time)
order by count(money) desc limit 1;
--Answer: 10 AM with 362 count.

--Q7. Write a sql querry to find the top 5 dates with highest average daily sales.
--solution:
select date, round(avg(money), 2) as Average_Revenue from coffee_sheet
group by date
order by round(avg(money), 2) desc limit 5;
--Answer: 1. 24-03-2024 with 39.35 average revenue.
        --2. 29-03-2024 with 39.03 average revenue.
		--3. 03-05-2024 with 38.15 average revenue.
		--4. 30-03-2024 with 37.98 average revenue.
		--5. 13-04-2024 with 37.80 average revenue.



		

	 
	 
