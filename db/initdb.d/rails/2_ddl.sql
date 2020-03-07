\c testdb testusr

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: testusr
--

CREATE TABLE public.accounts (
    id bigint NOT NULL,
    name character varying,
    password_digest character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.accounts OWNER TO testusr;

--
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: testusr
--

CREATE SEQUENCE public.accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_id_seq OWNER TO testusr;

--
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testusr
--

ALTER SEQUENCE public.accounts_id_seq OWNED BY public.accounts.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: testusr
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO testusr;

--
-- Name: books; Type: TABLE; Schema: public; Owner: testusr
--

CREATE TABLE public.books (
    id bigint NOT NULL,
    title character varying,
    isbn character varying,
    format_id integer,
    category_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.books OWNER TO testusr;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: testusr
--

CREATE SEQUENCE public.books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO testusr;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testusr
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: testusr
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO testusr;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: testusr
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO testusr;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testusr
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: formats; Type: TABLE; Schema: public; Owner: testusr
--

CREATE TABLE public.formats (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.formats OWNER TO testusr;

--
-- Name: formats_id_seq; Type: SEQUENCE; Schema: public; Owner: testusr
--

CREATE SEQUENCE public.formats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.formats_id_seq OWNER TO testusr;

--
-- Name: formats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testusr
--

ALTER SEQUENCE public.formats_id_seq OWNED BY public.formats.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: testusr
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO testusr;

--
-- Name: accounts id; Type: DEFAULT; Schema: public; Owner: testusr
--

ALTER TABLE ONLY public.accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_id_seq'::regclass);


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: testusr
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: testusr
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: formats id; Type: DEFAULT; Schema: public; Owner: testusr
--

ALTER TABLE ONLY public.formats ALTER COLUMN id SET DEFAULT nextval('public.formats_id_seq'::regclass);

--
-- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testusr
--

SELECT pg_catalog.setval('public.accounts_id_seq', 1, true);


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testusr
--

SELECT pg_catalog.setval('public.books_id_seq', 1, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testusr
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, true);


--
-- Name: formats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testusr
--

SELECT pg_catalog.setval('public.formats_id_seq', 1, true);


--
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: testusr
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: testusr
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: testusr
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: testusr
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: formats formats_pkey; Type: CONSTRAINT; Schema: public; Owner: testusr
--

ALTER TABLE ONLY public.formats
    ADD CONSTRAINT formats_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: testusr
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_books_on_category_id; Type: INDEX; Schema: public; Owner: testusr
--

CREATE INDEX index_books_on_category_id ON public.books USING btree (category_id);


--
-- Name: index_books_on_format_id; Type: INDEX; Schema: public; Owner: testusr
--

CREATE INDEX index_books_on_format_id ON public.books USING btree (format_id);


--
-- Name: books fk_rails_1e86d9c4ec; Type: FK CONSTRAINT; Schema: public; Owner: testusr
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT fk_rails_1e86d9c4ec FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: books fk_rails_6316d308c7; Type: FK CONSTRAINT; Schema: public; Owner: testusr
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT fk_rails_6316d308c7 FOREIGN KEY (format_id) REFERENCES public.formats(id);
