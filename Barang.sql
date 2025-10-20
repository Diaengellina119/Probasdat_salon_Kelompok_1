--
-- PostgreSQL database dump
--

\restrict a7wV2hFu8igDWZUemTYU5V2Hcfyh2wcZvPEyqNPSEhBa1b2CeZlqUgUIgxcVg0o

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-20 14:11:28

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
-- TOC entry 217 (class 1259 OID 16716)
-- Name: Barang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Barang" (
    "Harga_beli" numeric(19,0) DEFAULT '0'::numeric,
    "Id_barang" character varying(255) NOT NULL,
    nama_barang character varying(255),
    satuan character varying(255),
    "Stok" integer DEFAULT 0,
    "Tanggal_kadaluwarsa" timestamp without time zone
);


ALTER TABLE public."Barang" OWNER TO postgres;

--
-- TOC entry 4919 (class 0 OID 16716)
-- Dependencies: 217
-- Data for Name: Barang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Barang" ("Harga_beli", "Id_barang", nama_barang, satuan, "Stok", "Tanggal_kadaluwarsa") FROM stdin;
\.


--
-- TOC entry 4773 (class 2606 OID 16724)
-- Name: Barang Barang_PrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Barang"
    ADD CONSTRAINT "Barang_PrimaryKey" PRIMARY KEY ("Id_barang");


-- Completed on 2025-10-20 14:11:28

--
-- PostgreSQL database dump complete
--

\unrestrict a7wV2hFu8igDWZUemTYU5V2Hcfyh2wcZvPEyqNPSEhBa1b2CeZlqUgUIgxcVg0o

