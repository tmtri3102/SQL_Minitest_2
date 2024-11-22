select * from cities;
select * from customers;
select * from orders;
select * from places;
select * from tour;
select * from types;

-- Thống kê số lượng tour của các thành phố
select c.cityName, count(t.tourId)
from cities c
join places p
on c.cityId = p.placeId
join tour t
on t.placeId = p.placeId
group by c.cityName;

-- Tính số tour có ngày bắt đầu trong tháng 3 năm 2024
select count(t.startdate) as "Các tour bắt đầu từ tháng 3"
from tour t 
where t.startdate between '2024-03-01' and '2024-03-31';

-- Tính số tour có ngày kết thúc trong tháng 4 năm 2024
select count(t.startdate) as "Các tour kết thúc trong tháng 4"
from tour t 
where t.startdate between '2024-04-01' and '2024-04-30';