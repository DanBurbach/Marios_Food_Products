--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Guest";

--
-- Name: product_tbs; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.product_tbs (
    id bigint NOT NULL,
    name character varying,
    cost integer,
    country_of_origin character varying,
    rating integer,
    recommended boolean
);


ALTER TABLE public.product_tbs OWNER TO "Guest";

--
-- Name: product_tbs_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.product_tbs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_tbs_id_seq OWNER TO "Guest";

--
-- Name: product_tbs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.product_tbs_id_seq OWNED BY public.product_tbs.id;


--
-- Name: products_tb; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.products_tb (
    id bigint NOT NULL,
    name character varying,
    cost integer,
    country_of_origin character varying
);


ALTER TABLE public.products_tb OWNER TO "Guest";

--
-- Name: products_tb_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.products_tb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_tb_id_seq OWNER TO "Guest";

--
-- Name: products_tb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.products_tb_id_seq OWNED BY public.products_tb.id;


--
-- Name: reviews_tbs; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.reviews_tbs (
    id bigint NOT NULL,
    author character varying,
    content_body character varying,
    rating integer,
    recommended boolean
);


ALTER TABLE public.reviews_tbs OWNER TO "Guest";

--
-- Name: reviews_tbs_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.reviews_tbs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_tbs_id_seq OWNER TO "Guest";

--
-- Name: reviews_tbs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.reviews_tbs_id_seq OWNED BY public.reviews_tbs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Guest";

--
-- Name: product_tbs id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.product_tbs ALTER COLUMN id SET DEFAULT nextval('public.product_tbs_id_seq'::regclass);


--
-- Name: products_tb id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.products_tb ALTER COLUMN id SET DEFAULT nextval('public.products_tb_id_seq'::regclass);


--
-- Name: reviews_tbs id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.reviews_tbs ALTER COLUMN id SET DEFAULT nextval('public.reviews_tbs_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2018-12-14 20:21:15.383408	2018-12-14 20:21:15.383408
\.


--
-- Data for Name: product_tbs; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.product_tbs (id, name, cost, country_of_origin, rating, recommended) FROM stdin;
\.


--
-- Data for Name: products_tb; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.products_tb (id, name, cost, country_of_origin) FROM stdin;
\.


--
-- Data for Name: reviews_tbs; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.reviews_tbs (id, author, content_body, rating, recommended) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.schema_migrations (version) FROM stdin;
20181214201102
20181214201515
20181214231316
\.


--
-- Name: product_tbs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.product_tbs_id_seq', 1, false);


--
-- Name: products_tb_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.products_tb_id_seq', 1, false);


--
-- Name: reviews_tbs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.reviews_tbs_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: product_tbs product_tbs_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.product_tbs
    ADD CONSTRAINT product_tbs_pkey PRIMARY KEY (id);


--
-- Name: products_tb products_tb_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.products_tb
    ADD CONSTRAINT products_tb_pkey PRIMARY KEY (id);


--
-- Name: reviews_tbs reviews_tbs_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.reviews_tbs
    ADD CONSTRAINT reviews_tbs_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

