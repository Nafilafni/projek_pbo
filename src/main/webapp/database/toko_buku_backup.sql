--
-- PostgreSQL database dump
--

\restrict OpBQdnua61N304ngspCurokszWYBPZYgd6l8wlJhcR7bKQEYguAiVYTMv3ldle6

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-01-15 20:30:17

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

DROP DATABASE IF EXISTS toko_buku;
--
-- TOC entry 5059 (class 1262 OID 16419)
-- Name: toko_buku; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE toko_buku WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';


ALTER DATABASE toko_buku OWNER TO postgres;

\unrestrict OpBQdnua61N304ngspCurokszWYBPZYgd6l8wlJhcR7bKQEYguAiVYTMv3ldle6
\connect toko_buku
\restrict OpBQdnua61N304ngspCurokszWYBPZYgd6l8wlJhcR7bKQEYguAiVYTMv3ldle6

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
-- TOC entry 224 (class 1259 OID 16443)
-- Name: buku; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.buku (
    id integer NOT NULL,
    judul character varying(150) NOT NULL,
    penulis character varying(100),
    harga integer NOT NULL,
    stok integer NOT NULL,
    gambar character varying(255),
    kategori_id integer NOT NULL
);


ALTER TABLE public.buku OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16442)
-- Name: buku_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.buku_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.buku_id_seq OWNER TO postgres;

--
-- TOC entry 5060 (class 0 OID 0)
-- Dependencies: 223
-- Name: buku_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.buku_id_seq OWNED BY public.buku.id;


--
-- TOC entry 228 (class 1259 OID 16473)
-- Name: detail_transaksi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detail_transaksi (
    id integer NOT NULL,
    transaksi_id integer NOT NULL,
    buku_id integer NOT NULL,
    jumlah integer NOT NULL,
    harga integer NOT NULL
);


ALTER TABLE public.detail_transaksi OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16472)
-- Name: detail_transaksi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detail_transaksi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.detail_transaksi_id_seq OWNER TO postgres;

--
-- TOC entry 5061 (class 0 OID 0)
-- Dependencies: 227
-- Name: detail_transaksi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detail_transaksi_id_seq OWNED BY public.detail_transaksi.id;


--
-- TOC entry 220 (class 1259 OID 16421)
-- Name: kategori; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kategori (
    id integer NOT NULL,
    nama_kategori character varying(100) NOT NULL
);


ALTER TABLE public.kategori OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16420)
-- Name: kategori_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kategori_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.kategori_id_seq OWNER TO postgres;

--
-- TOC entry 5062 (class 0 OID 0)
-- Dependencies: 219
-- Name: kategori_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kategori_id_seq OWNED BY public.kategori.id;


--
-- TOC entry 226 (class 1259 OID 16462)
-- Name: transaksi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaksi (
    id integer NOT NULL,
    nama_pembeli character varying(100) NOT NULL,
    tanggal timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    total integer NOT NULL
);


ALTER TABLE public.transaksi OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16461)
-- Name: transaksi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transaksi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transaksi_id_seq OWNER TO postgres;

--
-- TOC entry 5063 (class 0 OID 0)
-- Dependencies: 225
-- Name: transaksi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transaksi_id_seq OWNED BY public.transaksi.id;


--
-- TOC entry 222 (class 1259 OID 16430)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(100) NOT NULL,
    role character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16429)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 5064 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4878 (class 2604 OID 16446)
-- Name: buku id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buku ALTER COLUMN id SET DEFAULT nextval('public.buku_id_seq'::regclass);


--
-- TOC entry 4881 (class 2604 OID 16476)
-- Name: detail_transaksi id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detail_transaksi ALTER COLUMN id SET DEFAULT nextval('public.detail_transaksi_id_seq'::regclass);


--
-- TOC entry 4876 (class 2604 OID 16424)
-- Name: kategori id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kategori ALTER COLUMN id SET DEFAULT nextval('public.kategori_id_seq'::regclass);


--
-- TOC entry 4879 (class 2604 OID 16465)
-- Name: transaksi id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi ALTER COLUMN id SET DEFAULT nextval('public.transaksi_id_seq'::regclass);


--
-- TOC entry 4877 (class 2604 OID 16433)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 5049 (class 0 OID 16443)
-- Dependencies: 224
-- Data for Name: buku; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.buku VALUES (1, 'Laskar Pelangi', 'Andrea Hirata', 85000, 10, 'laskar.jpg', 1);
INSERT INTO public.buku VALUES (3, 'Doraemon Vol 1', 'Fujiko F. Fujio', 45000, 15, 'doraemon.jpg', 2);
INSERT INTO public.buku VALUES (4, 'Naruto Vol 1', 'Masashi Kishimoto', 50000, 12, 'naruto.jpg', 2);
INSERT INTO public.buku VALUES (2, 'Bumi', 'Tere Liye', 90000, 6, 'bumi.jpg', 1);
INSERT INTO public.buku VALUES (5, 'Matematika SMA', 'Budi Santoso', 90000, 6, 'mtk.jpg', 3);
INSERT INTO public.buku VALUES (7, 'Biografi BJ Habibie', 'Fatimah Fayrus', 100000, 5, 'habibie.jpg', 4);
INSERT INTO public.buku VALUES (6, 'Fisika SMA', 'Marthen Kanginan', 95000, 6, 'fisika.jpg', 3);
INSERT INTO public.buku VALUES (9, 'Basis Data', 'Ika Oktavia Suzanti', 110000, 6, 'database.jpg', 5);
INSERT INTO public.buku VALUES (12, 'Laut ', 'Leila S. Chudori', 96000, 18, 'laut.jpg', 1);
INSERT INTO public.buku VALUES (8, 'Pemrograman Java', 'Abdhul Kadir', 120000, 5, 'java.jpg', 5);


--
-- TOC entry 5053 (class 0 OID 16473)
-- Dependencies: 228
-- Data for Name: detail_transaksi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.detail_transaksi VALUES (1, 1, 6, 1, 95000);
INSERT INTO public.detail_transaksi VALUES (2, 2, 5, 1, 90000);
INSERT INTO public.detail_transaksi VALUES (3, 3, 2, 2, 90000);
INSERT INTO public.detail_transaksi VALUES (4, 4, 12, 3, 96000);
INSERT INTO public.detail_transaksi VALUES (5, 7, 8, 2, 120000);


--
-- TOC entry 5045 (class 0 OID 16421)
-- Dependencies: 220
-- Data for Name: kategori; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kategori VALUES (1, 'Novel');
INSERT INTO public.kategori VALUES (2, 'Komik');
INSERT INTO public.kategori VALUES (3, 'Buku Pelajaran');
INSERT INTO public.kategori VALUES (4, 'Biografi');
INSERT INTO public.kategori VALUES (5, 'Teknologi');


--
-- TOC entry 5051 (class 0 OID 16462)
-- Dependencies: 226
-- Data for Name: transaksi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.transaksi VALUES (1, 'nala', '2026-01-14 18:51:13.384648', 95000);
INSERT INTO public.transaksi VALUES (2, 'budi', '2026-01-14 22:03:36.72799', 90000);
INSERT INTO public.transaksi VALUES (3, 'nal', '2026-01-15 14:53:53.64173', 180000);
INSERT INTO public.transaksi VALUES (4, 'tioo', '2026-01-15 15:26:08.830108', 288000);
INSERT INTO public.transaksi VALUES (7, 'lya', '2026-01-15 18:16:00.656528', 240000);


--
-- TOC entry 5047 (class 0 OID 16430)
-- Dependencies: 222
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (1, 'admin', 'admin123', 'ADMIN');


--
-- TOC entry 5065 (class 0 OID 0)
-- Dependencies: 223
-- Name: buku_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.buku_id_seq', 13, true);


--
-- TOC entry 5066 (class 0 OID 0)
-- Dependencies: 227
-- Name: detail_transaksi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detail_transaksi_id_seq', 5, true);


--
-- TOC entry 5067 (class 0 OID 0)
-- Dependencies: 219
-- Name: kategori_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kategori_id_seq', 5, true);


--
-- TOC entry 5068 (class 0 OID 0)
-- Dependencies: 225
-- Name: transaksi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transaksi_id_seq', 7, true);


--
-- TOC entry 5069 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- TOC entry 4889 (class 2606 OID 16455)
-- Name: buku buku_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buku
    ADD CONSTRAINT buku_pkey PRIMARY KEY (id);


--
-- TOC entry 4893 (class 2606 OID 16483)
-- Name: detail_transaksi detail_transaksi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detail_transaksi
    ADD CONSTRAINT detail_transaksi_pkey PRIMARY KEY (id);


--
-- TOC entry 4883 (class 2606 OID 16428)
-- Name: kategori kategori_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (id);


--
-- TOC entry 4891 (class 2606 OID 16471)
-- Name: transaksi transaksi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id);


--
-- TOC entry 4885 (class 2606 OID 16439)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4887 (class 2606 OID 16441)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 4894 (class 2606 OID 16456)
-- Name: buku buku_kategori_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buku
    ADD CONSTRAINT buku_kategori_id_fkey FOREIGN KEY (kategori_id) REFERENCES public.kategori(id);


--
-- TOC entry 4895 (class 2606 OID 16489)
-- Name: detail_transaksi detail_transaksi_buku_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detail_transaksi
    ADD CONSTRAINT detail_transaksi_buku_id_fkey FOREIGN KEY (buku_id) REFERENCES public.buku(id);


--
-- TOC entry 4896 (class 2606 OID 16484)
-- Name: detail_transaksi detail_transaksi_transaksi_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detail_transaksi
    ADD CONSTRAINT detail_transaksi_transaksi_id_fkey FOREIGN KEY (transaksi_id) REFERENCES public.transaksi(id);


-- Completed on 2026-01-15 20:30:17

--
-- PostgreSQL database dump complete
--

\unrestrict OpBQdnua61N304ngspCurokszWYBPZYgd6l8wlJhcR7bKQEYguAiVYTMv3ldle6

