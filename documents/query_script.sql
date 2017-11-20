USE DBAsowell
GO

-- auto execute trigger
--create trigger salaryvalue_update
--on WorkingHistory
--for insert
--as
--begin
--	declare @starthour int
--	declare @startminute int
--	declare @endhour int
--	declare @endminute int
--	declare @foremp varchar(10)
--	declare @formonth int
--	declare @foryear int
--	declare @workhour float
--	select @starthour = starthour from inserted
--	select @startminute = startminute from inserted
--	select @endhour = endhour from inserted
--	select @endminute = endminute from inserted
--	select @foremp = emp_id from inserted
--	select @formonth = month(workday) from inserted
--	select @foryear = year(workday) from inserted
--	select @workhour = cast((cast(@endhour as float) - cast(@starthour as float)) + ((cast(@endminute as float) - cast(@startminute as float))/cast(60.0 as float)) as float)

--	update SalaryNote
--	set work_hour += @workhour
--	where emp_id = @foremp and for_month = @formonth and for_year = @foryear

--	update SalaryNote
--	set salary_value = work_hour * (select hour_wage from Employee E where E.emp_id = @foremp)
--	where emp_id = @foremp and for_month = @formonth and for_year = @foryear
--end
--go
-- end auto execute trigger


insert into AdminRes values
('AD00000001', 'admin_username1', 'password2', N'Ton That Vinh'),
('AD00000002', 'admin_username2', 'password3', N'Luu Duc Trung')
go


insert into Employee values
('EMP0000001',	'AD00000001', 'emp_username1', 	'password1',	N'Phạm Thanh Bình', 	'1996-01-01',	'2017-10-01',	10,		N'KTX trường Tôn Đức Thắng',						'example_email1@gmail.com',		'0969876940',	1, 0),
('EMP0000002',	'AD00000001', 'emp_username2', 	'password2',	N'Nguyễn Khánh Duy', 	'1996-01-01',	'2017-10-01',	12,		N'KTX trường Tôn Đức Thắng',						'example_email2@gmail.com',		'0964753827',	1, 0),
('EMP0000003',	'AD00000001', 'emp_username3', 	'password3',	N'Lý Đông Nghi', 		'1996-01-01',	'2017-10-01',	11,		N'19 Nguyễn Hữu Thọ, Tân Phong, Quận 7',			'example_email3@gmail.com',		'01677048100',	1, 0),
('EMP0000004',	'AD00000001', 'emp_username4', 	'password4',	N'Bảo Nguyên', 			'1996-01-01',	'2017-10-01',	12,		N'1017/34 Lê Văn Lương, Phước Kiển, Nhà Bè',		'example_email4@gmail.com',		'0965164474',	2, 0),
('EMP0000005',	'AD00000001', 'emp_username5', 	'password5',	N'Lương Nhật Duy', 		'1996-01-01',	'2017-10-01',	11,		N'10/7 Lý Phục Mang, Quận 7',						'example_email5@gmail.com',		'01215925627',	2, 0),
('EMP0000006',	'AD00000001', 'emp_username6', 	'password6',	N'Đinh Thanh Hưng', 	'1996-01-01',	'2017-10-01',	10,		N'1558A phường 7, Quận 8',							'example_email6@gmail.com',		'01207305775',	2, 0)
go


insert into Customer values
('CUS0000001', N'Guest',				'',		'',		0, 0),
('CUS0000002', N'Lưu Đức Trung',		'',		'',		20, 0),
('CUS0000003', N'Phạm Thanh Bình',		'',		'',		20, 0),
('CUS0000004', N'Nguyễn Khánh Duy',		'',		'',		20, 0),
('CUS0000005', N'Lý Đông Nghi',			'',		'',		20, 0),
('CUS0000006', N'Bảo Nguyên',			'',		'',		20, 0),
('CUS0000007', N'Lương Nhật Duy',		'',		'',		20, 0),
('CUS0000008', N'Đinh Thanh Hưng',		'',		'',		20, 0),
('CUS0000009', N'Ngọc Phấn',			'',		'',		20, 0),
('CUS0000010', N'Hữu Phát',				'',		'',		20, 0),
('CUS0000011', N'Phan Việt Nhân',		'',		'',		20, 0),
('CUS0000012', N'Nguyễn Thị Diễm My',	'',		'',		20, 0),
('CUS0000013', N'Phan Thanh Hằng',		'',		'',		20, 0),
('CUS0000014', N'Đặng Anh Thư',			'',		'',		20, 0),
('CUS0000015', N'Hà Nguyễn Nhật Minh',	'',		'',		20, 0),
('CUS0000016', N'Phan Hữu Tiến',		'',		'',		20, 0),
('CUS0000017', N'Ngô Thanh Hiếu',		'',		'',		20, 0)
go


insert into WareHouse 
	([warehouse_id], [contain], [std_contain])
values
('WAH0000001',	2000, 5000),		--N'ml',	   
('WAH0000002',	6000, 5000),		--N'ml',	   
('WAH0000003',	5000, 5000),		--N'ml',	   
('WAH0000004',	10000, 5000),		--N'ml',	   
('WAH0000005',	20000, 10000),		--N'g',		
('WAH0000006',	8000, 10000),		--N'g',	   
('WAH0000007',	5000, 5000),		--N'ml',		
('WAH0000008',	5000, 5000),		--N'ml',		
('WAH0000009',	2000, 5000),		--N'ml',		
('WAH0000010',	3000, 5000),		--N'ml',
('WAH0000011',	4000, 6000),		--N'ml',		
('WAH0000012',	9000, 6000),		--N'ml',		
('WAH0000013',	1000, 2000),		--N'g',		
('WAH0000014',	2000, 2000),		--N'g',		
('WAH0000015',	4000, 3000),		--N'g',		
('WAH0000016',	4000, 2000),		--N'g',		
('WAH0000017',	4000, 2000),		--N'g',		
('WAH0000018',	3500, 2000),		--N'g',		
('WAH0000019',	2600, 2000),		--N'g',		
('WAH0000020',	6000, 3000),		--N'g',	   
('WAH0000021',	7000, 5000),		--N'g',		
('WAH0000022',	5000, 3000),		--N'g',		
('WAH0000023',	5000, 5000),		--N'g',		
('WAH0000024',	10000, 5000),		--N'g',		
('WAH0000028',	2000, 2000),		--N'g',		
('WAH0000029',	5000, 5000),		--N'ml',	   
('WAH0000030',	1000, 5000),		--N'ml',	   
('WAH0000031',	1000, 6000),		--N'g',	   
('WAH0000032',	2000, 2000),		--N'g',	   
('WAH0000033',	3000, 2000),		--N'g',	   
('WAH0000027',	4000, 5000),		--N'g',	   
('WAH0000025',	5000, 4000),		--N'g',	   
('WAH0000026',	1000, 10000),		--N'g',	   
('WAH0000034',	2000, 2000),		--N'g',	   
('WAH0000035',	10, 10),			--N'pack',	
('WAH0000036',	5, 10),				--N'pack',	
('WAH0000037',	5, 10),				--N'pack',	
('WAH0000038',	4, 10),				--N'pack',	
('WAH0000039',	6, 10),				--N'pack',	
('WAH0000040',	5, 5),				--N'pack',	
('WAH0000041',	20, 20),			--N'pack',	
('WAH0000042',	200, 1000),			--N'ml',	   
('WAH0000043',	9, 10),				--N'pack',	
('WAH0000044',	4, 5),				--N'pack',	
('WAH0000045',	4, 10),				--N'pack',	
('WAH0000046',	6000, 5000),		--N'g',		
('WAH0000047',	0, 0)				--N'time',   
go

insert into Ingredient values
('IGD0000001',	'WAH0000001',	N'pepsi', 					N'',		0,	N'dry',			N'ml',	    130,0),
('IGD0000002',	'WAH0000002',	N'aquafina', 				N'',		0,	N'dry',			N'ml',	    90,	0),
('IGD0000003',	'WAH0000003',	N'7up', 					N'',		0,	N'dry',			N'ml',	    150,0),
('IGD0000004',	'WAH0000004',	N'water bottle (big)', 		N'',		0,	N'dry',			N'ml',	    90,	0),
('IGD0000005',	'WAH0000005',	N'Coffee Bean', 			N'',		0,	N'dry',			N'g',		0,	0),
('IGD0000006',	'WAH0000006',	N'Trung Nguyen coffee S', 	N'',		0,	N'dry',			N'g',	    45,	0),
('IGD0000007',	'WAH0000007',	N'Dalat milk', 				N'',		0,	N'dairy',		N'ml',		0,	0),
('IGD0000008',	'WAH0000008',	N'Dutch Lady milk', 		N'',		0,	N'dairy',		N'ml',		0,	0),
('IGD0000009',	'WAH0000009',	N'Condense milk', 			N'',		0,	N'dairy',		N'ml',		0,	0),
('IGD0000010',	'WAH0000010',	N'Soda', 					N'',		0,	N'dairy',		N'ml',	0,	0),
('IGD0000011',	'WAH0000011',	N'Whipping cream', 			N'',		0,	N'dairy',		N'ml',		0,	0),
('IGD0000012',	'WAH0000012',	N'Cream cheese', 			N'',		0,	N'dairy',		N'ml',		0,	0),
('IGD0000013',	'WAH0000013',	N'Milk Tea Powder', 		N'',		0,	N'dry',			N'g',		0,	0),
('IGD0000014',	'WAH0000014',	N'Matcha Tea Powder', 		N'',		0,	N'dry',			N'g',		0,	0),
('IGD0000015',	'WAH0000015',	N'Durian coffee Powder', 	N'',		0,	N'dry',			N'g',		0,	0),
('IGD0000016',	'WAH0000016',	N'Peach Tea Bag(cozy)', 	N'',		0,	N'dry',			N'g',		0,	0),
('IGD0000017',	'WAH0000017',	N'Strawberry Tea Bag(cozy)',N'',		0,	N'dry',			N'g',		0,	0),
('IGD0000018',	'WAH0000018',	N'Apple Tea bag(cozy)', 	N'',		0,	N'dry',			N'g',		0,	0),
('IGD0000019',	'WAH0000019',	N'Lemon Tea bag(cozy)', 	N'',		0,	N'dry',			N'g',		0,	0),
('IGD0000020',	'WAH0000020',	N'Cacao Powder', 			N'',		0,	N'dry',			N'g',	    0,	0),
('IGD0000021',	'WAH0000021',	N'sugar (bar)', 			N'',		0,	N'dry',			N'g',		0,	0),
('IGD0000022',	'WAH0000022',	N'Icing sugar', 			N'',		0,	N'dry',			N'g',		0,	0),
('IGD0000023',	'WAH0000023',	N'Peach Can', 				N'',		0,	N'dry',			N'g',		0,	0),
('IGD0000024',	'WAH0000024',	N'Mandarin orange Can', 	N'',		0,	N'dry',			N'g',		0,	0),
('IGD0000028',	'WAH0000028',	N'Mint leaf', 				N'',		0,	N'vegetable',	N'g',		0,	0),
('IGD0000029',	'WAH0000029',	N'Blue curacao syrup', 		N'',		0,	N'dry',			N'ml',	    0,	0),
('IGD0000030',	'WAH0000030',	N'Peach syrup', 			N'',		0,	N'dry',			N'ml',	    0,	0),
('IGD0000031',	'WAH0000031',	N'Ginger honey sauce', 		N'',		0,	N'dry',			N'g',	    0,	0),
('IGD0000032',	'WAH0000032',	N'Ketchup (bar)', 			N'',		0,	N'dry',			N'g',	    0,	0),
('IGD0000033',	'WAH0000033',	N'Chilli sauce (bar)',		N'',		0,	N'dry',			N'g',	    0,	0),
('IGD0000027',	'WAH0000027',	N'Lemon', 					N'',		2,	N'vegetable',	N'g',	    0,	0),
('IGD0000025',	'WAH0000025',	N'Yellow orange', 			N'',		2,	N'vegetable',	N'g',	    0,	0),
('IGD0000026',	'WAH0000026',	N'Green orange', 			N'',		2,	N'vegetable',	N'g',	    0,	0),
('IGD0000034',	'WAH0000034',	N'ice', 					N'',		3,	N'dry',			N'g',	    0,	0),
('IGD0000035',	'WAH0000035',	N'Plastic cup', 			N'',		3,	N'utilities',	N'pack',	0,	0),
('IGD0000036',	'WAH0000036',	N'Plastic cover', 			N'',		3,	N'utilities',	N'pack',	0,	0),
('IGD0000037',	'WAH0000037',	N'Paper cup', 				N'',		3,	N'utilities',	N'pack',	0,	0),
('IGD0000038',	'WAH0000038',	N'Black cover', 			N'',		3,	N'utilities',	N'pack',	0,	0),
('IGD0000039',	'WAH0000039',	N'Straw', 					N'',		3,	N'utilities',	N'pack',	0,	0),
('IGD0000040',	'WAH0000040',	N'Toilet paper', 			N'',		3,	N'utilities',	N'pack',	0,	0),
('IGD0000041',	'WAH0000041',	N'Napkin', 					N'',		3,	N'utilities',	N'pack',	0,	0),
('IGD0000042',	'WAH0000042',	N'Aroma', 					N'',		3,	N'utilities',	N'ml',	    0,	0),
('IGD0000043',	'WAH0000043',	N'Trash bag', 				N'',		3,	N'utilities',	N'pack',	0,	0),
('IGD0000044',	'WAH0000044',	N'Print paper', 			N'',		3,	N'utilities',	N'pack',	0,	0),
('IGD0000045',	'WAH0000045',	N'Bag T', 					N'',		3,	N'utilities',	N'pack',	0,	0),
('IGD0000046',	'WAH0000046',	N'Chocalate bar',			N'',		0,	N'dry',			N'g',		0,	0),
('IGD0000047',	'WAH0000047',	N'Other purchase',			N'',		3,	N'fee',		    N'time',    0,	0)
go



--	0:Beverage	2:Beer	3:Wine	6:Coffee	7:Cocktail		1:Food	4:Snack	 5:Other	
insert into Product
	([product_id], [name], [info], [price], [type], [deleted], [Discount], [std_stats])
values		-- đồ uống
('P000000030',	N'pepsi',					N'',		25,		0, 0, 0, 'Drink'),
('P000000031',	N'7up',						N'',		25,		0, 0, 0, 'Drink'),
('P000000032',	N'water',					N'',		25,		0, 0, 0, 'Drink'),
('P000000033',	N'black coffee',			N'',		30,		6, 0, 0, 'Drink'),
('P000000034',	N'coffee milk',				N'',		35,		6, 0, 0, 'Drink'),
('P000000035',	N'cream coffee',			N'',		40,		6, 0, 0, 'Drink'),
('P000000036',	N'americano',				N'',		40,		6, 0, 0, 'Drink'),
('P000000037',	N'durian coffee',			N'',		50,		6, 0, 0, 'Drink'),
('P000000038',	N'coffee latte',			N'',		50,		6, 0, 0, 'Drink'),
('P000000039',	N'cappucino',				N'',		50,		6, 0, 0, 'Drink'),
('P000000040',	N'orange coffee',			N'',		50,		6, 0, 0, 'Drink'),
('P000000041',	N'tiramisu coffee',			N'',		50,		6, 0, 0, 'Drink'),
('P000000042',	N'chocolate coffee',		N'',		60,		6, 0, 0, 'Drink'),
('P000000043',	N'caramel cofffee',			N'',		60,		6, 0, 0, 'Drink'),
('P000000044',	N'strawberry tea',			N'',		30,		0, 0, 0, 'Drink'),
('P000000045',	N'lemon tea',				N'',		30,		0, 0, 0, 'Drink'),
('P000000046',	N'apple tea',				N'',		30,		0, 0, 0, 'Drink'),
('P000000047',	N'milk tea',				N'',		40,		0, 0, 0, 'Drink'),
('P000000048',	N'peach tea',				N'',		50,		0, 0, 0, 'Drink'),
('P000000049',	N'matcha latte',			N'',		50,		0, 0, 0, 'Drink'),
('P000000050',	N'ginger honey latte',		N'',		50,		0, 0, 0, 'Drink'),
('P000000051',	N'hot choco',				N'',		60,		0, 0, 0, 'Drink'),
('P000000052',	N'ice choco',				N'',		60,		0, 0, 0, 'Drink'),
('P000000053',	N'orange juice (trái nhỏ)',	N'',		40,		0, 0, 0, 'Drink'),
('P000000054',	N'orange ade',				N'',		40,		0, 0, 0, 'Drink'),
('P000000055',	N'lemonade',				N'',		40,		0, 0, 0, 'Drink'),
('P000000056',	N'orange juice (trái lớn)',	N'',		40,		0, 0, 0, 'Drink'),
('P000000057',	N'orange juice (trái vừa)',	N'',		40,		0, 0, 0, 'Drink'),

('P000000058',	N'SACRED FIRE GOLDEN ALE',	N'',		40,		2, 0, 0, 'Drink'),
('P000000059',	N'PITILESS FOLLY PALE ALE',	N'',		40,		2, 0, 0, 'Drink'),
('P000000060',	N'KURTZ INSANE IPA',		N'',		40,		2, 0, 0, 'Drink'),
('P000000061',	N'PATIENT WILDERNESS WHEAT ALE',	N'',40,		2, 0, 0, 'Drink'),
('P000000062',	N'PRIMEVAL FOREST PILSNER',	N'',		40,		2, 0, 0, 'Drink'),
('P000000063',	N'Double IPA (Winter)',		N'',		50,		2, 0, 0, 'Drink'),
('P000000064',	N'Christmas Tripel IPA',	N'',		50,		2, 0, 0, 'Drink'),

('P000000065',	N'Bordeaux',				N'',		40,		3, 0, 0, 'Drink'),
('P000000066',	N'Champagne',				N'',		40,		3, 0, 0, 'Drink'),
('P000000067',	N'Chianti',					N'',		40,		3, 0, 0, 'Drink'),
('P000000068',	N'Rioja',					N'',		45,		3, 0, 0, 'Drink'),
('P000000069',	N'Priorat',					N'',		40,		3, 0, 0, 'Drink'),
('P000000070',	N'Port',					N'',		40,		3, 0, 0, 'Drink'),
('P000000071',	N'Meritage',				N'',		40,		3, 0, 0, 'Drink'),
('P000000072',	N'Côtes du Rhône',			N'',		40,		3, 0, 0, 'Drink'),
('P000000073',	N'Martinez',				N'',		45,		7, 0, 0, 'Drink'),
('P000000074',	N'Martini',					N'',		45,		7, 0, 0, 'Drink'),
('P000000075',	N'Mint Julep',				N'',		45,		7, 0, 0, 'Drink'),
('P000000076',	N'Last Word',				N'',		45,		7, 0, 0, 'Drink'),
('P000000077',	N'Jack Rose',				N'',		45,		7, 0, 0, 'Drink'),
('P000000078',	N'Bloody Mary',				N'',		50,		7, 0, 0, 'Drink'),
('P000000079',	N'Negroni',					N'',		50,		7, 0, 0, 'Drink'),
('P000000080',	N'Whiskey Sour',			N'',		50,		7, 0, 0, 'Drink')
go

insert into Product 
	([product_id], [name], [info], [price], [type], [deleted], [Discount], [std_stats])
values		-- thức ăn
('P000000001',	N'plain yogurt',			N'',		25,		1, 0, 0, 'Dessert'),
('P000000002',	N'choco fondue',			N'',		70,		1, 0, 0, 'Dessert'),
('P000000003',	N'choco cloud',				N'',		55,		1, 0, 0, 'Dessert'),
('P000000004',	N'custard bread tower',		N'',		70,		1, 0, 0, 'Dessert'),
('P000000005',	N'choco muffin',			N'',		25,		1, 0, 0, 'Dessert'),
('P000000006',	N'apple muffin',			N'',		25,		1, 0, 0, 'Dessert'),
('P000000007',	N'greentea muffin',			N'',		25,		1, 0, 0, 'Dessert'),
('P000000008',	N'banana cake',				N'',		25,		1, 0, 0, 'Dessert'),
('P000000009',	N'carrot cake',				N'',		25,		1, 0, 0, 'Dessert'),
('P000000010',	N'french fries',			N'',		35,		1, 0, 0, 'Starter'),
('P000000011',	N'french toast',			N'',		45,		1, 0, 0, 'Main'),
('P000000012',	N'tiramisu cake',			N'',		45,		1, 0, 0, 'Dessert'),
('P000000013',	N'cheese hotdog',			N'',		35,		1, 0, 0, 'Starter'),
('P000000014',	N'cereal & milk',			N'',		50,		1, 0, 0, 'Main'),
('P000000015',	N'honey butter bread',		N'',		70,		1, 0, 0, 'Main'),
('P000000016',	N'pumpkin soup',			N'',		35,		1, 0, 0, 'Starter'),
('P000000017',	N'chilli fries',			N'',		50,		1, 0, 0, 'Starter'),
('P000000018',	N'tortillas nachos',		N'',		50,		1, 0, 0, 'Main'),
('P000000019',	N'chicken melt',			N'',		50,		1, 0, 0, 'Main'),
('P000000020',	N'comma club',				N'',		55,		1, 0, 0, 'Main'),
('P000000021',	N'gourmet berger',			N'',		60,		1, 0, 0, 'Main'),
('P000000022',	N'spaghetti bolognese',		N'',		55,		1, 0, 0, 'Main'),
('P000000023',	N'spaghetti carbonara',		N'',		55,		1, 0, 0, 'Main'),
('P000000024',	N'noodle eggs omelette',	N'',		45,		1, 0, 0, 'Main'),
('P000000025',	N'chicken burrito',			N'',		60,		1, 0, 0, 'Main'),
('P000000026',	N'hawaiian pizza',			N'',		60,		1, 0, 0, 'Main'),
('P000000027',	N'comma pizza',				N'',		60,		1, 0, 0, 'Main'),
('P000000028',	N'chicken cajun salad',		N'',		55,		1, 0, 0, 'Main'),
('P000000029',	N'bibimbob',				N'',		60,		1, 0, 0, 'Main')	
go

insert into ProductDetails values
('PD00000001','P000000031',	'IGD0000002',	1,		N'chai'			),
('PD00000002','P000000032',	'IGD0000003',	1,		N'chai'			),
('PD00000003','P000000033',	'IGD0000006',	50,		N'ml'			),
('PD00000004','P000000033',	'IGD0000021',	1,		N'lần syrup'	),
('PD00000005','P000000034',	'IGD0000006',	40,		N'ml'			),
('PD00000006','P000000034',	'IGD0000009',	20,		N'ml'			),
('PD00000007','P000000035',	'IGD0000006',	40,		N'ml'			),
('PD00000008','P000000035',	'IGD0000007',	1,		N'milkF'		),
('PD00000009','P000000035',	'IGD0000021',	2,		N'lần syrup'	),
('PD00000010','P000000035',	'IGD0000022',	10,		N'gram'			),
('PD00000011','P000000036',	'IGD0000005',	1,		N'shot'			),
('PD00000012','P000000036',	'IGD0000021',	1,		N'lần syrup'	),
('PD00000013','P000000037',	'IGD0000007',	1,		N'Milk(1Cup)'	),
('PD00000014','P000000037',	'IGD0000009',	10,		N'ml'			),
('PD00000015','P000000037',	'IGD0000015',	1,		N'gói'			),
('PD00000016','P000000038',	'IGD0000005',	1,		N'shot'			),
('PD00000017','P000000038',	'IGD0000007',	1,		N'Milk(1Cup)'	),
('PD00000018','P000000038',	'IGD0000021',	2,		N'lần dường'	),
('PD00000019','P000000039',	'IGD0000005',	1,		N'shot'		),
('PD00000020','P000000039',	'IGD0000007',	1,		N'Milk(1Cup)'	),
('PD00000021','P000000039',	'IGD0000021',	2,		N'lần syrup'	),
('PD00000022','P000000042',	'IGD0000005',	2,		N'shot'			),
('PD00000023','P000000042',	'IGD0000007',	1,		N'Milk(1Cup)'	),
('PD00000024','P000000042',	'IGD0000021',	3,		N'lần syrup'	),
('PD00000028','P000000042',	'IGD0000007',	1,		N'nl choco'		),
('PD00000029','P000000042',	'IGD0000021',	1,		N'nl choco'		),
('PD00000030','P000000042',	'IGD0000046',	1,		N'nl choco'		),
('PD00000031','P000000043',	'IGD0000005',	1,		N'shot'			),
('PD00000088','P000000043',	'IGD0000007',	1,		N'Milk(1Cup)'	),
('PD00000032','P000000043',	'IGD0000021',	3,		N'lần syrup'	),
('PD00000033','P000000043',	'IGD0000021',	1,		N'nl caramel'	),
('PD00000027','P000000040',	'IGD0000005',	1,		N'shot'			),
('PD00000025','P000000040',	'IGD0000007',	1,		N'Milk(1Cup)'	),
('PD00000026','P000000040',	'IGD0000021',	2,		N'lần syrup'	),
('PD00000034','P000000040',	'IGD0000024',	20,		N'gram'			),
('PD00000035','P000000040',	'IGD0000007',	0.5,	N'milkF'		),
('PD00000036','P000000041',	'IGD0000005',	1,		N'shot'		),
('PD00000037','P000000041',	'IGD0000007',	1,		N'Milk(1Cup)'	),
('PD00000038','P000000041',	'IGD0000020',	10,		N'gram'			),
('PD00000039','P000000041',	'IGD0000021',	2,		N'lần syrup'	),
('PD00000040','P000000041',	'IGD0000022',	5,		N'gram'		),
('PD00000041','P000000041',	'IGD0000007',	0.5,	N'milkF'		),
('PD00000042','P000000041',	'IGD0000011',	1,		N'nl tiramisu'	),
('PD00000043','P000000041',	'IGD0000012',	1,		N'nl tiramisu'	),
('PD00000044','P000000041',	'IGD0000021',	1,		N'nl tiramisu'	),
('PD00000045','P000000044',	'IGD0000017',	1,		N'túi lọc'		),
('PD00000046','P000000044',	'IGD0000021',	1,		N'lần syrup'	),
('PD00000047','P000000045',	'IGD0000019',	1,		N'túi lọc'		),
('PD00000048','P000000045',	'IGD0000021',	1,		N'lần syrup'	),
('PD00000049','P000000046',	'IGD0000018',	1,		N'túi lọc'		),
('PD00000050','P000000046',	'IGD0000021',	1,		N'lần syrup'	),
('PD00000051','P000000047',	'IGD0000009',	15,		N'ml'			),
('PD00000052','P000000047',	'IGD0000013',	1.5,	N'gói'			),
('PD00000053','P000000048',	'IGD0000016',	1,		N'gói'			),
('PD00000054','P000000048',	'IGD0000021',	4,		N'lần syrup'	),
('PD00000055','P000000048',	'IGD0000023',	3,		N'miếng'		),
('PD00000056','P000000048',	'IGD0000030',	4,		N'lần syrup'	),
('PD00000057','P000000049',	'IGD0000007',	1,		N'Milk(1Cup)'	),
('PD00000058','P000000049',	'IGD0000014',	1.5,	N'gói'			),
('PD00000059','P000000050',	'IGD0000007',	1,		N'Milk(1Cup)'	),
('PD00000060','P000000050',	'IGD0000031',	20,		N'ml'			),
('PD00000061','P000000051',	'IGD0000021',	1,		N'lần syrup'	),
('PD00000062','P000000051',	'IGD0000007',	1,		N'nl choco'		),
('PD00000063','P000000051',	'IGD0000021',	1,		N'nl choco'		),
('PD00000064','P000000051',	'IGD0000046',	1,		N'nl choco'		),
('PD00000065','P000000052',	'IGD0000021',	1,		N'lần syrup'	),
('PD00000066','P000000052',	'IGD0000007',	1,		N'nl choco'		),
('PD00000067','P000000052',	'IGD0000021',	1,		N'nl choco'		),
('PD00000068','P000000052',	'IGD0000046',	1,		N'nl choco'		),
('PD00000069','P000000057',	'IGD0000026',	1,		N'trái vừa'		),
('PD00000070','P000000053',	'IGD0000026',	2,		N'trái nhỏ'		),
('PD00000071','P000000056',	'IGD0000026',	0.5,	N'trái lớn'		),
('PD00000072','P000000054',	'IGD0000026',	1,		N'trái'		),
('PD00000073','P000000054',	'IGD0000003',	100,	N'ml'			),
('PD00000074','P000000054',	'IGD0000021',	1,		N'lần syrup'	),
('PD00000075','P000000055',	'IGD0000010',	100,	N'ml'			),
('PD00000076','P000000055',	'IGD0000021',	6,		N'lần syrup'	),
('PD00000077','P000000055',	'IGD0000029',	4,		N'lần syrup'	),
('PD00000078','P000000055',	'IGD0000027',	1,		N'trái'			),
('PD00000079','P000000030',	'IGD0000001',	1,		N'chai'			)
go

insert into SalaryNote
	([sn_id], [emp_id], [salary_value], [work_hour], [for_month], [for_year], [is_paid])
values
('SAN0000001', 'EMP0000001', 300, 30, 11, 2017, 0),
('SAN0000002', 'EMP0000002', 240, 20, 11, 2017, 0),
('SAN0000003', 'EMP0000003', 110, 10, 11, 2017, 0),
('SAN0000004', 'EMP0000004', 300, 30, 11, 2017, 0),
('SAN0000005', 'EMP0000005', 240, 20, 11, 2017, 0),
('SAN0000006', 'EMP0000006', 110, 10, 11, 2017, 0),
('SAN0000007', 'EMP0000001', 300, 30, 10, 2017, 1),
('SAN0000008', 'EMP0000002', 240, 20, 10, 2017, 1),
('SAN0000009', 'EMP0000003', 110, 10, 10, 2017, 1),
('SAN0000010', 'EMP0000004', 300, 30, 10, 2017, 1),
('SAN0000011', 'EMP0000005', 240, 20, 10, 2017, 1),
('SAN0000012', 'EMP0000006', 110, 10, 10, 2017, 1),
('SAN0000013', 'EMP0000001', 300, 30, 9, 2017, 1),
('SAN0000014', 'EMP0000002', 240, 20, 9, 2017, 1),
('SAN0000015', 'EMP0000003', 110, 10, 9, 2017, 1),
('SAN0000016', 'EMP0000004', 300, 30, 9, 2017, 1),
('SAN0000017', 'EMP0000005', 240, 20, 9, 2017, 1),
('SAN0000018', 'EMP0000006', 110, 10, 9, 2017, 1)


insert into WorkingHistory 
	([wh_id], [result_salary], [emp_id], [startTime], [endTime])
values		-- thức ăn
('WOH0000001', 'SAN0000001',	'EMP0000001', '2017-11-01 08:0:0', '2017-11-01 12:0:0'),
('WOH0000002', 'SAN0000001',	'EMP0000001', '2017-11-02 08:0:0', '2017-11-02 12:0:0'),
('WOH0000003', 'SAN0000001',	'EMP0000001', '2017-11-03 08:0:0', '2017-11-03 12:0:0'),
('WOH0000004', 'SAN0000001',	'EMP0000001', '2017-11-06 08:0:0', '2017-11-06 12:0:0'),
('WOH0000005', 'SAN0000001',	'EMP0000001', '2017-11-10 08:0:0', '2017-11-10 12:0:0'),
('WOH0000006', 'SAN0000001',	'EMP0000001', '2017-11-11 12:0:0', '2017-11-11 22:0:0'),
('WOH0000007', 'SAN0000002',	'EMP0000002', '2017-11-03 12:0:0', '2017-11-03 22:0:0'),
('WOH0000008', 'SAN0000002',	'EMP0000002', '2017-11-04 08:0:0', '2017-11-04 18:0:0'),
('WOH0000009', 'SAN0000003',	'EMP0000003', '2017-11-01 08:0:0', '2017-11-01 12:0:0'),
('WOH0000010', 'SAN0000003',	'EMP0000003', '2017-11-04 08:0:0', '2017-11-04 12:0:0'),
('WOH0000011', 'SAN0000003',	'EMP0000003', '2017-11-04 08:0:0', '2017-11-04 10:0:0'),
('WOH0000012', 'SAN0000004',	'EMP0000004', '2017-11-01 08:0:0', '2017-11-01 12:0:0'),
('WOH0000013', 'SAN0000004',	'EMP0000004', '2017-11-02 08:0:0', '2017-11-02 12:0:0'),
('WOH0000014', 'SAN0000004',	'EMP0000004', '2017-11-03 08:0:0', '2017-11-03 12:0:0'),
('WOH0000015', 'SAN0000004',	'EMP0000004', '2017-11-06 08:0:0', '2017-11-06 12:0:0'),
('WOH0000016', 'SAN0000004',	'EMP0000004', '2017-11-10 08:0:0', '2017-11-10 12:0:0'),
('WOH0000017', 'SAN0000004',	'EMP0000004', '2017-11-11 12:0:0', '2017-11-11 22:0:0'),
('WOH0000018', 'SAN0000005',	'EMP0000005', '2017-11-03 12:0:0', '2017-11-03 22:0:0'),
('WOH0000019', 'SAN0000005',	'EMP0000005', '2017-11-04 08:0:0', '2017-11-04 18:0:0'),
('WOH0000020', 'SAN0000006',	'EMP0000006', '2017-11-01 08:0:0', '2017-11-01 12:0:0'),
('WOH0000021', 'SAN0000006',	'EMP0000006', '2017-11-04 08:0:0', '2017-11-04 12:0:0'),
('WOH0000022', 'SAN0000006',	'EMP0000006', '2017-11-04 08:0:0', '2017-11-04 10:0:0'),
('WOH0000023', 'SAN0000007',	'EMP0000001', '2017-10-01 08:0:0', '2017-10-01 12:0:0'),
('WOH0000024', 'SAN0000007',	'EMP0000001', '2017-10-02 08:0:0', '2017-10-02 12:0:0'),
('WOH0000025', 'SAN0000007',	'EMP0000001', '2017-10-03 08:0:0', '2017-10-03 12:0:0'),
('WOH0000026', 'SAN0000007',	'EMP0000001', '2017-10-06 08:0:0', '2017-10-06 12:0:0'),
('WOH0000027', 'SAN0000007',	'EMP0000001', '2017-10-10 08:0:0', '2017-10-10 12:0:0'),
('WOH0000028', 'SAN0000007',	'EMP0000001', '2017-10-11 12:0:0', '2017-10-11 22:0:0'),
('WOH0000029', 'SAN0000008',	'EMP0000002', '2017-10-03 12:0:0', '2017-10-03 22:0:0'),
('WOH0000030', 'SAN0000008',	'EMP0000002', '2017-10-04 08:0:0', '2017-10-04 18:0:0'),
('WOH0000031', 'SAN0000009',	'EMP0000003', '2017-10-01 08:0:0', '2017-10-01 12:0:0'),
('WOH0000032', 'SAN0000009',	'EMP0000003', '2017-10-04 08:0:0', '2017-10-04 12:0:0'),
('WOH0000033', 'SAN0000009',	'EMP0000003', '2017-10-04 08:0:0', '2017-10-04 10:0:0'),
('WOH0000034', 'SAN0000010',	'EMP0000004', '2017-10-01 08:0:0', '2017-10-01 12:0:0'),
('WOH0000035', 'SAN0000010',	'EMP0000004', '2017-10-02 08:0:0', '2017-10-02 12:0:0'),
('WOH0000036', 'SAN0000010',	'EMP0000004', '2017-10-03 08:0:0', '2017-10-03 12:0:0'),
('WOH0000037', 'SAN0000010',	'EMP0000004', '2017-10-06 08:0:0', '2017-10-06 12:0:0'),
('WOH0000038', 'SAN0000010',	'EMP0000004', '2017-10-10 08:0:0', '2017-10-10 12:0:0'),
('WOH0000039', 'SAN0000010',	'EMP0000004', '2017-10-11 12:0:0', '2017-10-11 22:0:0'),
('WOH0000040', 'SAN0000011',	'EMP0000005', '2017-10-03 12:0:0', '2017-10-03 22:0:0'),
('WOH0000041', 'SAN0000011',	'EMP0000005', '2017-10-04 08:0:0', '2017-10-04 18:0:0'),
('WOH0000042', 'SAN0000012',	'EMP0000006', '2017-10-01 08:0:0', '2017-10-01 12:0:0'),
('WOH0000043', 'SAN0000012',	'EMP0000006', '2017-10-04 08:0:0', '2017-10-04 12:0:0'),
('WOH0000044', 'SAN0000012',	'EMP0000006', '2017-10-04 08:0:0', '2017-10-04 10:0:0'),
('WOH0000045', 'SAN0000013',	'EMP0000001', '2017-09-01 08:0:0', '2017-09-01 12:0:0'),
('WOH0000046', 'SAN0000013',	'EMP0000001', '2017-09-02 08:0:0', '2017-09-02 12:0:0'),
('WOH0000047', 'SAN0000013',	'EMP0000001', '2017-09-03 08:0:0', '2017-09-03 12:0:0'),
('WOH0000048', 'SAN0000013',	'EMP0000001', '2017-09-06 08:0:0', '2017-09-06 12:0:0'),
('WOH0000049', 'SAN0000013',	'EMP0000001', '2017-09-10 08:0:0', '2017-09-10 12:0:0'),
('WOH0000050', 'SAN0000013',	'EMP0000001', '2017-09-11 12:0:0', '2017-09-11 22:0:0'),
('WOH0000051', 'SAN0000014',	'EMP0000002', '2017-09-03 12:0:0', '2017-09-03 22:0:0'),
('WOH0000052', 'SAN0000014',	'EMP0000002', '2017-09-04 08:0:0', '2017-09-04 18:0:0'),
('WOH0000053', 'SAN0000015',	'EMP0000003', '2017-09-01 08:0:0', '2017-09-01 12:0:0'),
('WOH0000054', 'SAN0000015',	'EMP0000003', '2017-09-04 08:0:0', '2017-09-04 12:0:0'),
('WOH0000055', 'SAN0000015',	'EMP0000003', '2017-09-04 08:0:0', '2017-09-04 10:0:0'),
('WOH0000056', 'SAN0000016',	'EMP0000004', '2017-09-01 08:0:0', '2017-09-01 12:0:0'),
('WOH0000057', 'SAN0000016',	'EMP0000004', '2017-09-02 08:0:0', '2017-09-02 12:0:0'),
('WOH0000058', 'SAN0000016',	'EMP0000004', '2017-09-03 08:0:0', '2017-09-03 12:0:0'),
('WOH0000059', 'SAN0000016',	'EMP0000004', '2017-09-06 08:0:0', '2017-09-06 12:0:0'),
('WOH0000060', 'SAN0000016',	'EMP0000004', '2017-09-10 08:0:0', '2017-09-10 12:0:0'),
('WOH0000061', 'SAN0000016',	'EMP0000004', '2017-09-11 12:0:0', '2017-09-11 22:0:0'),
('WOH0000062', 'SAN0000017',	'EMP0000005', '2017-09-03 12:0:0', '2017-09-03 22:0:0'),
('WOH0000063', 'SAN0000017',	'EMP0000005', '2017-09-04 08:0:0', '2017-09-04 18:0:0'),
('WOH0000064', 'SAN0000018',	'EMP0000006', '2017-09-01 08:0:0', '2017-09-01 12:0:0'),
('WOH0000065', 'SAN0000018',	'EMP0000006', '2017-09-04 08:0:0', '2017-09-04 12:0:0'),
('WOH0000066', 'SAN0000018',	'EMP0000006', '2017-09-04 08:0:0', '2017-09-04 10:0:0')


insert into [OrderNote]
	([ordernote_id], [cus_id], [emp_id], [ordertable], [ordertime], [total_price], [customer_pay], [pay_back], [pay_method])
values
('ORD0000001', 'CUS0000001', 'EMP0000001', 1, '2017-10-08 17:57:28.533', 120, 120, 0	,0),
('ORD0000002', 'CUS0000001', 'EMP0000001', 2, '2017-10-10 19:50:28.533', 260, 260, 0	,0),
('ORD0000003', 'CUS0000002', 'EMP0000004', 3, '2017-10-11 10:00:28.533', 235, 235, 0	,0),
('ORD0000004', 'CUS0000001', 'EMP0000001', 1, '2017-10-12 13:20:28.533', 590, 590, 0	,0),
('ORD0000005', 'CUS0000001', 'EMP0000001', 2, '2017-10-12 17:00:28.533', 305, 305, 0	,0),
('ORD0000006', 'CUS0000001', 'EMP0000002', 3, '2017-10-12 14:30:28.533', 230, 230, 0	,0),
('ORD0000007', 'CUS0000001', 'EMP0000001', 1, '2017-10-12 20:00:28.533', 120, 200, 80	,0),
('ORD0000008', 'CUS0000001', 'EMP0000002', 4, '2017-10-12 20:10:28.533', 555, 555, 0	,0),
('ORD0000009', 'CUS0000002', 'EMP0000001', 2, '2017-10-12 20:11:28.533', 250, 250, 0	,0),
('ORD0000010', 'CUS0000003', 'EMP0000004', 1, '2017-10-13 08:20:28.533', 160, 160, 0	,0),
('ORD0000011', 'CUS0000001', 'EMP0000005', 2, '2017-10-13 11:25:28.533', 360, 360, 0	,0),
('ORD0000012', 'CUS0000001', 'EMP0000004', 3, '2017-10-13 11:30:28.533', 390, 390, 0	,0),
('ORD0000013', 'CUS0000001', 'EMP0000004', 4, '2017-10-13 11:35:28.533', 300, 300, 0	,0),
('ORD0000014', 'CUS0000001', 'EMP0000004', 1, '2017-10-13 12:00:28.533', 480, 500, 20	,0),
('ORD0000015', 'CUS0000001', 'EMP0000005', 8, '2017-10-13 12:05:28.533', 365, 365, 0	,0),
('ORD0000016', 'CUS0000001', 'EMP0000005', 8, '2017-10-13 13:15:28.533', 310, 310, 0	,0),
('ORD0000017', 'CUS0000001', 'EMP0000002', 8, '2017-10-14 10:00:28.533', 260, 260, 0	,0),
('ORD0000018', 'CUS0000001', 'EMP0000002', 8, '2017-10-14 11:20:28.533', 310, 310, 0	,0)



insert into [OrderNoteDetails]
	([ordernote_id], [product_id], [quan])
values
('ORD0000001', 'P000000044', 1),
('ORD0000001', 'P000000047', 1),
('ORD0000001', 'P000000049', 1),
('ORD0000002', 'P000000047', 2),
('ORD0000002', 'P000000050', 1),
('ORD0000002', 'P000000001', 3),
('ORD0000002', 'P000000044', 1),
('ORD0000002', 'P000000030', 1),
('ORD0000003', 'P000000001', 1),
('ORD0000003', 'P000000012', 1),
('ORD0000003', 'P000000025', 2),
('ORD0000003', 'P000000056', 1),
('ORD0000003', 'P000000011', 1),
('ORD0000004', 'P000000044', 1),
('ORD0000004', 'P000000014', 1),
('ORD0000004', 'P000000015', 2),
('ORD0000004', 'P000000010', 3),
('ORD0000004', 'P000000029', 1),
('ORD0000004', 'P000000011', 1),
('ORD0000004', 'P000000054', 4),
('ORD0000005', 'P000000017', 1),
('ORD0000005', 'P000000020', 2),
('ORD0000005', 'P000000022', 1),
('ORD0000005', 'P000000011', 2),
('ORD0000006', 'P000000030', 3),
('ORD0000006', 'P000000047', 1),
('ORD0000006', 'P000000031', 1),
('ORD0000006', 'P000000010', 1),
('ORD0000006', 'P000000020', 1),
('ORD0000007', 'P000000044', 1),
('ORD0000007', 'P000000047', 1),
('ORD0000007', 'P000000049', 1),
('ORD0000008', 'P000000014', 1),
('ORD0000008', 'P000000010', 2),
('ORD0000008', 'P000000050', 2),
('ORD0000008', 'P000000011', 1),
('ORD0000008', 'P000000012', 3),
('ORD0000008', 'P000000020', 1),
('ORD0000008', 'P000000019', 2),
('ORD0000009', 'P000000001', 3),
('ORD0000009', 'P000000009', 2),
('ORD0000009', 'P000000011', 1),
('ORD0000009', 'P000000045', 1),
('ORD0000009', 'P000000049', 1),
('ORD0000010', 'P000000034', 3),
('ORD0000010', 'P000000033', 2),
('ORD0000011', 'P000000010', 1),
('ORD0000011', 'P000000011', 2),
('ORD0000011', 'P000000033', 2),
('ORD0000011', 'P000000030', 2),
('ORD0000011', 'P000000020', 1),
('ORD0000011', 'P000000002', 1),
('ORD0000012', 'P000000040', 1),
('ORD0000012', 'P000000001', 1),
('ORD0000012', 'P000000002', 2),
('ORD0000012', 'P000000010', 2),
('ORD0000012', 'P000000034', 3),
('ORD0000013', 'P000000044', 1),
('ORD0000013', 'P000000047', 2),
('ORD0000013', 'P000000049', 1),
('ORD0000013', 'P000000050', 1),
('ORD0000013', 'P000000011', 2),
('ORD0000014', 'P000000010', 2),
('ORD0000014', 'P000000030', 3),
('ORD0000014', 'P000000011', 1),
('ORD0000014', 'P000000033', 1),
('ORD0000014', 'P000000020', 2),
('ORD0000014', 'P000000021', 1),
('ORD0000014', 'P000000029', 1),
('ORD0000015', 'P000000019', 2),
('ORD0000015', 'P000000020', 1),
('ORD0000015', 'P000000010', 1),
('ORD0000015', 'P000000055', 4),
('ORD0000016', 'P000000040', 2),
('ORD0000016', 'P000000047', 1),
('ORD0000016', 'P000000013', 1),
('ORD0000016', 'P000000014', 2),
('ORD0000016', 'P000000010', 1),
('ORD0000017', 'P000000048', 2),
('ORD0000017', 'P000000011', 1),
('ORD0000017', 'P000000020', 1),
('ORD0000017', 'P000000029', 1),
('ORD0000018', 'P000000013', 2),
('ORD0000018', 'P000000047', 2),
('ORD0000018', 'P000000049', 1),
('ORD0000018', 'P000000050', 1),
('ORD0000018', 'P000000021', 1)


insert into [ReceiptNote]
	([rn_id], [emp_id], [inday], [total_amount])
values
('RN00000001', 'EMP0000001', '2017-10-08 17:57:28.533', 200),
('RN00000002', 'EMP0000002', '2017-10-08 17:57:28.533', 1200),
('RN00000003', 'EMP0000001', '2017-10-09 17:57:28.533', 400),
('RN00000004', 'EMP0000002', '2017-10-09 17:57:28.533', 800),
('RN00000005', 'EMP0000002', '2017-10-09 17:57:28.533', 100),
('RN00000006', 'EMP0000003', '2017-10-10 17:57:28.533', 2000),
('RN00000007', 'EMP0000004', '2017-10-12 17:57:28.533', 700),
('RN00000008', 'EMP0000005', '2017-10-13 17:57:28.533', 600),
('RN00000009', 'EMP0000003', '2017-10-16 17:57:28.533', 120),
('RN00000010', 'EMP0000003', '2017-10-20 17:57:28.533', 220),
('RN00000011', 'EMP0000002', '2017-11-08 17:57:28.533', 500),
('RN00000012', 'EMP0000002', '2017-11-09 17:57:28.533', 600),
('RN00000013', 'EMP0000003', '2017-11-10 17:57:28.533', 1100),
('RN00000014', 'EMP0000001', '2017-11-10 17:57:28.533', 3000),
('RN00000015', 'EMP0000001', '2017-11-14 17:57:28.533', 200),
('RN00000016', 'EMP0000001', '2017-11-15 17:57:28.533', 200),
('RN00000017', 'EMP0000001', '2017-11-15 17:57:28.533', 120),
('RN00000018', 'EMP0000001', '2017-11-15 17:57:28.533', 2500),
('RN00000019', 'EMP0000001', '2017-11-16 17:57:28.533', 100),
('RN00000020', 'EMP0000001', '2017-11-16 17:57:28.533', 500),
('RN00000021', 'EMP0000001', '2017-09-01 17:57:28.533', 400),
('RN00000022', 'EMP0000001', '2017-09-05 17:57:28.533', 100),
('RN00000023', 'EMP0000001', '2017-09-06 17:57:28.533', 150),
('RN00000024', 'EMP0000001', '2017-09-06 17:57:28.533', 220),
('RN00000025', 'EMP0000001', '2017-09-09 17:57:28.533', 260)

insert into [ReceiptNoteDetails]
	([rn_id], [igd_id], [quan], [item_price], [note])
values
('RN00000001', 'IGD0000001', 2, 100, ''),
('RN00000002', 'IGD0000047', 1, 1000, 'Tien nuoc'),
('RN00000002', 'IGD0000009', 4, 25, ''),
('RN00000002', 'IGD0000008', 2, 50, ''),
('RN00000003', 'IGD0000025', 8, 25, ''),
('RN00000003', 'IGD0000027', 10, 20, ''),
('RN00000004', 'IGD0000020', 2, 100, ''),
('RN00000004', 'IGD0000035', 4, 25, ''),
('RN00000004', 'IGD0000037', 5, 20, ''),
('RN00000004', 'IGD0000046', 8, 50, ''),
('RN00000005', 'IGD0000012', 2, 50, ''),
('RN00000006', 'IGD0000047', 1, 1800, 'Tien dien, tien rua may lanh'),
('RN00000006', 'IGD0000033', 5, 20, ''),
('RN00000006', 'IGD0000039', 2, 20, ''),
('RN00000006', 'IGD0000021', 3, 20, ''),
('RN00000007', 'IGD0000044', 60, 5, ''),
('RN00000007', 'IGD0000011', 8, 50, ''),
('RN00000008', 'IGD0000028', 10, 5, ''),
('RN00000008', 'IGD0000031', 5, 40, ''),
('RN00000008', 'IGD0000015', 3, 50, ''),
('RN00000008', 'IGD0000012', 4, 50, ''),
('RN00000009', 'IGD0000034', 1, 20, ''),
('RN00000009', 'IGD0000002', 1, 100, ''),
('RN00000010', 'IGD0000003', 2, 100, ''),
('RN00000010', 'IGD0000045', 1, 20, ''),
('RN00000011', 'IGD0000040', 2, 50, ''),
('RN00000011', 'IGD0000024', 5, 40, ''),
('RN00000011', 'IGD0000042', 10, 20, ''),
('RN00000012', 'IGD0000008', 6, 50, ''),
('RN00000012', 'IGD0000007', 6, 50, ''),
('RN00000013', 'IGD0000047', 1, 1100, 'Tien gas'),
('RN00000014', 'IGD0000047', 1, 3000, 'Mua bep gas, Mua lo vi song'),
('RN00000015', 'IGD0000005', 2, 100, ''),
('RN00000016', 'IGD0000003', 1, 100, ''),
('RN00000016', 'IGD0000006', 1, 100, ''),
('RN00000017', 'IGD0000030', 2, 50, ''),
('RN00000017', 'IGD0000028', 1, 10, ''),
('RN00000018', 'IGD0000047', 1, 2000, 'Tien gas'),
('RN00000018', 'IGD0000013', 2, 100, ''),
('RN00000018', 'IGD0000015', 1, 100, ''),
('RN00000018', 'IGD0000014', 2, 100, ''),
('RN00000019', 'IGD0000010', 1, 100, ''),
('RN00000020', 'IGD0000008', 5, 30, ''),
('RN00000020', 'IGD0000011', 7, 50, ''),
('RN00000021', 'IGD0000020', 2, 100, ''),
('RN00000021', 'IGD0000023', 4, 50, ''),
('RN00000022', 'IGD0000023', 2, 50, ''),
('RN00000023', 'IGD0000030', 3, 50, ''),
('RN00000024', 'IGD0000019', 10, 22, ''),
('RN00000025', 'IGD0000002', 2, 100, ''),
('RN00000025', 'IGD0000033', 3, 20, '')


--SET IDENTITY_INSERT [Table] ON
--SET IDENTITY_INSERT [Chair] ON
--SET IDENTITY_INSERT [OrderTemp] ON
--SET IDENTITY_INSERT [OrderDetailsTemp] ON

insert into [Table]
	([table_number], [chair_amount], [pos_X], [pos_Y], [is_Locked], [is_Ordered], [is_Pinned])
values
(1, 6, 200, 200, 0, 1, 1),
(2, 4, 100, 100, 0, 1, 1)


insert into [Chair]
	([chair_number], [table_owned])
values
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(1, 2),
(2, 2),
(3, 2),
( 4, 2)

insert into [OrderTemp]
	( [cus_id], [emp_id], [table_owned], [ordertime], [total_price], [customer_pay], [pay_back])
values
( 'CUS0000001', 'EMP0000001', 1, '2017-10-08 17:57:28.533', 1140, 1200, 60),
( 'CUS0000001', 'EMP0000001', 2, '2017-10-08 20:00:45.533', 550, 600, 50)


insert into [OrderDetailsTemp]
	([ordertemp_id], [product_id], [chair_id], [SelectedStats], [note], [quan])
values
('1', 'P000000030', 1, 'Drink',     ''              , 1),
('1', 'P000000030', 1, 'Drink',     'more ice'      , 2),
('1', 'P000000030', 2, 'Drink',     ''              , 1),
('1', 'P000000001', 2, 'Dessert',   ''              , 1),
('1', 'P000000002', 2, 'Dessert',   ''              , 3),
('1', 'P000000003', 2, 'Main',		''              , 2),
('1', 'P000000003', 3, 'Dessert',   'no hanigue'    , 2),
('1', 'P000000003', 3, 'Starter',   ''              , 2),
('1', 'P000000020', 3, 'Main',		''              , 1),
('1', 'P000000075', 3, 'Drink',		''              , 1),
('1', 'P000000001', 4, 'Dessert',   ''              , 1),
('1', 'P000000032', 4, 'Drink',		'lavie not aqua', 3),
('1', 'P000000061', 4, 'Drink',		''              , 1),
('1', 'P000000021', 5, 'Main',		''              , 1),
('1', 'P000000020', 5, 'Main',		'no peper'      , 1),
('1', 'P000000001', 5, 'Dessert',   ''              , 1),
('1', 'P000000040', 5, 'Drink',		''              , 1),
('1', 'P000000068', 6, 'Drink',		''              , 2),


('2', 'P000000001', 7, 'Dessert',   ''              , 1),
('2', 'P000000001', 7, 'Starter',   ''              , 1),
('2', 'P000000045', 7, 'Drink',     'less sugar'    , 1),
('2', 'P000000044', 8, 'Drink',     ''              , 1),
('2', 'P000000019', 8, 'Main',		''              , 1),
('2', 'P000000019', 8, 'Main',		'more salad'    , 1),
('2', 'P000000022', 9, 'Main',		''              , 2),
('2', 'P000000029', 10, 'Main',		''              , 1),
('2', 'P000000040', 10, 'Drink',    ''              , 1),
('2', 'P000000005', 10, 'Dessert',  ''              , 2),
('2', 'P000000004', 10, 'Dessert',  ''              , 1)





select * from AdminRes
go
select *from ReceiptNote
go
select *from ReceiptNoteDetails
go
select * from Employee
go
select * from Customer
go
select * from Ingredient
go
select * from WareHouse
go 
select * from Product
go
select *  from ProductDetails
go
 
select * from SalaryNote
select * from WorkingHistory

select * from OrderNote
select * from OrderNoteDetails

select * from [Table]
select * from [Chair]
select * from [OrderTemp]
select * from [OrderDetailsTemp]


--delete [OrderNoteDetails]
--delete [OrderNote]

--delete [OrderDetailsTemp]
--delete [Chair]
--delete [OrderTemp]
--delete [Table]

--drop table [OrderDetailsTemp]
--drop table [Chair]
--drop table [OrderTemp]
--drop table [Table]

--delete [ProductDetails]
--delete [Product]