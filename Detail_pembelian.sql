--
-- PostgreSQL database dump
--

\restrict 4POcve5SctjJlBKetdGCs7iawStXdshCRtCujF1R1RklbHDnG9LrVzS3SnheSLj

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-20 14:33:40

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
-- TOC entry 226 (class 1259 OID 16821)
-- Name: Detail_pembelian; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Detail_pembelian" (
    harga numeric(19,0) DEFAULT '0'::numeric,
    id_barang character varying(255),
    "Id_detail_pembelian" character varying(255) NOT NULL,
    id_pembelian character varying(255),
    id_supplier character varying(255),
    jumlah integer DEFAULT 0,
    nama_barangbeli character varying(255)
);


ALTER TABLE public."Detail_pembelian" OWNER TO postgres;

--
-- TOC entry 4928 (class 0 OID 16821)
-- Dependencies: 226
-- Data for Name: Detail_pembelian; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Detail_pembelian" (harga, id_barang, "Id_detail_pembelian", id_pembelian, id_supplier, jumlah, nama_barangbeli) FROM stdin;
\.


--
-- TOC entry 4775 (class 2606 OID 16829)
-- Name: Detail_pembelian Detail_pembelian_PrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Detail_pembelian"
    ADD CONSTRAINT "Detail_pembelian_PrimaryKey" PRIMARY KEY ("Id_detail_pembelian");


--
-- TOC entry 4772 (class 1259 OID 16845)
-- Name: Detail_pembelian_BarangDetail_pembelian; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Detail_pembelian_BarangDetail_pembelian" ON public."Detail_pembelian" USING btree (id_barang);


--
-- TOC entry 4773 (class 1259 OID 16849)
-- Name: Detail_pembelian_PembelianDetail_pembelian; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Detail_pembelian_PembelianDetail_pembelian" ON public."Detail_pembelian" USING btree (id_pembelian);


--
-- TOC entry 4776 (class 1259 OID 16850)
-- Name: Detail_pembelian_SupplierDetail_pembelian; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Detail_pembelian_SupplierDetail_pembelian" ON public."Detail_pembelian" USING btree (id_supplier);


--
-- TOC entry 4777 (class 1259 OID 16846)
-- Name: Detail_pembelian_id_barang; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Detail_pembelian_id_barang" ON public."Detail_pembelian" USING btree (id_barang);


--
-- TOC entry 4778 (class 1259 OID 16847)
-- Name: Detail_pembelian_id_pembelian; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Detail_pembelian_id_pembelian" ON public."Detail_pembelian" USING btree (id_pembelian);


--
-- TOC entry 4779 (class 1259 OID 16848)
-- Name: Detail_pembelian_id_supplier; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Detail_pembelian_id_supplier" ON public."Detail_pembelian" USING btree (id_supplier);


--
-- TOC entry 4780 (class 2606 OID 16830)
-- Name: Detail_pembelian BarangDetail_pembelian; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Detail_pembelian"
    ADD CONSTRAINT "BarangDetail_pembelian" FOREIGN KEY (id_barang) REFERENCES public."Barang"("Id_barang") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4781 (class 2606 OID 16835)
-- Name: Detail_pembelian PembelianDetail_pembelian; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Detail_pembelian"
    ADD CONSTRAINT "PembelianDetail_pembelian" FOREIGN KEY (id_pembelian) REFERENCES public."Pembelian"("Id_pembelian") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4782 (class 2606 OID 16840)
-- Name: Detail_pembelian SupplierDetail_pembelian; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Detail_pembelian"
    ADD CONSTRAINT "SupplierDetail_pembelian" FOREIGN KEY (id_supplier) REFERENCES public."Supplier"("Id_supplier") ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2025-10-20 14:33:40

--
-- PostgreSQL database dump complete
--

\unrestrict 4POcve5SctjJlBKetdGCs7iawStXdshCRtCujF1R1RklbHDnG9LrVzS3SnheSLj

