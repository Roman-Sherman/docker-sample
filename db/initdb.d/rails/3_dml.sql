\c testdb testusr

--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: testusr
--

INSERT INTO public.accounts VALUES (1, 'test', '$2a$12$pyCOO9FG7ptXlmXPiy8VcOJcz0hbPk1DWjcESVzJezj1igE0YF.C.', LOCALTIMESTAMP, LOCALTIMESTAMP);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: testusr
--

INSERT INTO public.ar_internal_metadata VALUES ('environment', 'production', LOCALTIMESTAMP, LOCALTIMESTAMP);
INSERT INTO public.ar_internal_metadata VALUES ('schema_sha1', 'b679ce16cd97176bcecf476c6363c6bb9f43f61b', LOCALTIMESTAMP, LOCALTIMESTAMP);

--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: testusr
--

INSERT INTO public.categories VALUES (1, '技術書', '2020-02-29 06:09:43.317686', LOCALTIMESTAMP);
INSERT INTO public.categories VALUES (2, '小説', '2020-02-29 06:09:43.322036', LOCALTIMESTAMP);
INSERT INTO public.categories VALUES (3, '雑誌', '2020-02-29 06:09:43.326552', LOCALTIMESTAMP);


--
-- Data for Name: formats; Type: TABLE DATA; Schema: public; Owner: testusr
--

INSERT INTO public.formats VALUES (1, '書籍', LOCALTIMESTAMP, LOCALTIMESTAMP);
INSERT INTO public.formats VALUES (2, '電子書籍', LOCALTIMESTAMP, LOCALTIMESTAMP);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: testusr
--

INSERT INTO public.schema_migrations VALUES ('20191014060603');
INSERT INTO public.schema_migrations VALUES ('20180616074106');
INSERT INTO public.schema_migrations VALUES ('20180616074218');
INSERT INTO public.schema_migrations VALUES ('20180616074301');
INSERT INTO public.schema_migrations VALUES ('20180814071611');
