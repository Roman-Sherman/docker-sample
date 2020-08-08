\c testdb testusr

INSERT INTO "category_master" ("name") VALUES ('技術書'), ('雑誌'), ('小説');
INSERT INTO "format_master" ("name") VALUES ('書籍'), ('電子書籍');
INSERT INTO "authority_master" ("name") VALUES ('Admin');
INSERT INTO "account_master" ("name","password","authority_id") VALUES ('test','$2a$10$2Yx7YqbDtqNExKJy94/Og..ainGsy.5PCbCQp6I87GX6.sTfRsV2u',1);
