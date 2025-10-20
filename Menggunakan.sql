--
-- PostgreSQL database dump
--

\restrict xe8Ce9U71ZpeX5hqPWH0f9xjXJ84LG9vjWz1zF3G9kfe3RcG31rrNstYAvnH8sH

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-20 14:34:31

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
-- TOC entry 225 (class 1259 OID 16800)
-- Name: Menggunakan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Menggunakan" (
    id_barang character varying(255),
    "Id_menggunakan" character varying(255) NOT NULL,
    jumlah_penggunaan integer DEFAULT 0,
    kode_perawatan character varying(255),
    tgl_menggunakan timestamp without time zone
);


ALTER TABLE public."Menggunakan" OWNER TO postgres;

--
-- TOC entry 4923 (class 0 OID 16800)
-- Dependencies: 225
-- Data for Name: Menggunakan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Menggunakan" (id_barang, "Id_menggunakan", jumlah_penggunaan, kode_perawatan, tgl_menggunakan) FROM stdin;
\.


--
-- TOC entry 4774 (class 2606 OID 16807)
-- Name: Menggunakan Menggunakan_PrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Menggunakan"
    ADD CONSTRAINT "Menggunakan_PrimaryKey" PRIMARY KEY ("Id_menggunakan");


--
-- TOC entry 4771 (class 1259 OID 16818)
-- Name: Menggunakan_BarangMenggunakan; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Menggunakan_BarangMenggunakan" ON public."Menggunakan" USING btree (id_barang);


--
-- TOC entry 4772 (class 1259 OID 16820)
-- Name: Menggunakan_Jenis_PerawatanMenggunakan; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Menggunakan_Jenis_PerawatanMenggunakan" ON public."Menggunakan" USING btree (kode_perawatan);


--
-- TOC entry 4775 (class 1259 OID 16819)
-- Name: Menggunakan_id_barang; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Menggunakan_id_barang" ON public."Menggunakan" USING btree (id_barang);


--
-- TOC entry 4776 (class 2606 OID 16808)
-- Name: Menggunakan BarangMenggunakan; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Menggunakan"
    ADD CONSTRAINT "BarangMenggunakan" FOREIGN KEY (id_barang) REFERENCES public."Barang"("Id_barang") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4777 (class 2606 OID 16813)
-- Name: Menggunakan Jenis_PerawatanMenggunakan; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Menggunakan"
    ADD CONSTRAINT "Jenis_PerawatanMenggunakan" FOREIGN KEY (kode_perawatan) REFERENCES public."Jenis_Perawatan"(kode_perawatan) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2025-10-20 14:34:31

--
-- PostgreSQL database dump complete
--

\unrestrict xe8Ce9U71ZpeX5hqPWH0f9xjXJ84LG9vjWz1zF3G9kfe3RcG31rrNstYAvnH8sH

