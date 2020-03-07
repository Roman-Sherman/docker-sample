\c testdb testusr

--
-- Data for Name: AspNetUsers; Type: TABLE DATA; Schema: public; Owner: testusr
--

INSERT INTO public."AspNetUsers" VALUES ('8a7f05c4-6a75-4665-9511-ebdbad4269b5', 'test', 'TEST', NULL, NULL, false, 'AQAAAAEAACcQAAAAEBvXwv+Pin9bDlJVaWGb1cHfHU0hyneHnDKzN3+vtDkMIkI1376K7rmqRNNaxgTvEw==', 'KM3G52FQ4TY6R22RIK2LVV4FJIWN3GRU', '274bde4d-dddc-45e2-8292-bca458fdf18a', NULL, false, false, NULL, true, 0, 'Account', 'test');

--
-- Data for Name: CATEGORY_MASTER; Type: TABLE DATA; Schema: public; Owner: testusr
--

INSERT INTO public."CATEGORY_MASTER" VALUES (1, '技術書');
INSERT INTO public."CATEGORY_MASTER" VALUES (2, '小説');
INSERT INTO public."CATEGORY_MASTER" VALUES (3, '雑誌');


--
-- Data for Name: FORMAT_MASTER; Type: TABLE DATA; Schema: public; Owner: testusr
--

INSERT INTO public."FORMAT_MASTER" VALUES (1, '書籍');
INSERT INTO public."FORMAT_MASTER" VALUES (2, '電子書籍');
