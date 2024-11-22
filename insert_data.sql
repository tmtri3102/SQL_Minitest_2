-- Insert cities
INSERT INTO cities (cityName) VALUES 
('Hanoi'),
('Ho Chi Minh City'),
('Da Nang'),
('Hue'),
('Ha Long');

-- Insert places
INSERT INTO places (placeName, placeText, placePrice, cityId) VALUES 
('Hoan Kiem Lake', 'Famous historical lake in Hanoi', 0, 1),
('Notre Dame Cathedral', 'Iconic landmark in Ho Chi Minh City', 100000, 2),
('Golden Bridge', 'Stunning pedestrian bridge in Da Nang', 500000, 3),
('Imperial City', 'Historical royal city in Hue', 150000, 4),
('Ha Long Bay', 'World-famous natural wonder', 300000, 5);

-- Insert customers
INSERT INTO customers (customerName, customerCard, customerBirth) VALUES 
('Nguyen Van A', '1234567890', 1990),
('Tran Thi B', '2345678901', 1995),
('Le Van C', '3456789012', 1985),
('Pham Thi D', '4567890123', 2000),
('Hoang Van E', '5678901234', 1998),
('Nguyen Thi F', '6789012345', 1982),
('Vu Van G', '7890123456', 1993),
('Dang Thi H', '8901234567', 1999),
('Phan Van I', '9012345678', 1987),
('Ngo Thi K', '0123456789', 1994);

-- Insert types
INSERT INTO types (typeCode, typeName) VALUES 
(1, 'Cultural Tour'),
(2, 'Nature Tour');

-- Insert tours
INSERT INTO tour (typeId, placeId, placePrice, startdate, enddate) VALUES 
(1, 1, 0, '2024-12-01', '2024-12-02'),
(1, 2, 100000, '2024-12-05', '2024-12-06'),
(2, 3, 500000, '2024-12-10', '2024-12-11'),
(2, 4, 150000, '2024-12-15', '2024-12-16'),
(2, 5, 300000, '2024-12-20', '2024-12-21'),
(1, 1, 0, '2025-01-10', '2025-01-11'),
(1, 4, 150000, '2025-01-15', '2025-01-16'),
(2, 5, 300000, '2025-01-20', '2025-01-21'),
(1, 3, 500000, '2025-02-01', '2025-02-02'),
(2, 2, 100000, '2025-02-05', '2025-02-06'),
(1, 1, 0, '2025-03-01', '2025-03-02'),
(2, 5, 300000, '2025-03-10', '2025-03-11');

-- Insert orders
INSERT INTO orders (tourId, customerId, status) VALUES 
(1, 1, 1),
(2, 2, 0),
(3, 3, 1),
(4, 4, 1),
(5, 5, 0),
(6, 6, 1),
(7, 7, 0),
(8, 8, 1),
(9, 9, 0),
(10, 10, 1);
