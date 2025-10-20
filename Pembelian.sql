--
-- PostgreSQL database dump
--

\restrict C7e5CnLKplFMjTRjzuhWRFPjuQBIXzSyzXPeNr1iEYVr7qgyHxF2g2hR4USbUFv

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-20 14:36:39

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
-- TOC entry 221 (class 1259 OID 16746)
-- Name: Pembelian; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pembelian" (
    id_pegawai character varying(255),
    "Id_pembelian" character varying(255) NOT NULL,
    tgl_pembelian timestamp without time zone
);


ALTER TABLE public."Pembelian" OWNER TO postgres;

--
-- TOC entry 4920 (class 0 OID 16746)
-- Dependencies: 221
-- Data for Name: Pembelian; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pembelian" (id_pegawai, "Id_pembelian", tgl_pembelian) FROM stdin;
\.


--
-- TOC entry 4772 (class 2606 OID 16752)
-- Name: Pembelian Pembelian_PrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pembelian"
    ADD CONSTRAINT "Pembelian_PrimaryKey" PRIMARY KEY ("Id_pembelian");


--
-- TOC entry 4770 (class 1259 OID 16759)
-- Name: Pembelian_PegawaiPembelian; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Pembelian_PegawaiPembelian" ON public."Pembelian" USING btree (id_pegawai);


--
-- TOC entry 4773 (class 1259 OID 16758)
-- Name: Pembelian_id_pegawai; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Pembelian_id_pegawai" ON public."Pembelian" USING btree (id_pegawai);


--
-- TOC entry 4774 (class 2606 OID 16753)
-- Name: Pembelian PegawaiPembelian; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pembelian"
    ADD CONSTRAINT "PegawaiPembelian" FOREIGN KEY (id_pegawai) REFERENCES public."Pegawai"(id_pegawai) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2025-10-20 14:36:40

--
-- PostgreSQL database dump complete
--

\unrestrict C7e5CnLKplFMjTRjzuhWRFPjuQBIXzSyzXPeNr1iEYVr7qgyHxF2g2hR4USbUFv

