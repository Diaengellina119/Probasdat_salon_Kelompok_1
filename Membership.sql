--
-- PostgreSQL database dump
--

\restrict 3jopV8JaPffLAkaiZHzTAm68exhEbsUDdYGDNzFpjN8FWaam5WGOMEwUzlrqsSI

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-21 08:42:37

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
-- TOC entry 219 (class 1259 OID 17024)
-- Name: Membership; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Membership" (
    "Id_Member" character varying(255),
    "id_Pelanggan" character varying(255) NOT NULL,
    tgl_akhir_member timestamp without time zone,
    tgl_member timestamp without time zone
);


ALTER TABLE public."Membership" OWNER TO postgres;

--
-- TOC entry 4919 (class 0 OID 17024)
-- Dependencies: 219
-- Data for Name: Membership; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Membership" ("Id_Member", "id_Pelanggan", tgl_akhir_member, tgl_member) FROM stdin;
\.


--
-- TOC entry 4772 (class 2606 OID 17030)
-- Name: Membership Membership_PrimaryKey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Membership"
    ADD CONSTRAINT "Membership_PrimaryKey" PRIMARY KEY ("id_Pelanggan");


--
-- TOC entry 4770 (class 1259 OID 17031)
-- Name: Membership_Id_Pelanggan; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Membership_Id_Pelanggan" ON public."Membership" USING btree ("id_Pelanggan");


--
-- TOC entry 4773 (class 2606 OID 17280)
-- Name: Membership FK_Membership_Pelanggan; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Membership"
    ADD CONSTRAINT "FK_Membership_Pelanggan" FOREIGN KEY ("id_Pelanggan") REFERENCES public."Pelanggan"(id_pelanggan) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2025-10-21 08:42:37

--
-- PostgreSQL database dump complete
--

\unrestrict 3jopV8JaPffLAkaiZHzTAm68exhEbsUDdYGDNzFpjN8FWaam5WGOMEwUzlrqsSI

