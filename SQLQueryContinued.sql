use CookBookDB

create table Ingredients(
	Id int identity(1,1) primary key,
	Name nvarchar(50) not null,
	Weight decimal(18,2) not null,
	KcalPer100g decimal(18,2) not null,
	PricePer100g decimal(18,2) not null,
	Type nvarchar(50) not null
);

insert into Ingredients(Name, Weight, KcalPer100g, PricePer100g, Type)
values
('potato', 500, 70, 0.2, 'vegetable'),
('peach', 300, 40, 0.3, 'fruit'),
('lemon', 200, 20, 0.5, 'fruit')

select * from Ingredients where Name like '%t%'

update Ingredients 
set PricePer100g = 1.5
where Id = 2

delete from Ingredients

create procedure InsertIngredientProcedure
	(@Name nvarchar(5), @Weight decimal(18,2), @KcalPer100g decimal(18,2),
	@PricePer100g decimal(18,2), @Type nvarchar(50))
as
begin
	insert into Ingredients (Name, Weight, KcalPer100g, PricePer100g, Type)
	values (@Name, @Weight, @KcalPer100g, @PricePer100g, @Type)
end

exec InsertIngredientProcedure 'milk', 1000, 50, 0.3, 'liquid'

insert into Ingredients (Name, Weight, KcalPer100g, PricePer100g, Type)
values (@Name, @Weight, @KcalPer100g, @PricePer100g, @Type)

select * from Ingredients

delete from Ingredients
where Id between 12 AND 13 

