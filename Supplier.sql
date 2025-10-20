--
-- PostgreSQL database dump
--

\restrict ZAPipfjTc6l1Q8K65dgLnu8WceOeN29vY8PbVp631oBH5hOXvAKlZhdVH8qOgms

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-20 14:14:51

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 222 (class 1259 OID 16760)
-- Name: Supplier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Supplier" (
    alamat_supplier character varying(255),
    "Id_supplier" character varying(255) NOT NULL,
    nama_supplier character varying(255),
    no_telp_supplier character varying(255)
);


ALTER TABLE public."Supplier" OWNER TO postgres;

--
-- TOC entry 4917 (class 0 OID 16760)
-- Dependencies: 222
-- Data for Name: Supplier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Supplier" (alamat_supplier, "Id_supplier", nama_supplier, no_telp_supplier) FROM stdin;
\.


--
-- TOC entry 4771 (class 2606 OID 16766)
-- Name: Supplier Supplier_PrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Supplier"
    ADD CONSTRAINT "Supplier_PrimaryKey" PRIMARY KEY ("Id_supplier");


-- Completed on 2025-10-20 14:14:52

--
-- PostgreSQL database dump complete
--

\unrestrict ZAPipfjTc6l1Q8K65dgLnu8WceOeN29vY8PbVp631oBH5hOXvAKlZhdVH8qOgms

