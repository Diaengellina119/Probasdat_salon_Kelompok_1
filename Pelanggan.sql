--
-- PostgreSQL database dump
--

\restrict cpZPVBvHcxZsWrhzbtYRBZdH7O7sTC7iVJFyooeR8o53B5HVdNn8GLLtcf3U8ra

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-20 14:39:56

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
-- TOC entry 223 (class 1259 OID 16767)
-- Name: Pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pelanggan" (
    alamat_pelanggan character varying(255),
    id_pelanggan character varying(255) NOT NULL,
    nama_pelanggan character varying(255),
    pw_pelanggan character varying(255),
    telp_pelanggan character varying(255),
    usn_pelanggan character varying(255)
);


ALTER TABLE public."Pelanggan" OWNER TO postgres;

--
-- TOC entry 4918 (class 0 OID 16767)
-- Dependencies: 223
-- Data for Name: Pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pelanggan" (alamat_pelanggan, id_pelanggan, nama_pelanggan, pw_pelanggan, telp_pelanggan, usn_pelanggan) FROM stdin;
\.


--
-- TOC entry 4771 (class 2606 OID 16773)
-- Name: Pelanggan Pelanggan_PrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pelanggan"
    ADD CONSTRAINT "Pelanggan_PrimaryKey" PRIMARY KEY (id_pelanggan);


--
-- TOC entry 4772 (class 2606 OID 16774)
-- Name: Pelanggan MembershipPelanggan; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pelanggan"
    ADD CONSTRAINT "MembershipPelanggan" FOREIGN KEY (id_pelanggan) REFERENCES public."Membership"("id_Pelanggan") ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2025-10-20 14:39:56

--
-- PostgreSQL database dump complete
--

\unrestrict cpZPVBvHcxZsWrhzbtYRBZdH7O7sTC7iVJFyooeR8o53B5HVdNn8GLLtcf3U8ra

