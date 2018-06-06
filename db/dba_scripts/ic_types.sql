--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: ic_types; Type: TABLE DATA; Schema: public; Owner: azhabiel
--

INSERT INTO public.ic_types (id, name, created_at, updated_at) VALUES (1, 'Passport', '2018-05-30 12:24:53.792481', '2018-05-30 12:24:53.792481');
INSERT INTO public.ic_types (id, name, created_at, updated_at) VALUES (2, 'National ID Card', '2018-05-30 12:24:53.803745', '2018-05-30 12:24:53.803745');
INSERT INTO public.ic_types (id, name, created_at, updated_at) VALUES (3, 'Social Security Number', '2018-05-30 12:24:53.809145', '2018-05-30 12:24:53.809145');


--
-- Name: ic_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azhabiel
--

SELECT pg_catalog.setval('public.ic_types_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

