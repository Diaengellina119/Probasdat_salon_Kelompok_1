--
-- PostgreSQL database dump
--

\restrict RCKa9z0D6IwfRjj3NHEjbBFeugMQ53gLBVV7mk2WgCDI6RcXa1hLbiNIhNl0KbW

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-20 14:34:04

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
-- TOC entry 218 (class 1259 OID 16725)
-- Name: Jenis_Perawatan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Jenis_Perawatan" (
    harga_perawatan numeric(19,0) DEFAULT '0'::numeric,
    jenis_perawatan character varying(50),
    kode_perawatan character varying(255) NOT NULL,
    nama_perawatan character varying(25)
);


ALTER TABLE public."Jenis_Perawatan" OWNER TO postgres;

--
-- TOC entry 4918 (class 0 OID 16725)
-- Dependencies: 218
-- Data for Name: Jenis_Perawatan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Jenis_Perawatan" (harga_perawatan, jenis_perawatan, kode_perawatan, nama_perawatan) FROM stdin;
\.


--
-- TOC entry 4772 (class 2606 OID 16730)
-- Name: Jenis_Perawatan Jenis_Perawatan_PrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Jenis_Perawatan"
    ADD CONSTRAINT "Jenis_Perawatan_PrimaryKey" PRIMARY KEY (kode_perawatan);


-- Completed on 2025-10-20 14:34:04

--
-- PostgreSQL database dump complete
--

\unrestrict RCKa9z0D6IwfRjj3NHEjbBFeugMQ53gLBVV7mk2WgCDI6RcXa1hLbiNIhNl0KbW

