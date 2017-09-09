

CREATE TABLE `BOOK` (                                
            `id` int(11) NOT NULL AUTO_INCREMENT,                  
            `book_name` varchar(250) DEFAULT NULL,              
            `price` double(10,2) DEFAULT NULL,                     
            PRIMARY KEY (`id`)                                     
   ) ENGINE=InnoDB;