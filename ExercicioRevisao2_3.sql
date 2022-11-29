Create DataBase ExercicioRevisao2_3
Go
Use ExercicioRevisao2_3
Go

Create Table Cliente  (
codigo			int					not null,
nome			varchar(50)			not null,
endereco		varchar(80)			not null,
telefone		char(8)				not null,
telefoneC		char(8)					null
Primary key (codigo)
)
Go

Create Table TipoMercadoria (
codigo			int				not null,
nome			varchar(30)		not null
Primary Key (codigo)
)
Go

Create Table Compra (
notafiscal			int				not null,
valor				decimal(5,2)	not null,
cliente_codigo		int				not null
Primary Key (notafiscal, valor)
Foreign key (cliente_codigo)
	References Cliente (codigo)
)
Go
Drop Table Compra
Create Table Corredor (
codigo				int				not null,
mercadoria_tipo	    int				not null,
nome				varchar(30)			null
Primary key (codigo)
Foreign Key (mercadoria_tipo)
	References TipoMercadoria (codigo)
)
Go

Create Table Mercadoria (
codigo				int				not null,
nome				varchar(30)		not null,
valor				decimal(7,2)	not null,
corredor_codigo		int				not null,
mercadoria_tipo		int				not null
Primary key (codigo)
Foreign Key (corredor_codigo)
	References Corredor (codigo),
Foreign Key (mercadoria_tipo)
	References TipoMercadoria (codigo)
)
Go

Insert Into Cliente Values
(1,	'Luis Paulo',	'R. Xv de Novembro, 100',	'45657878', null),	
(2,	'Maria Fernanda',	'R. Anhaia, 1098',	'27289098',	'40040090'),
(3, 'Ana Claudia',	'Av. Voluntários da Pátria, 876',	'21346548', null),	
(4,	'Marcos Henrique',	'R. Pantojo, 76',	'51425890',	'30394540'),
(5,	'Emerson Souza',	'R. Pedro Álvares Cabral, 97',	'44236545',	'39389900'),
(6,	'Ricardo Santos',	'Trav. Hum, 10',	'98789878', null)
Go

Insert Into TipoMercadoria Values 
(10001,	'Pães'),
(10002,	'Frios'),
(10003,	'Bolacha'),
(10004,	'Clorados'),
(10005,	'Frutas'),
(10006,	'Esponjas'),
(10007,	'Massas'),
(10008,	'Molhos')
Go

Insert Into Compra Values 
(1234,	2,	200),
(2345,	4,	156),
(3456,	6,	354),
(4567,	3,	19)
Go

Insert Into Corredor Values 
(101,	10001,	'Padaria'),
(102,	10002,	'Calçados'),
(103,	10003,	'Biscoitos'),
(104,	10004,	'Limpeza'),
(105,   null,	null	),
(106,	null,	null	),
(107,	10007,	'Congelados')
Go

Insert Into Mercadoria Values 
(1001,	'Pão de Forma',	101,	10001,	3.5),
(1002,	'Presunto',	101,	10002,	2.0),
(1003,	'Cream Cracker',	103,	10003,	4.5),
(1004,	'Água Sanitária',	104,	10004,	6.5),
(1005,	'Maçã',	105,	10005,	0.9),
(1006,	'Palha de Aço',	106,	10006,	1.3),
(1007,	'Lasanha',	107,	10007,	9.7)
Go


Valor da Compra de Luis Paulo		
Valor da Compra de Marcos Henrique		
Endereço e telefone do comprador de Nota Fiscal = 4567		
Valor da mercadoria cadastrada do tipo " Pães"		
Nome do corredor onde está a Lasanha		
Nome do corredor onde estão os clorados		






