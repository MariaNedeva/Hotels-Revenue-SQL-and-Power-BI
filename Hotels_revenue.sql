WITH hotels AS
(
    SELECT * FROM dbo.[2018]
    UNION 
    SELECT * FROM dbo.[2019]
    UNION 
    SELECT * FROM dbo.[2020]
)
select * from hotels
left join dbo.market_segment$
on hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on dbo.meal_cost$.meal = hotels.meal



