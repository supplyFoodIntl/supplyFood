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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: good_types; Type: TABLE; Schema: public; Owner: azhabiel
--

CREATE TABLE public.good_types (
    id bigint NOT NULL,
    name character varying,
    good_type_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.good_types OWNER TO azhabiel;

--
-- Name: good_types_id_seq; Type: SEQUENCE; Schema: public; Owner: azhabiel
--

CREATE SEQUENCE public.good_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.good_types_id_seq OWNER TO azhabiel;

--
-- Name: good_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: azhabiel
--

ALTER SEQUENCE public.good_types_id_seq OWNED BY public.good_types.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.good_types ALTER COLUMN id SET DEFAULT nextval('public.good_types_id_seq'::regclass);


--
-- Data for Name: good_types; Type: TABLE DATA; Schema: public; Owner: azhabiel
--

INSERT INTO public.good_types (id, name, good_type_id, created_at, updated_at) VALUES (6, 'human food', NULL, '2018-05-31 00:00:00', '2018-05-31 00:00:00');
INSERT INTO public.good_types (id, name, good_type_id, created_at, updated_at) VALUES (7, 'canned food', 6, '2018-05-31 03:28:02.690745', '2018-05-31 17:56:02.499886');
INSERT INTO public.good_types (id, name, good_type_id, created_at, updated_at) VALUES (8, 'dairy', 6, '2018-05-31 17:58:35.216211', '2018-05-31 17:58:45.368358');
INSERT INTO public.good_types (id, name, good_type_id, created_at, updated_at) VALUES (9, 'fruits and vegetables', 6, '2018-05-31 19:33:55.328931', '2018-05-31 19:34:04.332122');
INSERT INTO public.good_types (id, name, good_type_id, created_at, updated_at) VALUES (10, 'fresh meat', 6, '2018-05-31 19:34:47.494492', '2018-05-31 19:34:47.494492');
INSERT INTO public.good_types (id, name, good_type_id, created_at, updated_at) VALUES (11, 'grains', 6, '2018-05-31 19:34:59.155219', '2018-05-31 19:34:59.155219');
INSERT INTO public.good_types (id, name, good_type_id, created_at, updated_at) VALUES (12, 'take away food', 6, '2018-05-31 19:35:48.546354', '2018-05-31 19:35:48.546354');
INSERT INTO public.good_types (id, name, good_type_id, created_at, updated_at) VALUES (13, 'beef', 10, '2018-06-02 13:28:14.214906', '2018-06-02 13:28:14.214906');
INSERT INTO public.good_types (id, name, good_type_id, created_at, updated_at) VALUES (14, 'chicken', 10, '2018-06-02 13:28:34.927132', '2018-06-02 13:28:34.927132');
INSERT INTO public.good_types (id, name, good_type_id, created_at, updated_at) VALUES (15, 'pork', 10, '2018-06-02 14:12:17.738197', '2018-06-02 14:12:17.738197');
INSERT INTO public.good_types (id, name, good_type_id, created_at, updated_at) VALUES (16, 'fish', 10, '2018-06-02 14:12:30.239219', '2018-06-02 14:12:30.239219');
INSERT INTO public.good_types (id, name, good_type_id, created_at, updated_at) VALUES (17, 'turkey', 10, '2018-06-02 21:57:38.192821', '2018-06-02 21:57:38.192821');


--
-- Name: good_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: azhabiel
--

SELECT pg_catalog.setval('public.good_types_id_seq', 17, true);


--
-- Name: good_types_pkey; Type: CONSTRAINT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.good_types
    ADD CONSTRAINT good_types_pkey PRIMARY KEY (id);


--
-- Name: index_good_types_on_good_type_id; Type: INDEX; Schema: public; Owner: azhabiel
--

CREATE INDEX index_good_types_on_good_type_id ON public.good_types USING btree (good_type_id);


--
-- Name: fk_rails_bf771d5465; Type: FK CONSTRAINT; Schema: public; Owner: azhabiel
--

ALTER TABLE ONLY public.good_types
    ADD CONSTRAINT fk_rails_bf771d5465 FOREIGN KEY (good_type_id) REFERENCES public.good_types(id);


--
-- PostgreSQL database dump complete
--

