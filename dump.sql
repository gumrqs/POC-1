--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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
-- Name: poems; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.poems (
    id integer NOT NULL,
    "studentId" integer NOT NULL,
    poem text NOT NULL,
    "titlePoem" text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT '2022-11-14 01:48:11.587559'::timestamp without time zone NOT NULL
);


--
-- Name: poems_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.poems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: poems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.poems_id_seq OWNED BY public.poems.id;


--
-- Name: poems_studentId_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."poems_studentId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: poems_studentId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."poems_studentId_seq" OWNED BY public.poems."studentId";


--
-- Name: students; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.students (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    img text
);


--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: poems id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.poems ALTER COLUMN id SET DEFAULT nextval('public.poems_id_seq'::regclass);


--
-- Name: poems studentId; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.poems ALTER COLUMN "studentId" SET DEFAULT nextval('public."poems_studentId_seq"'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Data for Name: poems; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.poems VALUES (1, 1, 'Houve outrora um homem pálido com cabelos negros que estava muito sozinho - Lobo: Por que estava sózinho? Ovelha: Tudo que existe precisava encontrar esse homem, então, afastaram-se dele. - Lobo: Ele perseguiu tudo? - Ovelha: Ele dividiu-se em dois em um machado, bem ao meio. - Lobo: Para que ele sempre tivesse um amigo? -Ovelha: Para que ele sempre tivesse um amigo.', 'lobo', '2022-11-14 01:48:11.587559');
INSERT INTO public.poems VALUES (3, 2, 'Vês! Ninguém assistiu ao formidável Enterro de sua última quimera.Somente aIngratidão – esta pantera –Foi tua companheira inseparável!Acostuma-te à lama que te espera!O homem, que, nesta terra miserável,Mora, entre feras, sente inevitávelNecessidade de tambémser fera.Toma um fósforo. Acende teu cigarro!Obeijo, amigo, é a véspera do escarro,A mão que afaga é a mesma que apedreja.Se alguém causa indapena a tua chaga,Apedreja essa mão vil que te afaga Escarra nessa boca que te beija!', 'Versos Íntimos', '2022-11-14 01:48:11.587559');
INSERT INTO public.poems VALUES (4, 2, 'Vês! Ninguém assistiu ao formidável Enterro de sua última quimera.Somente aIngratidão – esta pantera –Foi tua companheira inseparável!Acostuma-te à lama que te espera!O homem, que, nesta terra miserável,Mora, entre feras, sente inevitávelNecessidade de tambémser fera.Toma um fósforo. Acende teu cigarro!Obeijo, amigo, é a véspera do escarro,A mão que afaga é a mesma que apedreja.Se alguém causa indapena a tua chaga,Apedreja essa mão vil que te afaga Escarra nessa boca que te beija!', 'Versos Íntimos', '2022-11-14 01:48:11.587559');
INSERT INTO public.poems VALUES (5, 2, 'Vês! Ninguém assistiu ao formidável Enterro de sua última quimera.Somente aIngratidão – esta pantera –Foi tua companheira inseparável!Acostuma-te à lama que te espera!O homem, que, nesta terra miserável,Mora, entre feras, sente inevitávelNecessidade de tambémser fera.Toma um fósforo. Acende teu cigarro!Obeijo, amigo, é a véspera do escarro,A mão que afaga é a mesma que apedreja.Se alguém causa indapena a tua chaga,Apedreja essa mão vil que te afaga Escarra nessa boca que te beija!', 'Versos Íntimos', '2022-11-14 01:48:11.587559');
INSERT INTO public.poems VALUES (6, 2, 'Vês! Ninguém assistiu ao formidável Enterro de sua última quimera.Somente aIngratidão – esta pantera –Foi tua companheira inseparável!Acostuma-te à lama que te espera!O homem, que, nesta terra miserável,Mora, entre feras, sente inevitávelNecessidade de tambémser fera.Toma um fósforo. Acende teu cigarro!Obeijo, amigo, é a véspera do escarro,A mão que afaga é a mesma que apedreja.Se alguém causa indapena a tua chaga,Apedreja essa mão vil que te afaga Escarra nessa boca que te beija!', 'Versos Íntimos', '2022-11-14 01:48:11.587559');
INSERT INTO public.poems VALUES (7, 2, 'isso de querer ser exatamente aquilo que a gente e ainda vai nos levar além', 'versos ', '2022-11-14 01:48:11.587559');
INSERT INTO public.poems VALUES (8, 2, 'isso de querer ser exatamente aquilo que a gente e ainda vai nos levar além', 'versos ', '2022-11-14 01:48:11.587559');
INSERT INTO public.poems VALUES (9, 1, 'Amor é um fogo que arde sem se ver;É ferida que dói, e não se sente;É um contentamento descontente;É dor que desatina sem doer.', 'versos ', '2022-11-14 01:48:11.587559');


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.students VALUES (1, 'gustavo', NULL);
INSERT INTO public.students VALUES (2, 'vivi', NULL);
INSERT INTO public.students VALUES (3, 'titi', NULL);
INSERT INTO public.students VALUES (4, 'bernado', NULL);


--
-- Name: poems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.poems_id_seq', 9, true);


--
-- Name: poems_studentId_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."poems_studentId_seq"', 1, false);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.students_id_seq', 4, true);


--
-- Name: poems poems_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.poems
    ADD CONSTRAINT poems_pk PRIMARY KEY (id);


--
-- Name: students students_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pk PRIMARY KEY (id);


--
-- Name: poems poems_fk0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.poems
    ADD CONSTRAINT poems_fk0 FOREIGN KEY ("studentId") REFERENCES public.students(id);


--
-- PostgreSQL database dump complete
--

