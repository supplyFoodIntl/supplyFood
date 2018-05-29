SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: addresstypes_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.addresstypes_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: addresstypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.addresstypes (
    idaddresstype integer DEFAULT nextval('public.addresstypes_seq'::regclass) NOT NULL,
    nmaddresstype character varying(45),
    create_time timestamp without time zone DEFAULT now()
);


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: configurations_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.configurations_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: configurations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.configurations (
    idconfiguration integer DEFAULT nextval('public.configurations_seq'::regclass) NOT NULL,
    dsconfiguration character varying(45),
    vlconfiguration integer,
    create_time timestamp without time zone DEFAULT now(),
    html_configuration text
);


--
-- Name: ictypes_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ictypes_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ictypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ictypes (
    idictype integer DEFAULT nextval('public.ictypes_seq'::regclass) NOT NULL,
    nmidentificationcard character varying(45),
    create_time timestamp without time zone DEFAULT now()
);


--
-- Name: people_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.people_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: people; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.people (
    idperson integer DEFAULT nextval('public.people_seq'::regclass) NOT NULL,
    nmperson character varying(45),
    create_time timestamp without time zone DEFAULT now(),
    pt_idpersontype integer NOT NULL,
    ict_idictype integer NOT NULL
);


--
-- Name: persontypes_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.persontypes_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: persontypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.persontypes (
    idpersontype integer DEFAULT nextval('public.persontypes_seq'::regclass) NOT NULL,
    dspersontype character varying(20),
    create_time timestamp without time zone DEFAULT now()
);


--
-- Name: publicplacetypes_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.publicplacetypes_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: publicplacetypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.publicplacetypes (
    idpublicplacetype integer DEFAULT nextval('public.publicplacetypes_seq'::regclass) NOT NULL,
    dspublicplacetype character varying(45),
    create_time timestamp without time zone DEFAULT now()
);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: usertypes_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.usertypes_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: usertypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usertypes (
    idusertype integer DEFAULT nextval('public.usertypes_seq'::regclass) NOT NULL,
    nmusertype character varying(45),
    create_time timestamp without time zone DEFAULT now()
);


--
-- Name: addresstype_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.addresstypes
    ADD CONSTRAINT addresstype_pkey PRIMARY KEY (idaddresstype);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: configuration_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.configurations
    ADD CONSTRAINT configuration_pkey PRIMARY KEY (idconfiguration);


--
-- Name: ictype_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ictypes
    ADD CONSTRAINT ictype_pkey PRIMARY KEY (idictype);


--
-- Name: people_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (idperson);


--
-- Name: persontype_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.persontypes
    ADD CONSTRAINT persontype_pkey PRIMARY KEY (idpersontype);


--
-- Name: publicplacetype_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publicplacetypes
    ADD CONSTRAINT publicplacetype_pkey PRIMARY KEY (idpublicplacetype);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: usertype_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usertypes
    ADD CONSTRAINT usertype_pkey PRIMARY KEY (idusertype);


--
-- Name: fk_Person_ICType1_idx; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT "fk_Person_ICType1_idx" FOREIGN KEY (ict_idictype) REFERENCES public.ictypes(idictype);


--
-- Name: fk_Person_PersonType1_idx; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT "fk_Person_PersonType1_idx" FOREIGN KEY (pt_idpersontype) REFERENCES public.persontypes(idpersontype);


--
-- PostgreSQL database dump complete
--

SET search_path TO supplyfood,public;

INSERT INTO "schema_migrations" (version) VALUES
('0'),
('20180525183541'),
('20180525183606'),
('20180525183630');


