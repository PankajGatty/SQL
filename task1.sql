create database xworkz;

CREATE TABLE xworkz.airport_detail(
  `airport_id` int(10) NOT NULL,
  `airport_name` varchar(150) DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `IATA_code` varchar(20) NOT NULL,
  `ICAO_code` varchar(20) NOT NULL,
  `runway_length` int(10) NOT NULL,
  `elevation` int(10) NOT NULL
)

insert into xworkz.airport_detail(`airport_id`, `airport_name`, `city`, `country`, `IATA_code`, `ICAO_code`, `runway_length`, `elevation`) VALUES
(1, 'Los Angeles Internat', 'Los Angeles', 'USA', 'LAX', 'KLAX', 3682, 125),
(2, 'Heathrow Airport', 'London', 'UK', 'LHR', 'EGLL', 3902, 83),
(3, 'Chhatrapati Shivaji ', 'Mumbai', 'India', 'BOM', 'VABB', 3800, 39),
(4, 'Haneda Airport', 'Tokyo', 'Japan', 'HND', 'RJTT', 3000, 21),
(5, 'Dubai International ', 'Dubai', 'UAE', 'DXB', 'OMDB', 4000, 62),
(6, 'Frankfurt Airport', 'Frankfurt', 'Germany', 'FRA', 'EDDF', 4000, 364),
(7, 'Sydney Kingsford Smi', 'Sydney', 'Australia', 'SYD', 'YSSY', 3962, 21),
(8, 'Beijing Capital Inte', 'Beijing', 'China', 'PEK', 'ZBAA', 3800, 116),
(9, 'Charles de Gaulle Ai', 'Paris', 'France', 'CDG', 'LFPG', 4215, 392),
(10, 'John F. Kennedy Inte', 'New York', 'USA', 'JFK', 'KJFK', 4442, 13),
(11, 'Singapore Changi Airport', 'Singapore', 'Singapore', 'SIN', 'WSSS', 4000, 22),
(12, 'Incheon International Airport', 'Seoul', 'South Korea', 'ICN', 'RKSI', 3750, 23);


select * from xworkz.airport_detail;

select * from xworkz.airport_detail where airport_id=1 and country='USA';

select * from xworkz.airport_detail where airport_id=1 or country='USA';

select * from xworkz.airport_detail where airport_id in (1,3,5,7,9,11);

CREATE TABLE xworkz.olympic_games(
  `game_id` int(10) NOT NULL,
  `year` int(10) NOT NULL,
  `season` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `num_countries` int(20) NOT NULL,
  `num_sports` int(20) NOT NULL,
  `num_athletes` int(20) NOT NULL
)
INSERT INTO xworkz.olympic_games(`game_id`, `year`, `season`, `city`, `country`, `start_date`, `end_date`, `num_countries`, `num_sports`, `num_athletes`) VALUES
(1, 2000, 'Summer', 'Sydney', 'Australia', '2000-09-15', '2000-10-01', 199, 28, 10651),
(2, 2004, 'Summer', 'Athens', 'Greece', '2004-08-13', '2004-08-29', 201, 28, 10625),
(3, 2008, 'Summer', 'Beijing', 'China', '2008-08-08', '2008-08-24', 204, 28, 10942),
(4, 2012, 'Summer', 'London', 'United Kingdom', '2012-07-27', '2012-08-12', 204, 26, 10568),
(5, 2016, 'Summer', 'Rio de Janeiro', 'Brazil', '2016-08-05', '2016-08-21', 207, 28, 11303),
(6, 2020, 'Summer', 'Tokyo', 'Japan', '2021-07-23', '2021-08-08', 206, 33, 11417),
(7, 2002, 'Winter', 'Salt Lake City', 'USA', '2002-02-08', '2002-02-24', 77, 15, 2399),
(8, 2006, 'Winter', 'Turin', 'Italy', '2006-02-10', '2006-02-26', 80, 15, 2508),
(9, 2010, 'Winter', 'Vancouver', 'Canada', '2010-02-12', '2010-02-28', 82, 15, 2566),
(10, 2014, 'Winter', 'Sochi', 'Russia', '2014-02-07', '2014-02-23', 88, 15, 2858),
(11, 2018, 'Winter', 'Pyeongchang', 'South Korea', '2018-02-09', '2018-02-25', 92, 15, 2922),
(12, 2022, 'Winter', 'Beijing', 'China', '2022-02-04', '2022-02-20', 91, 15, 2871);

select * from olympic_games;

select * from olympic_games where game_id=4 and city='london' and country='united kingdom';

select * from olympic_games where game_id=4 or city='tokyo' or country='china';

select * from olympic_games where year in(2000,2008,2016,2002,2010,2014,2018);

select * from olympic_games where game_id not between 6 and 10;


