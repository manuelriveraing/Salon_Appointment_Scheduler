--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE salon;
--
-- Name: salon; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE salon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE salon OWNER TO freecodecamp;

\connect salon

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
-- Name: appointments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.appointments (
    appointment_id integer NOT NULL,
    customer_id integer NOT NULL,
    service_id integer NOT NULL,
    "time" character varying(30) NOT NULL
);


ALTER TABLE public.appointments OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.appointments_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_appointment_id_seq OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    phone character varying(20),
    name character varying(50) NOT NULL
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.services (
    service_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.services OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.services_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_service_id_seq OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.services_service_id_seq OWNED BY public.services.service_id;


--
-- Name: appointments appointment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: services service_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services ALTER COLUMN service_id SET DEFAULT nextval('public.services_service_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.appointments VALUES (6, 28, 1, '');
INSERT INTO public.appointments VALUES (121, 141, 3, '40min');
INSERT INTO public.appointments VALUES (22, 46, 1, '20');
INSERT INTO public.appointments VALUES (43, 62, 1, '');
INSERT INTO public.appointments VALUES (44, 68, 2, '20am');
INSERT INTO public.appointments VALUES (50, 74, 1, '10:30');
INSERT INTO public.appointments VALUES (66, 90, 1, '23:00');
INSERT INTO public.appointments VALUES (72, 96, 2, '20:20');
INSERT INTO public.appointments VALUES (73, 97, 3, '20:30');
INSERT INTO public.appointments VALUES (74, 98, 1, '10:00');
INSERT INTO public.appointments VALUES (85, 109, 3, '10:00');
INSERT INTO public.appointments VALUES (96, 120, 1, '20');
INSERT INTO public.appointments VALUES (97, 121, 2, '10:12');


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.customers VALUES (68, '555-555', 'Pongo');
INSERT INTO public.customers VALUES (2, '5555555', 'Manuelk');
INSERT INTO public.customers VALUES (5, 'FakeTime', '');
INSERT INTO public.customers VALUES (9, '555-55555-5', 'Pongo');
INSERT INTO public.customers VALUES (10, '1', 'mOLE');
INSERT INTO public.customers VALUES (11, '555-555-555-', 'Diego');
INSERT INTO public.customers VALUES (74, '1232-452', 'Fabio');
INSERT INTO public.customers VALUES (19, '', '');
INSERT INTO public.customers VALUES (28, '45121.45454', 'bORIS');
INSERT INTO public.customers VALUES (29, '555,.132', 'Acxi');
INSERT INTO public.customers VALUES (90, '555-555-2', 'Pongueaje');
INSERT INTO public.customers VALUES (96, '789-456', 'Pingorocho');
INSERT INTO public.customers VALUES (97, '456-789', 'Pingorocho');
INSERT INTO public.customers VALUES (98, '45-78', 'Manito');
INSERT INTO public.customers VALUES (40, 'Test', 'FakeTime');
INSERT INTO public.customers VALUES (46, '555,.5DAD', 'Manu');
INSERT INTO public.customers VALUES (109, '78-456', 'Boris');
INSERT INTO public.customers VALUES (62, 'adsasdas', '333434-34343');
INSERT INTO public.customers VALUES (120, '455-123', 'Cocoliso');
INSERT INTO public.customers VALUES (121, '12-45', 'Manu');
INSERT INTO public.customers VALUES (141, '78', 'Inca');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.services VALUES (1, 'Cut');
INSERT INTO public.services VALUES (2, 'Color');
INSERT INTO public.services VALUES (3, 'Perm');
INSERT INTO public.services VALUES (4, 'Style');
INSERT INTO public.services VALUES (5, 'Trim');


--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 133, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 151, true);


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_service_id_seq', 5, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);


--
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: appointments appointments_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: appointments appointments_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- PostgreSQL database dump complete
--

