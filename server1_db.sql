--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12
-- Dumped by pg_dump version 10.12

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

SET default_with_oids = false;

--
-- Name: areas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.areas (
    id integer NOT NULL,
    name character varying(64),
    polygon public.geometry(Geometry,4326)
);


--
-- Name: areas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.areas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: areas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.areas_id_seq OWNED BY public.areas.id;


--
-- Name: areas id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.areas ALTER COLUMN id SET DEFAULT nextval('public.areas_id_seq'::regclass);


--
-- Data for Name: areas; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.areas (id, name, polygon) FROM stdin;
9	1000	0103000020E6100000010000002100000059D722EF6A8652C06FFF4EADD39C1240FD2D15CF6D8652C088F0A120059B1240AA88D63F768652C043BA267848991240248D5BEE838652C043FA4ECAAE971240E2970954968652C00C9469D547961240401FE3BBAC8652C0773AC464219512400C467C49C68652C0B927FAC846941240B32F7301E28652C01A6EA668C0931240D1C818D3FE8652C0DF6DC06D93931240C708EBA21B8752C0D223CF92C193124089A77955378752C02BF8E61149941240BF2C4ADA508752C0C17B19B624951240F4425036678752C04CD2AB0E4C9612403859938D798752C08D661CC2B3971240D8B1A22B878752C0D2A6C7FD4D99124041B4848A8F8752C038F8E1FD0A9B1240B242DD57928752C0C8988DA8D99C12404A5E18788F8752C092061736A89E124089E37907878752C093F2E0DF64A012407CDD0759798752C049CA468FFEA112406C0B5AF3668752C0050FBD8565A312405CEE6D8B508752C0A006B9F78BA41240C437B2FD368752C0CD4D6B9466A5124048078E451B8752C06A7815F5ECA51240E054B773FE8652C03EFDB2EF19A61240AEA2B7A3E18652C069E8C7C9EBA51240062406F1C58652C0485E614964A5124063A0226CAC8652C008C3A0A388A4124080511C10968652C0EC8D7D4961A31240EFD0EBB8838652C0B15BB694F9A112401408FF1A768652C0FCE622585FA01240794C4ABC6D8652C09924B257A29E124059D722EF6A8652C06FFF4EADD39C1240
8	abc	0103000020E61000000100000021000000FD6E48C9B48652C0FE52062FD59C1240B0EC3B39B68652C0D51C94E8ED9B1240C83F9871BA8652C030912C940F9B12407D64D848C18652C095E30EBD429A1240C064AF7BCA8652C03C1A6A428F991240337C9EAFD58652C07FABEC09FC98124053616F76E28652C0E1B1EABB8E9812408F7D7052F08652C0ED18B68B4B981240236B49BBFE8652C0072F4C0E359812403A3738230D8752C0E10EEF204C9812402FE183FC1A8752C0BDBDA4E08F9812406183EEBE278752C033ACEFB2FD981240A196F1EC328752C0A9E16A5F919912400FD190183C8752C039FA4D39459A1240A72D94E7428752C0DAAB4057129B1240B987FF16478752C0ACBC58D7F09B12406DACA57D488752C06FA0A52CD89C1240458BBD0D478752C055EE4E73BF9D124028F069D5428752C06A270AC89D9E1240118B2EFE3B8752C0FE5A8B9F6A9F1240FE9857CB328752C0F35B941A1EA012401DDC6397278752C033726753B1A0124006538AD01A8752C0E778A3A11EA1124014E57DF40C8752C01EAEEDD161A1124035B1988BFE8652C02D79454F78A112408D889E23F08652C094816B3C61A112409D264A4AE28652C04925627C1DA11240CDC4DA87D58652C0DBB0B3A9AFA0124064A3D759CA8652C0CA43D4FC1BA01240630E3D2EC18652C0C1839B22689F1240BC55425FBA8652C0FEC46E049B9E12405F4DE22FB68652C0E9174184BC9D1240FD6E48C9B48652C0FE52062FD59C1240
\.


--
-- Name: areas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.areas_id_seq', 9, true);


--
-- Name: areas areas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

