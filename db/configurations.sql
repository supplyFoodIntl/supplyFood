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
-- Data for Name: supply_food_configurations; Type: TABLE DATA; Schema: public; Owner: azhabiel
--

INSERT INTO public.supply_food_configurations (id, name, description, value, created_at, updated_at, html_configuration) VALUES (1, 'Food Handling', 'the importance of the food handling and health issues', NULL, '2018-05-31 00:21:02.655086', '2018-05-31 20:40:05.022103', 'Food Handling is important');
INSERT INTO public.supply_food_configurations (id, name, description, value, created_at, updated_at, html_configuration) VALUES (2, 'The value of a donation', 'text to describe the value of a donation', NULL, '2018-05-31 00:21:16.737591', '2018-05-31 20:40:13.061575', 'Each donation is a proof of good will whose give some so important as food to a fellow men');
INSERT INTO public.supply_food_configurations (id, name, description, value, created_at, updated_at, html_configuration) VALUES (5, 'News', 'news about funding and the media exposure', NULL, '2018-05-31 00:21:39.174423', '2018-05-31 20:40:52.832809', 'last news');
INSERT INTO public.supply_food_configurations (id, name, description, value, created_at, updated_at, html_configuration) VALUES (4, 'Services', 'describe the services provided by your hunger relief project', NULL, '2018-05-31 00:21:32.110923', '2018-05-31 20:44:31.643354', 'we divide our work in 4 major activites : collect, storage, inspect and deliver');
INSERT INTO public.supply_food_configurations (id, name, description, value, created_at, updated_at, html_configuration) VALUES (3, 'Legal', 'legal concerns and the legal agreement', NULL, '2018-05-31 00:21:24.964494', '2018-05-31 20:46:32.477442', '<p>legal concerns</p><p>legal agreement</p>');
INSERT INTO public.supply_food_configurations (id, name, description, value, created_at, updated_at, html_configuration) VALUES (6, 'Volunteer form contract', 'the term of contract of the volunteer service', NULL, '2018-06-03 14:03:18.052922', '2018-06-03 14:03:18.052922', '<p> volunteer contract<p><p>as a volunteer i hereby accept that my work is volunteer, not paid</p>');
INSERT INTO public.supply_food_configurations (id, name, description, value, created_at, updated_at, html_configuration) VALUES (7, 'Volunteer intro page', 'initial page from volunteer menu, explaining the importance and work of the volunteer', NULL, '2018-06-03 14:06:51.686437', '2018-06-03 14:06:51.686437', '<p>the volunteer work is the base of any hunger relief program<p><p> since the material resources are scarce , the sucess of the project is based on the strict organization and planning and besides all, the good will of the volunteers.</p>');


--
-- Name: supply_food_configurations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azhabiel
--

SELECT pg_catalog.setval('public.supply_food_configurations_id_seq', 7, true);


--
-- PostgreSQL database dump complete
--

