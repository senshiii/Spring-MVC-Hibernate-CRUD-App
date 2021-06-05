# Spring MVC CRUD Application
## Using Hibernate ORM and MySQL Database

Basic CRUD App which uses Spring MVC Architecture with the Service Facade Design Pattern. It uses Hibernate ORM to connect and interact with a MySQL Database. This project uses Tomcat v9 as the Web Server.


#### Highlights : 

- Sping Core
- Spring MVC
- JSP / JSTL Tags
- Hibernate ORM
- Service Facade Design Pattern
- MySQL Database


## How to Run ??

Step 1: Clone Project

Step 2: Open as Project in IDE

Step 3: Set variables 

```
<property name="jdbcUrl" value="JDBC_URL" />
<property name="user" value="MYSQL_USER" />
<property name="password" value="MYSQL_PASSWORD" /> 
```

in /WebContent/WEB-INF/config.xml file with your own jdbcUrl, MySQL user and MySQL password.

Format of jdbc url - ``` jdbc:mysql://hostname:port/database_name?useSSL=false&amp;serverTimezone=UTC ```


Step 4: Run MySQL Scripts

```
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1
```

Step 5: Run Project in Tomcat v9 Server

Eclipse IDE is suggested

