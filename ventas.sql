--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-08-06 19:12:58

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE ventas;
--
-- TOC entry 4918 (class 1262 OID 16416)
-- Name: ventas; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';


ALTER DATABASE ventas OWNER TO postgres;

\connect ventas

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- TOC entry 224 (class 1259 OID 16446)
-- Name: automovil; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.automovil (
    numerobastidor integer NOT NULL,
    marca character varying(25),
    modeloid integer,
    descuento integer,
    pago double precision,
    potenciafiscal double precision,
    cilindrada double precision,
    estado character varying(20)
);


ALTER TABLE public.automovil OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16445)
-- Name: automovil_numerobastidor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.automovil_numerobastidor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.automovil_numerobastidor_seq OWNER TO postgres;

--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 223
-- Name: automovil_numerobastidor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.automovil_numerobastidor_seq OWNED BY public.automovil.numerobastidor;


--
-- TOC entry 218 (class 1259 OID 16425)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    clienteid integer NOT NULL,
    nombre character varying(25),
    domicilio character varying(25),
    telefono character varying(12),
    email character varying(20)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16424)
-- Name: cliente_clienteid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_clienteid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_clienteid_seq OWNER TO postgres;

--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 217
-- Name: cliente_clienteid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_clienteid_seq OWNED BY public.cliente.clienteid;


--
-- TOC entry 226 (class 1259 OID 16458)
-- Name: equipamientoextra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipamientoextra (
    extraid integer NOT NULL,
    modeloid integer,
    precioextra double precision,
    equipextra character varying(20)
);


ALTER TABLE public.equipamientoextra OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16457)
-- Name: equipamientoextra_extraid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.equipamientoextra_extraid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.equipamientoextra_extraid_seq OWNER TO postgres;

--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 225
-- Name: equipamientoextra_extraid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.equipamientoextra_extraid_seq OWNED BY public.equipamientoextra.extraid;


--
-- TOC entry 228 (class 1259 OID 16470)
-- Name: equipamientoserie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipamientoserie (
    serieid integer NOT NULL,
    modeloid integer,
    caracteristicas character varying(20)
);


ALTER TABLE public.equipamientoserie OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16469)
-- Name: equipamientoserie_serieid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.equipamientoserie_serieid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.equipamientoserie_serieid_seq OWNER TO postgres;

--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 227
-- Name: equipamientoserie_serieid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.equipamientoserie_serieid_seq OWNED BY public.equipamientoserie.serieid;


--
-- TOC entry 216 (class 1259 OID 16418)
-- Name: modelo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.modelo (
    modeloid integer NOT NULL,
    nombre character varying(25),
    marca character varying(25)
);


ALTER TABLE public.modelo OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16417)
-- Name: modelo_modeloid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.modelo_modeloid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.modelo_modeloid_seq OWNER TO postgres;

--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 215
-- Name: modelo_modeloid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.modelo_modeloid_seq OWNED BY public.modelo.modeloid;


--
-- TOC entry 222 (class 1259 OID 16439)
-- Name: serviciosoficiales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.serviciosoficiales (
    serviciosid integer NOT NULL,
    nombre character varying(25),
    nif integer,
    domicilio character varying(25)
);


ALTER TABLE public.serviciosoficiales OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16438)
-- Name: serviciosoficiales_serviciosid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.serviciosoficiales_serviciosid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.serviciosoficiales_serviciosid_seq OWNER TO postgres;

--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 221
-- Name: serviciosoficiales_serviciosid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.serviciosoficiales_serviciosid_seq OWNED BY public.serviciosoficiales.serviciosid;


--
-- TOC entry 220 (class 1259 OID 16432)
-- Name: vendedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendedores (
    vendedoresid integer NOT NULL,
    nombre character varying(25),
    domicilio character varying(25),
    nif integer,
    telefono character varying(12),
    email character varying(20)
);


ALTER TABLE public.vendedores OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16431)
-- Name: vendedores_vendedoresid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vendedores_vendedoresid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vendedores_vendedoresid_seq OWNER TO postgres;

--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 219
-- Name: vendedores_vendedoresid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vendedores_vendedoresid_seq OWNED BY public.vendedores.vendedoresid;


--
-- TOC entry 230 (class 1259 OID 16482)
-- Name: ventasrealizadas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventasrealizadas (
    ventasid integer NOT NULL,
    numerobastidor integer,
    vendedoresid integer,
    serviciosid integer,
    clienteid integer,
    preciocobrado double precision,
    modopago character varying,
    fechaentrega date,
    matricula character varying,
    stockfabricado integer
);


ALTER TABLE public.ventasrealizadas OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16481)
-- Name: ventasrealizadas_ventasid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ventasrealizadas_ventasid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ventasrealizadas_ventasid_seq OWNER TO postgres;

--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 229
-- Name: ventasrealizadas_ventasid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ventasrealizadas_ventasid_seq OWNED BY public.ventasrealizadas.ventasid;


--
-- TOC entry 4727 (class 2604 OID 16449)
-- Name: automovil numerobastidor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.automovil ALTER COLUMN numerobastidor SET DEFAULT nextval('public.automovil_numerobastidor_seq'::regclass);


--
-- TOC entry 4724 (class 2604 OID 16428)
-- Name: cliente clienteid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN clienteid SET DEFAULT nextval('public.cliente_clienteid_seq'::regclass);


--
-- TOC entry 4728 (class 2604 OID 16461)
-- Name: equipamientoextra extraid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipamientoextra ALTER COLUMN extraid SET DEFAULT nextval('public.equipamientoextra_extraid_seq'::regclass);


--
-- TOC entry 4729 (class 2604 OID 16473)
-- Name: equipamientoserie serieid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipamientoserie ALTER COLUMN serieid SET DEFAULT nextval('public.equipamientoserie_serieid_seq'::regclass);


--
-- TOC entry 4723 (class 2604 OID 16421)
-- Name: modelo modeloid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modelo ALTER COLUMN modeloid SET DEFAULT nextval('public.modelo_modeloid_seq'::regclass);


--
-- TOC entry 4726 (class 2604 OID 16442)
-- Name: serviciosoficiales serviciosid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serviciosoficiales ALTER COLUMN serviciosid SET DEFAULT nextval('public.serviciosoficiales_serviciosid_seq'::regclass);


--
-- TOC entry 4725 (class 2604 OID 16435)
-- Name: vendedores vendedoresid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendedores ALTER COLUMN vendedoresid SET DEFAULT nextval('public.vendedores_vendedoresid_seq'::regclass);


--
-- TOC entry 4730 (class 2604 OID 16485)
-- Name: ventasrealizadas ventasid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventasrealizadas ALTER COLUMN ventasid SET DEFAULT nextval('public.ventasrealizadas_ventasid_seq'::regclass);


--
-- TOC entry 4906 (class 0 OID 16446)
-- Dependencies: 224
-- Data for Name: automovil; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.automovil (numerobastidor, marca, modeloid, descuento, pago, potenciafiscal, cilindrada, estado) VALUES (4, 'Ford', 4, 3, 22000, 0.21, 1.999, 'Nuevo');
INSERT INTO public.automovil (numerobastidor, marca, modeloid, descuento, pago, potenciafiscal, cilindrada, estado) VALUES (3, 'Toyota', 3, 1, 15000, 0.19, 1.798, 'Usado');
INSERT INTO public.automovil (numerobastidor, marca, modeloid, descuento, pago, potenciafiscal, cilindrada, estado) VALUES (2, 'Volkswagen', 2, 2, 18000, 0.17, 1.395, 'Semi-Usado');
INSERT INTO public.automovil (numerobastidor, marca, modeloid, descuento, pago, potenciafiscal, cilindrada, estado) VALUES (1, 'Audi A3', 1, 12, 20000, 0.17, 1.395, 'Nuevo');


--
-- TOC entry 4900 (class 0 OID 16425)
-- Dependencies: 218
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cliente (clienteid, nombre, domicilio, telefono, email) VALUES (4, 'Joe Villalta', 'Oeste', '0994658201', 'joejo@gmail.com');
INSERT INTO public.cliente (clienteid, nombre, domicilio, telefono, email) VALUES (3, 'Juan Neruda', 'Sur', '0943532161', 'juann@hotmail.com');
INSERT INTO public.cliente (clienteid, nombre, domicilio, telefono, email) VALUES (2, 'Luisa Gonzales', 'Este', '0956256484', 'luismiyu@gmail.com');
INSERT INTO public.cliente (clienteid, nombre, domicilio, telefono, email) VALUES (1, 'Maria Flores', 'Norte', '0346589563', 'marimari@outlook.com');


--
-- TOC entry 4908 (class 0 OID 16458)
-- Dependencies: 226
-- Data for Name: equipamientoextra; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4910 (class 0 OID 16470)
-- Dependencies: 228
-- Data for Name: equipamientoserie; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4898 (class 0 OID 16418)
-- Dependencies: 216
-- Data for Name: modelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.modelo (modeloid, nombre, marca) VALUES (4, 'Ford', 'Focus');
INSERT INTO public.modelo (modeloid, nombre, marca) VALUES (3, 'Toyota', 'Corolla');
INSERT INTO public.modelo (modeloid, nombre, marca) VALUES (2, 'Volkswagen', 'Golf');
INSERT INTO public.modelo (modeloid, nombre, marca) VALUES (1, 'Audi A3
', 'Sedan');


--
-- TOC entry 4904 (class 0 OID 16439)
-- Dependencies: 222
-- Data for Name: serviciosoficiales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.serviciosoficiales (serviciosid, nombre, nif, domicilio) VALUES (4, 'Mantenimiento', 2342431, 'Oeste
');
INSERT INTO public.serviciosoficiales (serviciosid, nombre, nif, domicilio) VALUES (3, 'Limpiezas', 25523, 'Este');
INSERT INTO public.serviciosoficiales (serviciosid, nombre, nif, domicilio) VALUES (2, 'Cambios de Repuestos', 34223, 'Sur');
INSERT INTO public.serviciosoficiales (serviciosid, nombre, nif, domicilio) VALUES (1, 'Cambios de Aceites', 132131, 'Norte');


--
-- TOC entry 4902 (class 0 OID 16432)
-- Dependencies: 220
-- Data for Name: vendedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.vendedores (vendedoresid, nombre, domicilio, nif, telefono, email) VALUES (5, 'Tatiana Vegas', 'Norte', 4232442, '0951621546', 'tativ@hotmail.com');
INSERT INTO public.vendedores (vendedoresid, nombre, domicilio, nif, telefono, email) VALUES (4, 'Pablo Aguilar', 'Norte', 243422, '095961565', 'pablito@hotmail.com');
INSERT INTO public.vendedores (vendedoresid, nombre, domicilio, nif, telefono, email) VALUES (3, 'Jose Orellana', 'Este', 523243, '09546155', 'josese@hotmail.com');
INSERT INTO public.vendedores (vendedoresid, nombre, domicilio, nif, telefono, email) VALUES (2, 'Felipe Dumes', 'Oeste', 1231231, '09551465516', 'felii@hotmail.com');
INSERT INTO public.vendedores (vendedoresid, nombre, domicilio, nif, telefono, email) VALUES (1, 'Mario Pineda', 'Sur', 1232414, '0966255624', 'emama@hotmail.com');


--
-- TOC entry 4912 (class 0 OID 16482)
-- Dependencies: 230
-- Data for Name: ventasrealizadas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ventasrealizadas (ventasid, numerobastidor, vendedoresid, serviciosid, clienteid, preciocobrado, modopago, fechaentrega, matricula, stockfabricado) VALUES (1, 3, 5, 1, 3, 204.23, 'Cheque', '2024-02-03', 'Pagada', 3);
INSERT INTO public.ventasrealizadas (ventasid, numerobastidor, vendedoresid, serviciosid, clienteid, preciocobrado, modopago, fechaentrega, matricula, stockfabricado) VALUES (2, 1, 2, 4, 3, 343.45, 'Efectivo', '2024-09-08', 'No Pagada', 5);
INSERT INTO public.ventasrealizadas (ventasid, numerobastidor, vendedoresid, serviciosid, clienteid, preciocobrado, modopago, fechaentrega, matricula, stockfabricado) VALUES (3, 4, 5, 4, 4, 12000, 'Efectivo', '2024-08-02', 'Pagada', 1);
INSERT INTO public.ventasrealizadas (ventasid, numerobastidor, vendedoresid, serviciosid, clienteid, preciocobrado, modopago, fechaentrega, matricula, stockfabricado) VALUES (4, 1, 4, 3, 3, 23000, 'Efectivo', '2024-08-15', 'Pagada', 2);
INSERT INTO public.ventasrealizadas (ventasid, numerobastidor, vendedoresid, serviciosid, clienteid, preciocobrado, modopago, fechaentrega, matricula, stockfabricado) VALUES (5, 1, 3, 2, 3, 25000, 'Efectivo', '2024-08-22', 'Pagada', 4);
INSERT INTO public.ventasrealizadas (ventasid, numerobastidor, vendedoresid, serviciosid, clienteid, preciocobrado, modopago, fechaentrega, matricula, stockfabricado) VALUES (6, 3, 3, 2, 3, -5, 'Tarjeta de Crédito', '1235-03-11', 'Pagada', -5);


--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 223
-- Name: automovil_numerobastidor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.automovil_numerobastidor_seq', 1, false);


--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 217
-- Name: cliente_clienteid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_clienteid_seq', 1, false);


--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 225
-- Name: equipamientoextra_extraid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.equipamientoextra_extraid_seq', 1, false);


--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 227
-- Name: equipamientoserie_serieid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.equipamientoserie_serieid_seq', 1, false);


--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 215
-- Name: modelo_modeloid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.modelo_modeloid_seq', 1, false);


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 221
-- Name: serviciosoficiales_serviciosid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.serviciosoficiales_serviciosid_seq', 1, false);


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 219
-- Name: vendedores_vendedoresid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vendedores_vendedoresid_seq', 1, false);


--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 229
-- Name: ventasrealizadas_ventasid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ventasrealizadas_ventasid_seq', 6, true);


--
-- TOC entry 4740 (class 2606 OID 16451)
-- Name: automovil automovil_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.automovil
    ADD CONSTRAINT automovil_pkey PRIMARY KEY (numerobastidor);


--
-- TOC entry 4734 (class 2606 OID 16430)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (clienteid);


--
-- TOC entry 4742 (class 2606 OID 16463)
-- Name: equipamientoextra equipamientoextra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipamientoextra
    ADD CONSTRAINT equipamientoextra_pkey PRIMARY KEY (extraid);


--
-- TOC entry 4744 (class 2606 OID 16475)
-- Name: equipamientoserie equipamientoserie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipamientoserie
    ADD CONSTRAINT equipamientoserie_pkey PRIMARY KEY (serieid);


--
-- TOC entry 4732 (class 2606 OID 16423)
-- Name: modelo modelo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modelo
    ADD CONSTRAINT modelo_pkey PRIMARY KEY (modeloid);


--
-- TOC entry 4738 (class 2606 OID 16444)
-- Name: serviciosoficiales serviciosoficiales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serviciosoficiales
    ADD CONSTRAINT serviciosoficiales_pkey PRIMARY KEY (serviciosid);


--
-- TOC entry 4736 (class 2606 OID 16437)
-- Name: vendedores vendedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendedores
    ADD CONSTRAINT vendedores_pkey PRIMARY KEY (vendedoresid);


--
-- TOC entry 4746 (class 2606 OID 16489)
-- Name: ventasrealizadas ventasrealizadas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventasrealizadas
    ADD CONSTRAINT ventasrealizadas_pkey PRIMARY KEY (ventasid);


--
-- TOC entry 4750 (class 2606 OID 16505)
-- Name: ventasrealizadas fkclienteid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventasrealizadas
    ADD CONSTRAINT fkclienteid FOREIGN KEY (clienteid) REFERENCES public.cliente(clienteid);


--
-- TOC entry 4747 (class 2606 OID 16452)
-- Name: automovil fkmodeloid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.automovil
    ADD CONSTRAINT fkmodeloid FOREIGN KEY (modeloid) REFERENCES public.modelo(modeloid);


--
-- TOC entry 4748 (class 2606 OID 16464)
-- Name: equipamientoextra fkmodeloid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipamientoextra
    ADD CONSTRAINT fkmodeloid FOREIGN KEY (modeloid) REFERENCES public.modelo(modeloid);


--
-- TOC entry 4749 (class 2606 OID 16476)
-- Name: equipamientoserie fkmodeloid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipamientoserie
    ADD CONSTRAINT fkmodeloid FOREIGN KEY (modeloid) REFERENCES public.modelo(modeloid);


--
-- TOC entry 4751 (class 2606 OID 16490)
-- Name: ventasrealizadas fknumerobastidor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventasrealizadas
    ADD CONSTRAINT fknumerobastidor FOREIGN KEY (numerobastidor) REFERENCES public.automovil(numerobastidor);


--
-- TOC entry 4752 (class 2606 OID 16500)
-- Name: ventasrealizadas fkserviciosid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventasrealizadas
    ADD CONSTRAINT fkserviciosid FOREIGN KEY (serviciosid) REFERENCES public.serviciosoficiales(serviciosid);


--
-- TOC entry 4753 (class 2606 OID 16495)
-- Name: ventasrealizadas fkvendedoresid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventasrealizadas
    ADD CONSTRAINT fkvendedoresid FOREIGN KEY (vendedoresid) REFERENCES public.vendedores(vendedoresid);


-- Completed on 2024-08-06 19:12:59

--
-- PostgreSQL database dump complete
--

