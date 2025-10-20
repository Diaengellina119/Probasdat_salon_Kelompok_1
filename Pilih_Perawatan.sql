--
-- PostgreSQL database dump
--

\restrict HTsinhKfwWOd1R5z2ZH8Gc2YGnSddQXGMdQXcMFyw0CZYhGq7fdokyUb2ECaQOn

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-20 14:36:15

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
-- TOC entry 227 (class 1259 OID 16851)
-- Name: Pilih_Perawatan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pilih_Perawatan" (
    id_pegawai character varying(255),
    "ID_pilih_perawatan" character varying(255) NOT NULL,
    id_transaksi character varying(255),
    kode_perawatan character varying(255)
);


ALTER TABLE public."Pilih_Perawatan" OWNER TO postgres;

--
-- TOC entry 4925 (class 0 OID 16851)
-- Dependencies: 227
-- Data for Name: Pilih_Perawatan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pilih_Perawatan" (id_pegawai, "ID_pilih_perawatan", id_transaksi, kode_perawatan) FROM stdin;
\.


--
-- TOC entry 4773 (class 2606 OID 16857)
-- Name: Pilih_Perawatan Pilih_Perawatan_PrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pilih_Perawatan"
    ADD CONSTRAINT "Pilih_Perawatan_PrimaryKey" PRIMARY KEY ("ID_pilih_perawatan");


--
-- TOC entry 4770 (class 1259 OID 16875)
-- Name: Pilih_Perawatan_Jenis_PerawatanPilih_Perawatan; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Pilih_Perawatan_Jenis_PerawatanPilih_Perawatan" ON public."Pilih_Perawatan" USING btree (kode_perawatan);


--
-- TOC entry 4771 (class 1259 OID 16876)
-- Name: Pilih_Perawatan_PegawaiPilih_Perawatan; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Pilih_Perawatan_PegawaiPilih_Perawatan" ON public."Pilih_Perawatan" USING btree (id_pegawai);


--
-- TOC entry 4774 (class 1259 OID 16877)
-- Name: Pilih_Perawatan_TransaksiPilih_Perawatan; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Pilih_Perawatan_TransaksiPilih_Perawatan" ON public."Pilih_Perawatan" USING btree (id_transaksi);


--
-- TOC entry 4775 (class 1259 OID 16873)
-- Name: Pilih_Perawatan_id_pegawai; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Pilih_Perawatan_id_pegawai" ON public."Pilih_Perawatan" USING btree (id_pegawai);


--
-- TOC entry 4776 (class 1259 OID 16874)
-- Name: Pilih_Perawatan_id_pelanggan; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Pilih_Perawatan_id_pelanggan" ON public."Pilih_Perawatan" USING btree (id_transaksi);


--
-- TOC entry 4777 (class 2606 OID 16858)
-- Name: Pilih_Perawatan Jenis_PerawatanPilih_Perawatan; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pilih_Perawatan"
    ADD CONSTRAINT "Jenis_PerawatanPilih_Perawatan" FOREIGN KEY (kode_perawatan) REFERENCES public."Jenis_Perawatan"(kode_perawatan) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4778 (class 2606 OID 16863)
-- Name: Pilih_Perawatan PegawaiPilih_Perawatan; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pilih_Perawatan"
    ADD CONSTRAINT "PegawaiPilih_Perawatan" FOREIGN KEY (id_pegawai) REFERENCES public."Pegawai"(id_pegawai) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4779 (class 2606 OID 16868)
-- Name: Pilih_Perawatan TransaksiPilih_Perawatan; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pilih_Perawatan"
    ADD CONSTRAINT "TransaksiPilih_Perawatan" FOREIGN KEY (id_transaksi) REFERENCES public."Transaksi"(id_transaksi) ON DELETE CASCADE;


-- Completed on 2025-10-20 14:36:15

--
-- PostgreSQL database dump complete
--

\unrestrict HTsinhKfwWOd1R5z2ZH8Gc2YGnSddQXGMdQXcMFyw0CZYhGq7fdokyUb2ECaQOn

