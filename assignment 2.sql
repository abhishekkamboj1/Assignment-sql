/* create datebase library*/
create database library;
use library;
/* craete table books*/
create table books(
id int primary key auto_increment,
title varchar(255),
author varchar(100),
year int,
genre varchar(100)
);
/* insert values*/
insert into books( id, title, author, year, genre)
values(001, "the great gatsby", "f.scott fitzgerald", 1925, "fiction"),
	  (002, "pride and prejudice", "jane austen", 1813, "romance"),
      (003, "to kill a mockingbird", "harper lee", 1960, "fiction"),
      (004, "1984", "george orwell", 1949, "dystopian"),
      (005, "moby dick", "herman melville", 1851, "adventure");
	
    select * from books;
    
    /* query to select all books where the tittle starts with the letter 't' using like operator*/
    select * from books where title like "T%";
  
  /* write a query to find all books where author last name end with son using like operator*/
   select * from books where author like "%lee";
   
   /* write a query to find all books where the title contain the world using like operator*/
    select * from books where title like "%and%";
  
  /* write a query to retrieve all books where the title ends with the world 'bird' using like operator*/
    select * from books where title like "%bird";
  
  /* write a query to find all books where the title has exactly 3 character using the regexp operator*/
     select * from books where title regexp '^[A-Za-z]+ [A-Za-z]+ [A-Za-z]+$';
       
  /* write a query to retrieve all books where contains a using the regexp operator*/
  select * from books where title regexp "[0-9]";
  
  /* write a query to retrieve all books where the author's name start with any letter 'a' and 'j' using the regexp operator*/
  select * from books where author regexp '[a-j]';
  
    /* write a query to retrieve all books where the genre is either 'fiction' or 'adventure'using the regexp operator*/
     select * from books where genre regexp 'fiction';
     
     /* if we search both 'fiction' and 'adventure'*/
     select * from books where genre regexp 'fiction|adventure';
  
    /* write a query to find all books where the title contains at least one uppercase letter using the regexp operator*/
     select * from books where title regexp 'A-Z';
     
	/* write a query to find all books where the year of publication in between 1800 and  1950 using the like operator*/
    select * from books where year like '[1800-1950]';
    select * from books where year like '1800-1950';
    
    /* write a query to retrieve all books where the autho's name contains exactly two words using the regexp operator*/
    select * from books where author regexp '^[A-Za-z]+ [A-Za-z]+$';
    
    /* write a query to find all books where the little starts with the letter 'p'and contains exactly two words using the regexp operator*/
    
    
    
    /*write a query to find all books where the tittle contains any special charactor (e.g.,'!','@','#',etc.) using the regexp operator*/
    select * from books where title regexp "[@]";
    select * from books where title regexp "[@|#|!]";
    


