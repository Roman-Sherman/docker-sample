\c testdb testusr

INSERT INTO "category_master" ("name") VALUES ('Technical Book'), ('Magazine'), ('Novel');
INSERT INTO "format_master" ("name") VALUES ('Paper Book'), ('e-Book');
INSERT INTO "authority_master" ("name") VALUES ('Admin');
INSERT INTO "account_master" ("name","password","authority_id") VALUES ('test','$2a$10$2Yx7YqbDtqNExKJy94/Og..ainGsy.5PCbCQp6I87GX6.sTfRsV2u',1);
