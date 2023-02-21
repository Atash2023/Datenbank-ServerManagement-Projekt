--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0 (Debian 15.0-1.pgdg110+1)
-- Dumped by pg_dump version 15.0 (Debian 15.0-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: kasse; Type: TABLE; Schema: public; Owner: admin_nutzer
--

CREATE TABLE public.kasse (
    id integer NOT NULL,
    aktuellerbetrag integer,
    nummer integer
);


ALTER TABLE public.kasse OWNER TO admin_nutzer;

--
-- Name: kasse_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_nutzer
--

CREATE SEQUENCE public.kasse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kasse_id_seq OWNER TO admin_nutzer;

--
-- Name: kasse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_nutzer
--

ALTER SEQUENCE public.kasse_id_seq OWNED BY public.kasse.id;


--
-- Name: kassenauswertung; Type: TABLE; Schema: public; Owner: admin_nutzer
--

CREATE TABLE public.kassenauswertung (
    geschaeftsid integer NOT NULL,
    zeitraumtage integer,
    betraggesamt integer
);


ALTER TABLE public.kassenauswertung OWNER TO admin_nutzer;

--
-- Name: kassenauswertung_geschaeftsid_seq; Type: SEQUENCE; Schema: public; Owner: admin_nutzer
--

CREATE SEQUENCE public.kassenauswertung_geschaeftsid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kassenauswertung_geschaeftsid_seq OWNER TO admin_nutzer;

--
-- Name: kassenauswertung_geschaeftsid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_nutzer
--

ALTER SEQUENCE public.kassenauswertung_geschaeftsid_seq OWNED BY public.kassenauswertung.geschaeftsid;


--
-- Name: kassierer; Type: TABLE; Schema: public; Owner: admin_nutzer
--

CREATE TABLE public.kassierer (
    personalid integer NOT NULL,
    name integer,
    vorname integer
);


ALTER TABLE public.kassierer OWNER TO admin_nutzer;

--
-- Name: kassierer_personalid_seq; Type: SEQUENCE; Schema: public; Owner: admin_nutzer
--

CREATE SEQUENCE public.kassierer_personalid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kassierer_personalid_seq OWNER TO admin_nutzer;

--
-- Name: kassierer_personalid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_nutzer
--

ALTER SEQUENCE public.kassierer_personalid_seq OWNED BY public.kassierer.personalid;


--
-- Name: kasse id; Type: DEFAULT; Schema: public; Owner: admin_nutzer
--

ALTER TABLE ONLY public.kasse ALTER COLUMN id SET DEFAULT nextval('public.kasse_id_seq'::regclass);


--
-- Name: kassenauswertung geschaeftsid; Type: DEFAULT; Schema: public; Owner: admin_nutzer
--

ALTER TABLE ONLY public.kassenauswertung ALTER COLUMN geschaeftsid SET DEFAULT nextval('public.kassenauswertung_geschaeftsid_seq'::regclass);


--
-- Name: kassierer personalid; Type: DEFAULT; Schema: public; Owner: admin_nutzer
--

ALTER TABLE ONLY public.kassierer ALTER COLUMN personalid SET DEFAULT nextval('public.kassierer_personalid_seq'::regclass);


--
-- Data for Name: kasse; Type: TABLE DATA; Schema: public; Owner: admin_nutzer
--

COPY public.kasse (id, aktuellerbetrag, nummer) FROM stdin;
\.


--
-- Data for Name: kassenauswertung; Type: TABLE DATA; Schema: public; Owner: admin_nutzer
--

COPY public.kassenauswertung (geschaeftsid, zeitraumtage, betraggesamt) FROM stdin;
\.


--
-- Data for Name: kassierer; Type: TABLE DATA; Schema: public; Owner: admin_nutzer
--

COPY public.kassierer (personalid, name, vorname) FROM stdin;
\.


--
-- Name: kasse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_nutzer
--

SELECT pg_catalog.setval('public.kasse_id_seq', 1, false);


--
-- Name: kassenauswertung_geschaeftsid_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_nutzer
--

SELECT pg_catalog.setval('public.kassenauswertung_geschaeftsid_seq', 1, false);


--
-- Name: kassierer_personalid_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_nutzer
--

SELECT pg_catalog.setval('public.kassierer_personalid_seq', 1, false);


--
-- Name: TABLE kasse; Type: ACL; Schema: public; Owner: admin_nutzer
--

GRANT SELECT ON TABLE public.kasse TO nutzer_01;
GRANT UPDATE ON TABLE public.kasse TO nutzer_02;


--
-- Name: TABLE kassenauswertung; Type: ACL; Schema: public; Owner: admin_nutzer
--

GRANT SELECT,UPDATE ON TABLE public.kassenauswertung TO nutzer_02;


--
-- Name: TABLE kassierer; Type: ACL; Schema: public; Owner: admin_nutzer
--

GRANT SELECT,UPDATE ON TABLE public.kassierer TO nutzer_02;


--
-- PostgreSQL database dump complete
--

