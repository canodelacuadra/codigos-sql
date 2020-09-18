SELECT user,host FROM mysql. user;
SELECT user,host, Password
FROM mysql.user;
SELECT *
FROM mysql.user;

create user 'vistab'@'localhost'  IDENTIFIED BY 'guadalajara';
GRANT SELECT
 ON biblioteca.vistabiblioteca 
 TO 'vistab'@'localhost';
 GRANT SELECT ON biblioteca.vistabiblioteca TO 'vistab' @'%';


select * from vistabiblioteca;