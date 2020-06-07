\c testdb testusr

insert into account_master(id,name,password) values (1,'test','$2a$10$ZMTnuNltXgEPsVZcDsqc1endcVC7L3u066JNC0v4Nfj5zl1nE6YcO');
insert into authority_master(id,authority) values (1,'ROLE_USER');

insert into account_master_authorities(account_master_id,authorities_id) values (1,1);

insert into category_master(id,name) values (1,'技術書');
insert into category_master(id,name) values (2,'小説');
insert into category_master(id,name) values (3,'雑誌');

insert into format_master(id,name) values (1,'書籍');
insert into format_master(id,name) values (2,'電子書籍');
