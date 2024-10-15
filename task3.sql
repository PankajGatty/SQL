CREATE TABLE NewsArticles (
    ArticleID INT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(100),
    Content TEXT,
    PublishedDate DATE,
    Category VARCHAR(50),
    Language VARCHAR(50),
    Views INT,
    Likes INT,
    Comments INT,
    IsPublished BOOLEAN
);

INSERT INTO NewsArticles (ArticleID, Title, Author, Content, PublishedDate, Category, Language, Views, Likes, Comments, IsPublished) 
VALUES 
(1, 'AI Revolution in 2024', 'John Doe', 'AI is taking over the world...', '2024-10-10', 'Technology', 'English', 1500, 250, 12, TRUE),
(2, 'The Rise of Electric Cars', 'Jane Smith', 'Electric cars are becoming more...', '2024-10-09', 'Automobile', 'English', 1200, 300, 15, TRUE),
(3, 'Movie Blockbusters of the Year', 'Chris Lee', 'This year has seen some amazing...', '2024-10-01', 'Entertainment', 'English', 1800, 400, 30, TRUE),
(4, 'New Advances in Medicine', 'Dr. Laura', 'Medical science has reached new heights...', '2024-09-30', 'Health', 'English', 900, 150, 5, TRUE),
(5, 'Economic Growth in 2024', 'Mike Brown', 'Global economies are projected to grow...', '2024-10-05', 'Economics', 'English', 2000, 350, 25, TRUE),
(6, 'Global Warming Effects', 'Alice Green', 'The effects of global warming are...', '2024-09-20', 'Environment', 'English', 3000, 450, 50, TRUE),
(7, 'Space Travel Breakthrough', 'Elon Musk', 'SpaceX has achieved...', '2024-10-12', 'Science', 'English', 2500, 600, 40, TRUE),
(8, 'The Evolution of Smartphones', 'Sara White', 'Smartphones are evolving at...', '2024-09-15', 'Technology', 'English', 1000, 200, 8, TRUE),
(9, 'The Art of Cooking', 'Gordon Ramsay', 'Cooking has become...', '2024-09-28', 'Lifestyle', 'English', 500, 100, 3, TRUE),
(10, 'Political Changes in 2024', 'David King', 'The political landscape is shifting...', '2024-10-11', 'Politics', 'English', 2200, 550, 60, TRUE);

SELECT * FROM NewsArticles;

-- LIKE:
select * from NewsArticles where  Author like 'd%';

-- NOT LIKE:
select * from NewsArticles where Author not like 'a%';

-- DISTINCT:
select count(distinct Author)from NewsArticles;
select distinct (Author),(ArticleID)from NewsArticles;
select distinct (Author)or (ArticleID) as Repeated_value from NewsArticles;
select distinct (Author)and  (ArticleID) as Repeated_value from NewsArticles;


select * from NewsArticles;

update NewsArticles set author="John Doe" where ArticleID=2; 

-- ORDER BY:
select * from NewsArticles order by ArticleID desc;
select * from NewsArticles order by Author desc;

select * from newsarticles  where Author like '%e' order by Author desc;

-- Aggregate Function:
-- Sum:
select sum(views)as total_sum from NewsArticles; 

-- MIN:
select title,likes from NewsArticles where likes=(select min(likes) from NewsArticles);

-- MAX:
select title,likes from NewsArticles where likes=(select max(likes) from NewsArticles);

-- AVG:
select avg(comments) as Average_comment from newsarticles;

-- COUNT:
select count(*)from newsarticles;

