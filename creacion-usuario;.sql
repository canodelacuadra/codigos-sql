SELECT user,host FROM mysql. user;
create user 'selectvista'@'%'  IDENTIFIED BY 'guadalajara';
GRANT SELECT ON biblioteca.vistabiblioteca TO 'selectvista'@'%';
GRANT SELECT ON biblioteca.libros TO 'selectvista'@'%';
GRANT ALL PRIVILEGES  ON biblioteca.vistabiblioteca TO 'selectvista'@'%';