--
-- PostgreSQL database dump
--

\restrict g1mcMYPt2yCs4Tyr3checqKh7LUzZ5xesh0xRJejiuoEEcdbY66HlVBtPpkADca

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-20 14:35:32

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
-- TOC entry 220 (class 1259 OID 16739)
-- Name: Pegawai; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pegawai" (
    alamat_pegawai character varying(255),
    id_pegawai character varying(255) NOT NULL,
    nama_pegawai character varying(255),
    pw_pegawai character varying(255),
    telp_pegawai character varying(255),
    usn_pegawai character varying(255)
);


ALTER TABLE public."Pegawai" OWNER TO postgres;

--
-- TOC entry 4917 (class 0 OID 16739)
-- Dependencies: 220
-- Data for Name: Pegawai; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pegawai" (alamat_pegawai, id_pegawai, nama_pegawai, pw_pegawai, telp_pegawai, usn_pegawai) FROM stdin;
\.


--
-- TOC entry 4771 (class 2606 OID 16745)
-- Name: Pegawai Pegawai_PrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pegawai"
    ADD CONSTRAINT "Pegawai_PrimaryKey" PRIMARY KEY (id_pegawai);


-- Completed on 2025-10-20 14:35:33

--
-- PostgreSQL database dump complete
--

\unrestrict g1mcMYPt2yCs4Tyr3checqKh7LUzZ5xesh0xRJejiuoEEcdbY66HlVBtPpkADca

