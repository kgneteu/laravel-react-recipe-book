--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.0

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
-- Name: categories; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.categories (
    id bigint NOT NULL
);


ALTER TABLE public.categories OWNER TO chef;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO chef;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: category_names; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.category_names (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    category_id bigint NOT NULL,
    language character varying(2) DEFAULT 'en'::character varying NOT NULL
);


ALTER TABLE public.category_names OWNER TO chef;

--
-- Name: category_names_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.category_names_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_names_id_seq OWNER TO chef;

--
-- Name: category_names_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.category_names_id_seq OWNED BY public.category_names.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO chef;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO chef;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: ingredient_names; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.ingredient_names (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    ingredient_id bigint NOT NULL,
    language character varying(2) DEFAULT 'en'::character varying NOT NULL
);


ALTER TABLE public.ingredient_names OWNER TO chef;

--
-- Name: ingredient_names_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.ingredient_names_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingredient_names_id_seq OWNER TO chef;

--
-- Name: ingredient_names_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.ingredient_names_id_seq OWNED BY public.ingredient_names.id;


--
-- Name: ingredients; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.ingredients (
    id bigint NOT NULL,
    unit_id bigint NOT NULL
);


ALTER TABLE public.ingredients OWNER TO chef;

--
-- Name: ingredients_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.ingredients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingredients_id_seq OWNER TO chef;

--
-- Name: ingredients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.ingredients_id_seq OWNED BY public.ingredients.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO chef;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO chef;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: model_has_permissions; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE public.model_has_permissions OWNER TO chef;

--
-- Name: model_has_roles; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE public.model_has_roles OWNER TO chef;

--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO chef;

--
-- Name: permissions; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.permissions OWNER TO chef;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permissions_id_seq OWNER TO chef;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO chef;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO chef;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: photos; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.photos (
    id bigint NOT NULL,
    file_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.photos OWNER TO chef;

--
-- Name: photos_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photos_id_seq OWNER TO chef;

--
-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.photos_id_seq OWNED BY public.photos.id;


--
-- Name: recipe_bodies; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.recipe_bodies (
    id bigint NOT NULL,
    body text NOT NULL,
    recipe_id bigint NOT NULL,
    language character varying(2) DEFAULT 'en'::character varying NOT NULL
);


ALTER TABLE public.recipe_bodies OWNER TO chef;

--
-- Name: recipe_bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.recipe_bodies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipe_bodies_id_seq OWNER TO chef;

--
-- Name: recipe_bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.recipe_bodies_id_seq OWNED BY public.recipe_bodies.id;


--
-- Name: recipe_ingredients; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.recipe_ingredients (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    unit_id bigint NOT NULL,
    amount numeric(8,2) NOT NULL
);


ALTER TABLE public.recipe_ingredients OWNER TO chef;

--
-- Name: recipe_ingredients_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.recipe_ingredients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipe_ingredients_id_seq OWNER TO chef;

--
-- Name: recipe_ingredients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.recipe_ingredients_id_seq OWNED BY public.recipe_ingredients.id;


--
-- Name: recipe_titles; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.recipe_titles (
    id bigint NOT NULL,
    title character varying(256) NOT NULL,
    recipe_id bigint NOT NULL,
    language character varying(2) DEFAULT 'en'::character varying NOT NULL
);


ALTER TABLE public.recipe_titles OWNER TO chef;

--
-- Name: recipe_titles_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.recipe_titles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipe_titles_id_seq OWNER TO chef;

--
-- Name: recipe_titles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.recipe_titles_id_seq OWNED BY public.recipe_titles.id;


--
-- Name: recipes; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.recipes (
    id bigint NOT NULL,
    category_id bigint NOT NULL,
    creator_id bigint NOT NULL,
    photo_id bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.recipes OWNER TO chef;

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_id_seq OWNER TO chef;

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.recipes_id_seq OWNED BY public.recipes.id;


--
-- Name: role_has_permissions; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.role_has_permissions OWNER TO chef;

--
-- Name: roles; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.roles OWNER TO chef;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO chef;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: units; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.units (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) DEFAULT 'm'::character varying NOT NULL
);


ALTER TABLE public.units OWNER TO chef;

--
-- Name: units_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.units_id_seq OWNER TO chef;

--
-- Name: units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.units_id_seq OWNED BY public.units.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: chef
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO chef;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: chef
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO chef;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chef
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: category_names id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.category_names ALTER COLUMN id SET DEFAULT nextval('public.category_names_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: ingredient_names id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.ingredient_names ALTER COLUMN id SET DEFAULT nextval('public.ingredient_names_id_seq'::regclass);


--
-- Name: ingredients id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.ingredients ALTER COLUMN id SET DEFAULT nextval('public.ingredients_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: photos id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.photos ALTER COLUMN id SET DEFAULT nextval('public.photos_id_seq'::regclass);


--
-- Name: recipe_bodies id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipe_bodies ALTER COLUMN id SET DEFAULT nextval('public.recipe_bodies_id_seq'::regclass);


--
-- Name: recipe_ingredients id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipe_ingredients ALTER COLUMN id SET DEFAULT nextval('public.recipe_ingredients_id_seq'::regclass);


--
-- Name: recipe_titles id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipe_titles ALTER COLUMN id SET DEFAULT nextval('public.recipe_titles_id_seq'::regclass);


--
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipes ALTER COLUMN id SET DEFAULT nextval('public.recipes_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: units id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.categories (id) FROM stdin;
1
2
3
4
\.


--
-- Data for Name: category_names; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.category_names (id, name, category_id, language) FROM stdin;
1	Beer	1	en
2	Wine	2	en
3	Whiskey	3	en
4	Vodka	4	en
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: ingredient_names; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.ingredient_names (id, name, ingredient_id, language) FROM stdin;
\.


--
-- Data for Name: ingredients; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.ingredients (id, unit_id) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
5	2021_11_23_230140_create_categories_table	1
6	2021_11_23_230140_create_category_names_table	1
7	2021_11_23_230140_create_photos_table	1
8	2021_11_23_230141_create_recipes_table	1
9	2021_11_23_230142_create_recipe_bodies_table	1
10	2021_11_23_230142_create_recipe_titles_table	1
11	2021_11_23_230644_create_units_table	1
12	2021_11_23_230723_create_ingredients_table	1
13	2021_11_23_230724_create_ingredient_names_table	1
14	2021_11_23_230759_create_recipe_ingredients_table	1
15	2021_12_01_031741_create_permission_tables	1
\.


--
-- Data for Name: model_has_permissions; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
\.


--
-- Data for Name: model_has_roles; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.photos (id, file_name, created_at, updated_at) FROM stdin;
1	/images/seed/1/8.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
2	/images/seed/2/7.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
3	/images/seed/1/6.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
4	/images/seed/1/7.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
5	/images/seed/2/7.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
6	/images/seed/4/8.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
7	/images/seed/1/9.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
8	/images/seed/4/8.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
9	/images/seed/1/3.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
10	/images/seed/4/4.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
11	/images/seed/2/7.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
12	/images/seed/3/1.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
13	/images/seed/4/4.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
14	/images/seed/4/6.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
15	/images/seed/3/5.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
16	/images/seed/2/9.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
17	/images/seed/4/3.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
18	/images/seed/4/3.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
19	/images/seed/3/10.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
20	/images/seed/3/2.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
21	/images/seed/1/9.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
22	/images/seed/2/6.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
23	/images/seed/4/8.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
24	/images/seed/1/10.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
25	/images/seed/1/10.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
26	/images/seed/2/5.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
27	/images/seed/2/6.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
28	/images/seed/2/2.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
29	/images/seed/3/9.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
30	/images/seed/2/7.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
31	/images/seed/3/4.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
32	/images/seed/2/9.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
33	/images/seed/1/1.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
34	/images/seed/3/2.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
35	/images/seed/4/8.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
36	/images/seed/1/4.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
37	/images/seed/4/1.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
38	/images/seed/1/9.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
39	/images/seed/2/2.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
40	/images/seed/1/4.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
41	/images/seed/3/3.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
42	/images/seed/2/4.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
43	/images/seed/4/7.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
44	/images/seed/3/10.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
45	/images/seed/3/3.jpg	2021-12-02 21:51:05	2021-12-02 21:51:05
46	/images/seed/2/2.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
47	/images/seed/4/5.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
48	/images/seed/4/3.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
49	/images/seed/3/9.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
50	/images/seed/3/6.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
51	/images/seed/4/8.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
52	/images/seed/2/7.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
53	/images/seed/4/10.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
54	/images/seed/1/4.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
55	/images/seed/4/5.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
56	/images/seed/1/8.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
57	/images/seed/2/2.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
58	/images/seed/3/1.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
59	/images/seed/4/5.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
60	/images/seed/1/8.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
61	/images/seed/3/4.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
62	/images/seed/3/6.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
63	/images/seed/4/8.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
64	/images/seed/1/10.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
65	/images/seed/4/8.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
66	/images/seed/3/8.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
67	/images/seed/3/2.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
68	/images/seed/3/3.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
69	/images/seed/4/3.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
70	/images/seed/2/5.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
71	/images/seed/4/7.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
72	/images/seed/3/9.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
73	/images/seed/3/1.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
74	/images/seed/3/5.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
75	/images/seed/1/8.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
76	/images/seed/4/2.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
77	/images/seed/1/6.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
78	/images/seed/1/2.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
79	/images/seed/1/9.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
80	/images/seed/2/1.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
81	/images/seed/2/8.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
82	/images/seed/3/9.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
83	/images/seed/3/1.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
84	/images/seed/3/5.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
85	/images/seed/3/4.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
86	/images/seed/4/8.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
87	/images/seed/1/3.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
88	/images/seed/1/10.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
89	/images/seed/2/6.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
90	/images/seed/1/2.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
91	/images/seed/1/1.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
92	/images/seed/3/5.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
93	/images/seed/3/3.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
94	/images/seed/1/1.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
95	/images/seed/4/8.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
96	/images/seed/3/2.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
97	/images/seed/3/10.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
98	/images/seed/4/3.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
99	/images/seed/3/7.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
100	/images/seed/3/5.jpg	2021-12-02 21:51:06	2021-12-02 21:51:06
\.


--
-- Data for Name: recipe_bodies; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.recipe_bodies (id, body, recipe_id, language) FROM stdin;
1	Praesentium consequuntur quibusdam aspernatur quis at quia repudiandae. Explicabo voluptatem excepturi omnis expedita expedita. Quam harum aperiam laborum repudiandae. Et molestias voluptatibus voluptas aliquid qui unde recusandae. Incidunt autem iste et atque. Natus accusantium ut praesentium perspiciatis sint. Molestiae dignissimos qui iusto ducimus voluptatem occaecati similique. Labore aliquid ut et omnis pariatur. Ut odio nihil corrupti fugiat quo et voluptate. Beatae enim in quia. Dignissimos officiis odit laboriosam ducimus.	1	en
2	Reprehenderit odit in provident commodi. Molestias repellendus quidem dolore ducimus dolores fugit et. Impedit blanditiis magnam consequatur et iure itaque voluptatibus reiciendis. Ducimus fugit et expedita autem et qui et. Dolorem et error similique rerum hic. Dolor a laudantium minus sit. Voluptatum eius in non labore ad sint ab. Aliquid hic veniam saepe doloribus ut aut. Ex necessitatibus ut fugit molestiae in deleniti. Repudiandae ratione id dolor sed aliquid corporis. Porro sed voluptates laboriosam. Praesentium aliquid dolore nostrum sint aperiam. Dolor qui quam quibusdam et.	2	en
3	Et et illo et enim et. Quia est sint atque voluptas. Omnis voluptatibus repudiandae cupiditate. Vel eius nostrum sit quia. Nobis quidem sed tempore voluptatem. Quidem vel et atque minus nihil architecto quia. Est quo quaerat nulla sapiente. Ut ad voluptatum et corrupti aut cum quo atque. Vero error voluptas est culpa. Non libero mollitia dignissimos eum reiciendis nulla. Laboriosam iste enim deserunt quidem veritatis a et eveniet. Odio quis temporibus ipsa nemo et voluptas qui odit. Quis alias hic in odio in alias deserunt. Ratione sit voluptas culpa architecto voluptate qui quo.	3	en
4	Eveniet voluptatem assumenda error. Quos omnis ut quam autem id. Quia temporibus odio eius. Nulla perferendis iste sunt pariatur aut. Alias aut accusamus nobis sint aperiam. Nihil velit ipsam et molestiae ut unde mollitia alias. Alias sit dolores temporibus tempore repellat voluptas velit. Est accusamus quia dolorum et nihil. Rerum eaque dolor quae eum sit nam. Amet ipsam rerum molestiae fugit fugiat est laborum. Ad magni facere nam enim omnis. Sit quo qui et quia. Deleniti qui omnis officia occaecati fugiat ipsam qui. Aut voluptas officiis suscipit est sunt est autem voluptas.	4	en
5	Occaecati voluptas labore consequatur est eos ut. Cupiditate aspernatur eligendi eos odit sint corporis. Et rem at qui sit. Sequi dolore quo sed illo. Ea eos accusantium dolorum rerum officia. Et nihil maxime et nulla praesentium. Voluptatem eaque quis voluptatum quis. Ad asperiores facilis et et dolor. Ea voluptatem ullam eaque fuga soluta officia ducimus. Facilis reprehenderit consequatur tenetur dolor. Deleniti quo vel nisi temporibus aliquid. Sint accusantium doloribus facere itaque quaerat quas. Ut cupiditate eaque voluptates blanditiis deleniti fuga ducimus nisi.	5	en
6	Optio voluptatem incidunt omnis dolorem culpa quis corporis. Vitae omnis velit aliquam accusamus facilis doloremque qui. Soluta consectetur eligendi consequuntur officiis. Perferendis vel facere et molestias labore quia. Neque voluptatem ab nam illo qui sit quia. Enim occaecati enim reprehenderit itaque maiores fugit officiis id. Voluptatem dicta et quia qui quia. Sed vero totam est recusandae. Blanditiis ratione natus et fuga nihil qui iure. Eum incidunt voluptatum nemo dolor. Architecto amet adipisci atque eaque facilis. Architecto perferendis repudiandae autem sint accusantium autem natus.	6	en
7	Non iure accusantium debitis voluptatum fugit nulla quasi. Sapiente sed maiores porro inventore. Necessitatibus et sint aut aliquid dolorem delectus. Dolorum sunt dicta possimus aliquid voluptas quia eveniet dolore. Qui corrupti accusantium sint ipsam. Adipisci expedita fugit tempora deserunt exercitationem. Molestiae explicabo ab consequatur. Possimus itaque quae aut qui nulla occaecati. Commodi temporibus autem beatae sit inventore quia.	7	en
8	Ex deserunt reiciendis repudiandae nam aut quas sunt corrupti. Aut est modi et ratione. Perferendis debitis eos velit est nemo fuga quae. Quia voluptas perspiciatis officia et nisi eius. Id voluptates est suscipit ipsa id alias. Esse ab doloribus molestiae cumque. Fugiat mollitia odio quod. Eum magni dolores laboriosam blanditiis sapiente quidem. Ratione et nisi necessitatibus qui quasi consequuntur. Odit a velit accusamus repellendus in iure ipsum. Officia quisquam amet tenetur aliquam unde. Et et quia dolorem veniam nulla sed.	8	en
9	Ut porro quis voluptas est dolores eveniet tempore ipsam. Possimus pariatur veniam quia culpa reprehenderit. Cupiditate recusandae tenetur velit et et quae. Iure accusantium corrupti aliquid. In repellat sunt quidem numquam velit. Animi eaque exercitationem et omnis temporibus error ipsam. Alias ipsum repellendus quo quis. At ipsam odio sit sed laudantium adipisci rem. Est ab aut perferendis dignissimos porro non cupiditate. Et est autem placeat pariatur omnis modi. Quaerat quisquam aut voluptate adipisci saepe qui.	9	en
10	Culpa est officia fugiat deserunt. Incidunt quam reiciendis aut laudantium tempora sit dolor. Ipsam nobis excepturi vel voluptas. Nisi soluta necessitatibus quia rerum optio atque. Fugit mollitia voluptatem et reprehenderit tempora facilis tempore. Est necessitatibus fuga nemo nihil rerum et. Accusantium enim et ut voluptatem sit labore ad expedita. Voluptas deserunt laborum labore sint id sit. Quis suscipit et vel rerum.	10	en
11	Pariatur eveniet placeat fuga nemo. At sunt et dolorem magni voluptas placeat. Repellendus minus occaecati voluptas ut eius ab suscipit. Nihil aliquid dignissimos repellat et perspiciatis harum repellat. Iusto sed cupiditate voluptatem qui possimus. Minima recusandae rerum ipsum ut maiores. Aperiam rerum perferendis facilis assumenda dolores magni. Aut magnam modi quia quibusdam ut voluptatibus. Aut qui quibusdam itaque sit voluptatum voluptate molestias et. Repudiandae accusamus dolorem qui tempora minus assumenda molestias.	11	en
12	Molestiae dolor eum quia sapiente cupiditate. Sed soluta porro qui est commodi accusantium. Odio dolore sed ea facilis dolor. Nostrum id vel aut placeat dolores ad. Molestiae rerum nostrum aut quos eos iste. Repudiandae perspiciatis rem voluptas dolor sit. Velit qui ipsa officiis cum harum excepturi at. Qui blanditiis amet eos exercitationem maiores. Recusandae minima omnis aut corrupti consectetur. Doloribus officia aliquid et id voluptatem dignissimos. Natus quo quas qui dolorem libero aut. Error saepe praesentium laborum expedita. Nihil omnis ut reprehenderit nam perspiciatis nam est. Quo voluptas sed ducimus nemo.	12	en
13	Eum magni numquam alias et totam voluptatem. Beatae voluptatem qui dolore ut aut aut omnis. In quas ex et fugit tempora eos. Aut porro nisi sunt. Autem sint voluptatem illo sit aperiam deserunt numquam. Nisi possimus asperiores eveniet assumenda. Qui enim eos dolores ut qui. Laborum omnis eos est. Et est ut vel consectetur. Ut molestias mollitia nisi illo. Ipsum quia quasi alias sunt. Officiis nemo dicta aut vero sunt hic. Quis odit non eum exercitationem facilis esse. Nostrum voluptas nostrum itaque ad ipsa autem.	13	en
14	Dolorum esse rerum laboriosam molestiae. Dolor nam earum harum consequatur libero at eveniet nihil. Distinctio sint magni libero odio aut ratione voluptates. Blanditiis similique fuga pariatur ducimus. Fugit enim eligendi et eum numquam. Sapiente et hic est sed vero qui saepe. Inventore esse adipisci occaecati voluptatem cum omnis. Illo est quas dolor doloremque quia. Autem animi illum et recusandae inventore incidunt. Et reiciendis laudantium tenetur saepe suscipit ipsa. Laborum alias ut esse et qui ut.	14	en
15	Dolor iste quia molestias et. Dolores consequatur labore delectus totam illum occaecati iusto. Placeat dignissimos eum excepturi et. Quis et aut quia beatae inventore. Est dolorem voluptas explicabo similique distinctio ipsa eveniet. Suscipit vero corporis reiciendis sed. Doloremque nam nesciunt optio sequi sint. Voluptatem vitae est dignissimos sequi perferendis explicabo. Reiciendis itaque maxime omnis voluptas officia et. Omnis corporis rerum facere qui quidem. Molestias quia ducimus mollitia odio. Quia quos cumque nemo pariatur dolores. Aspernatur et sit dolores qui sunt. Ex non quas voluptatem odio voluptatem et consequatur.	15	en
16	Fuga quia assumenda debitis ducimus aut veritatis aut. Quidem et illum dicta vel amet dolor. Assumenda et natus fuga eaque et temporibus consectetur. Libero velit sapiente nisi ratione. Voluptas et est minima possimus. Qui officia rem molestiae neque dolorum aut earum. Officiis quae occaecati officiis. Commodi sequi eos illum ipsam debitis dolorem explicabo. Itaque laborum ut quasi soluta suscipit. Distinctio voluptas iusto quasi hic praesentium doloremque. Adipisci error eos fuga distinctio. Illo adipisci ut saepe veritatis molestiae est quos et.	16	en
17	Voluptatem libero rerum quidem est omnis error. Reiciendis laudantium incidunt rerum inventore. Qui non esse ut velit magni tempora perferendis. Sit dolorem atque eligendi quia. Doloremque laboriosam quas distinctio. Et repellendus neque minus sit. Eaque quia quia earum. Quisquam ab voluptas veritatis dolore maiores aut laborum. Voluptates ad magnam doloremque ipsum culpa odio ipsam. Est architecto et ut illo eos et deleniti.	17	en
18	Omnis atque cum dolores ut consequatur sed magnam. Quia voluptatem adipisci at voluptas tempore. Cum cumque ullam reprehenderit aut excepturi. Velit sunt at et et vel. Voluptates veniam corrupti nihil atque. Magni temporibus ipsa temporibus eos doloribus dolorem. Consectetur iste sed asperiores reprehenderit nostrum. Doloribus autem sunt quia est. Accusantium eaque nostrum assumenda. Et placeat sunt quibusdam autem porro qui at. Error repellendus ipsum quisquam dignissimos. Nihil doloremque sed porro impedit nemo eius magni reiciendis.	18	en
19	Sit id libero doloribus omnis nesciunt. Vitae qui laborum cumque delectus consequatur saepe sed. Impedit cupiditate dolorem quibusdam expedita sunt delectus quaerat. Cupiditate aut non enim fugiat dolor. Deleniti natus tenetur assumenda fugit necessitatibus adipisci. Illum quae quos nisi amet. Tempore est amet provident magni itaque eos. Quia in voluptatem quos repellat eveniet nam est fuga. Quos odit fuga quia atque fuga. Quasi voluptates autem esse dolor optio voluptatibus. Nostrum error est soluta.	19	en
20	Ad doloribus sed nihil molestiae libero. Et ab quidem aspernatur sapiente. Porro iste fuga repellendus optio et. Mollitia quae quis non ratione. Voluptas doloribus suscipit libero aut. Odit laudantium voluptas autem culpa et doloremque. Aut sint eos nemo et numquam consequatur labore omnis. Veniam et sequi rerum laudantium soluta voluptas. Dolorum repellat quod veniam rem et voluptatum. Labore molestiae ut ad id. Omnis quia corrupti eaque error ut illum. Enim minima dolorem blanditiis cum ut facere. Similique dicta et vitae autem. Voluptate sapiente in soluta perspiciatis dolor.	20	en
21	Id voluptatem in voluptates non inventore voluptas. Repudiandae doloremque quam aut nisi fugiat voluptates. Eos molestiae iusto optio aspernatur porro. Accusamus quibusdam voluptas aliquid modi esse officiis. Sed ab quidem et voluptas. Dolor culpa et dolores et et est. Molestiae suscipit blanditiis at. Quia officia atque quo dolorum deserunt. Aut tenetur voluptatem deleniti. Ut temporibus nostrum sunt impedit laboriosam. Suscipit sint velit autem et et et autem. Itaque eos fugit tempora porro qui non dolores. Veritatis asperiores sit sapiente corporis enim. Cumque dolor corrupti at consequatur sunt.	21	en
22	Consequuntur qui dolorem natus consectetur. Dolores quia asperiores non rerum quidem. Ratione nam voluptatem fuga numquam. Id neque accusantium ipsa occaecati dolorum. Modi occaecati repellat et doloremque nostrum. Cumque velit qui dolorum maiores aperiam unde quos. Neque natus et illo totam. Est qui repudiandae et nostrum laborum veritatis nobis. Sit fugiat voluptas veritatis necessitatibus quo. Dolorem odio et ut dolores odio explicabo eveniet.	22	en
23	Quia quo ducimus quod culpa. Error id odit temporibus enim. Dolores ratione aut suscipit libero. Dolorum consequatur et et. Dolorem optio voluptas unde sint. Dolores aut dolor dolores totam voluptas et. Autem reprehenderit sint in dolor atque velit. Sit esse eum architecto. Quo eum fugiat atque quisquam explicabo. Facilis est incidunt harum ipsa qui. Illo vitae non qui earum voluptatum est repudiandae atque. Quibusdam iure molestias praesentium similique et et. Rem enim omnis et recusandae accusantium. Ipsum nam ad quod et error temporibus nobis ut. Illum sit aliquid ex omnis. Vel et accusantium fugit veritatis accusantium placeat.	23	en
24	Non qui et ratione non et eaque. Et nemo dolores suscipit ipsa earum animi. Voluptates omnis est inventore laudantium nihil. Praesentium expedita possimus labore aut quos suscipit est autem. Quasi dolorem eius occaecati. Voluptatem aut adipisci molestiae eos quas. Consequatur sed odio ad aut distinctio eaque. Minima harum fuga consequatur corporis. Aspernatur atque eum et minus et. Mollitia ratione nihil totam rerum laudantium omnis. Dicta ut eos dolore illo consequatur atque occaecati. Aperiam voluptatem error et expedita omnis saepe dolor magnam. In eligendi tempora esse sed error nam amet. Quo quia omnis et soluta aut est.	24	en
25	Nesciunt rerum atque quaerat ut officiis ea reprehenderit. Omnis placeat debitis ipsam quas nam placeat ipsam. Voluptatem vero quia qui ipsam sit est molestiae. Enim itaque iste eaque dolores qui ea consequatur. Rem ut magnam quo qui inventore et enim. Nobis aut atque quasi beatae ut blanditiis dolores. Quam saepe repellendus ratione consequatur nihil. Omnis quia sunt maxime architecto atque inventore aut. Quas et non esse cumque. Dignissimos ut saepe incidunt numquam aperiam. Earum harum placeat beatae consequatur rerum corporis dolorem illum.	25	en
26	Consequuntur non nulla earum blanditiis et exercitationem et. Provident eveniet est veritatis dolorem. Totam repudiandae vitae ut aut eveniet ut quia. Repellat soluta quod numquam eos consequatur. Tenetur velit est reiciendis magni incidunt. Voluptatem adipisci ut velit eos quo voluptatem fugit ut. Ut consequuntur recusandae esse quia non. A voluptatem ullam officia est consequatur architecto et. Molestiae sed qui qui minima pariatur adipisci voluptatem. Quia qui aut voluptatibus ipsa enim delectus. Porro provident illum consequatur voluptatem. Maiores excepturi nam est expedita harum sint aut. Aut vitae non porro similique.	26	en
27	Repellat pariatur ad sed quia rerum omnis sapiente. Deserunt non est sunt perferendis. Perferendis aut voluptas consequuntur neque hic optio recusandae. Voluptate rerum sequi dolorem. Quasi blanditiis ut expedita reprehenderit voluptate quis. Necessitatibus totam qui aut. Ad quo et et qui molestiae. Ut officiis iusto qui assumenda non esse nulla. Ut aut quis soluta quisquam minima. Qui exercitationem incidunt distinctio quidem. Quia atque omnis placeat quam culpa eligendi nobis. Animi est vero autem facere voluptatem suscipit. Et et molestias voluptas et autem omnis vero quisquam. Qui atque et veritatis qui maxime.	27	en
28	Tempore est quasi dignissimos dolorem impedit incidunt. Dolores incidunt hic sed beatae. Quam expedita fugiat ad aut ea. Fugiat quia quia rerum laboriosam numquam odit voluptatem voluptatibus. Accusamus tempore vel enim natus. Qui at laborum recusandae quam natus recusandae inventore aut. Maiores consectetur explicabo asperiores. Iste id quaerat velit. Sit laborum totam omnis et. Et consequatur eum et velit dolorem natus sequi. Dolor voluptas sit qui aut. Provident excepturi non delectus delectus iste voluptatem. Sit corporis similique delectus dolores reprehenderit et provident alias. Veniam nisi ducimus qui in et voluptate.	28	en
29	Soluta expedita consequatur voluptas nisi placeat. At nobis eos minima dolore et. Qui sed delectus aliquam. Vel alias vero iusto. Adipisci laudantium temporibus est qui. Nemo cum earum sapiente sunt sunt voluptatem. Eos soluta cum eos voluptas blanditiis quo. Accusamus quia pariatur ut sint at cum in. Nihil qui voluptatem est omnis eveniet perspiciatis optio repudiandae. Fuga ut enim quam quisquam deleniti reiciendis. Nemo vel quia omnis cupiditate ullam.	29	en
30	Eos illo ut necessitatibus error nisi. Aut eos dicta sunt neque. Sequi aut laboriosam dicta ex error. Quam fugit et deserunt. Voluptates totam consequatur minus consequuntur vero voluptatem. Minima voluptas similique provident illo ut quos. Libero ea qui fuga et. Est sed expedita eaque in. Aliquam tenetur autem dolorem dolor. Natus repellendus sint a labore vel voluptas. Magnam sed aliquid error consequuntur nulla possimus. Itaque quae fuga error nam ullam maiores magnam. Optio culpa rerum doloremque dolor illum at voluptate.	30	en
31	Consequatur nihil voluptatem nihil iure quia. Adipisci accusamus ut beatae vitae tenetur enim. Quisquam rerum dolorem qui nostrum incidunt beatae. Officiis cum ea quidem perferendis consequatur cum. Voluptatum voluptas eos fugit. Quidem repellat aspernatur ab deleniti et eum accusamus. Ut voluptatem molestiae et iste ipsum dicta qui eos. Officiis rerum eos cumque quibusdam molestiae sed voluptates. Ut quibusdam ipsum est. Et quidem provident illum maiores. Sit libero aut possimus quidem blanditiis. Rem exercitationem non sed ut odit quod.	31	en
32	Voluptatem libero fugiat et accusamus asperiores molestias inventore perspiciatis. Ratione ad culpa natus iste tenetur. Omnis qui debitis corrupti eveniet ad corrupti. Odit facilis animi soluta tempora. Eum et laudantium vel assumenda. Dicta consequuntur enim sed ea quia numquam magnam. Doloribus alias excepturi est sed non. Amet fugiat dolore alias et odio. Voluptas et laborum pariatur consequatur. Praesentium quibusdam eius dolorem optio. Consequatur sit non ea et. Molestiae voluptatibus accusamus similique quo voluptatibus fuga.	32	en
33	Qui numquam dolore architecto laudantium consectetur beatae et. Ab magni consequuntur et maxime reprehenderit. Atque optio sed et omnis labore. Ex omnis quo inventore dolorem. Eum at est nam et corporis sed. Officia quo maiores eos corporis beatae consequatur fugiat. Quia repellat quis ut esse. Eius consequuntur ut atque possimus delectus rerum at voluptatem. Qui qui est quod tempora. Quidem ea accusamus ut laborum. Aut sed et accusantium officia et sapiente.	33	en
34	Blanditiis dolorum magnam et eum sunt earum eum. Architecto nisi voluptatem voluptates. Praesentium quisquam veniam sunt impedit. Molestias aut vitae eos distinctio voluptates. Debitis est sequi voluptatibus non praesentium. Rerum quas quibusdam nobis. A nisi aut recusandae nihil omnis quibusdam. Accusamus enim sapiente doloremque et neque similique iure ut. Exercitationem consequatur maiores temporibus hic voluptatem rerum dolor. Architecto commodi rerum qui consequatur. Ipsum tenetur officiis sit voluptatem ut cum. Alias modi omnis consequuntur et magni officia qui distinctio. Quos incidunt consequatur culpa vitae.	34	en
35	Explicabo sit quia iste doloremque non sunt. Repellat esse eos possimus sit vel ut veniam. Itaque assumenda quidem reiciendis et aut. Qui veniam enim qui dolor. Voluptas vero rerum minima deserunt veritatis. Aspernatur voluptatibus consequuntur magnam temporibus aspernatur odit. Ad dignissimos suscipit autem enim. Error consequatur sit tempora. Ea eos qui harum expedita consectetur. Sed et dolorem aut earum quod quia est dolorem. Repudiandae fugiat labore eos dolorem. Incidunt aut quo quo omnis iusto ipsa quos. Saepe iusto beatae perspiciatis sit ex incidunt velit. Ipsum quod at nam illo sed. Alias accusamus nulla ab quam.	35	en
36	Suscipit porro qui dolores eos. Aperiam asperiores ab aut illo. Molestias labore ipsam nulla eos harum. Rerum id occaecati sed facilis quia et illo magnam. Non fugit nulla et. Molestiae qui sint qui culpa. Sit beatae reiciendis aut fugiat. Ullam maiores odio dolores reiciendis id consequatur sit. Incidunt nostrum est consectetur tempora officiis quam. Magni dolor itaque fuga ipsum corrupti numquam aspernatur. Excepturi sit quod maxime quaerat. Impedit error enim placeat consequuntur vel veniam. Reprehenderit dolorum cupiditate vel laboriosam dolor. Inventore repudiandae blanditiis eum. Aliquam hic reiciendis illo dolorem deserunt.	36	en
37	Est tempore dolores nisi voluptatem nobis accusamus voluptatum. Dicta repellendus consequatur et quod doloremque ab deserunt. Et ut nam laboriosam aut rerum. Nihil assumenda eum reiciendis accusantium quia. Excepturi praesentium eligendi rerum ratione est eum. Consequuntur itaque veritatis quis harum eos illum est velit. Neque quasi est provident veniam delectus. Eveniet ipsa vitae quia aut omnis quia. Et qui molestias voluptatem officiis iusto. Reiciendis quod fugit pariatur alias beatae. Temporibus tempore eveniet voluptatem reprehenderit beatae ad earum. Dolorem minus quasi dolorum ipsum.	37	en
38	Praesentium nihil ab est earum quo iure. Dolores consectetur molestiae tenetur cupiditate occaecati. Modi neque ut quod sit ab voluptatem est. Qui sit sit voluptates blanditiis qui. Praesentium soluta in ab quidem dolorem dolorem non pariatur. Sed nihil cum qui porro. Possimus quisquam sit omnis illum. Facere autem aut ratione accusantium dolor nobis dolor. Aspernatur atque sapiente deserunt quidem aperiam sunt eum. Harum consequatur non sunt nihil rerum vel tempore excepturi. Ipsa iusto et nostrum ullam earum. Quis iste in qui molestiae est quidem odit. Earum dolor mollitia sunt.	38	en
39	Enim ab quo rerum voluptas aut minus harum. In reiciendis animi et quam. Totam eaque quia tenetur voluptatem et dolorem voluptas. Repellendus occaecati temporibus qui alias. Harum sequi dolores quo quod cupiditate molestiae ipsa. Enim suscipit fuga harum quia nihil voluptas totam. Dicta aut qui itaque quod consequuntur id aut. Sunt numquam quae soluta provident voluptates officiis et. Animi atque architecto iusto laboriosam voluptatibus qui. Accusamus perferendis quo quidem. Pariatur quasi dolorem atque error quae et. Quo et iure commodi voluptate sint.	39	en
40	Aperiam esse doloribus est mollitia ipsa. Aspernatur ut ipsa perspiciatis tempore nihil quia qui. Nemo aliquid esse dolorum quaerat sed. Nisi alias optio eveniet ullam suscipit. Ducimus est aliquid aut sit. Enim reiciendis error aut nostrum at ullam. A quasi nulla magnam. Sed atque in vel repellendus qui ut. Doloremque adipisci in eos. Quaerat necessitatibus nihil et nostrum et et in. Iure itaque veritatis nihil. Amet tempora rerum laudantium mollitia. Totam libero et voluptatibus quas voluptatem quaerat sed.	40	en
41	Odio culpa est cupiditate laboriosam est delectus. Illum consequatur non doloremque eos officiis. Qui qui perspiciatis quo modi officia nostrum omnis. Maiores tempore consequatur in rerum. Quibusdam consectetur consequatur exercitationem perferendis earum dolorum aperiam. Est est labore sint deserunt in eum recusandae suscipit. Et et soluta facilis quia. Nobis similique temporibus id natus rerum et. Laudantium rerum ut voluptates suscipit qui non. Est nemo fugiat reprehenderit omnis asperiores adipisci. Ut est corrupti ut odit provident et. Nostrum sunt officia quam harum quo eum modi rerum.	41	en
42	Non doloribus nobis eligendi dolorem qui odit quis. Fuga sit molestiae exercitationem earum quo exercitationem. Ipsam fugit sunt magni dicta eos numquam quisquam ab. Non voluptatem at quia in quaerat soluta nobis. Vel dolorum autem fuga praesentium consequatur est. Consectetur omnis autem fugit qui. Placeat sed culpa perspiciatis vel vero. Impedit sed error aliquid et nemo. Ratione consequatur praesentium dolore aut id. Vel alias veniam culpa. Qui aut perferendis aut aliquid assumenda.	42	en
43	Aut aspernatur quis ullam rerum omnis. Magnam voluptatem qui quas iure dignissimos beatae. Vel aut eaque est qui. Sunt quod cumque possimus et corporis. Quis magni ex eligendi voluptas ut. Cumque voluptas eum voluptas sunt. Pariatur et rerum molestias repellat. Laboriosam vero illo facere exercitationem enim. Fugiat et sunt quis voluptatem. Cumque ullam fugit explicabo vitae minima. Dolore eos error facere quam accusamus mollitia. Qui aspernatur vel similique magni. Quas nulla sed deserunt non saepe unde. Cum tenetur suscipit facilis dolores corrupti rerum nesciunt tempora. Et esse aspernatur quibusdam eaque praesentium fugit.	43	en
44	Velit a totam laudantium porro. Cumque dolor laudantium numquam temporibus quo. Culpa porro molestias consequatur fugiat est maxime. Voluptatem vel pariatur omnis et beatae. Quam autem ad architecto aliquid. Quia molestiae dolorum voluptatem voluptas id at voluptatibus praesentium. Et aut odio omnis labore quia eos. Distinctio sapiente labore sint molestiae dolores libero ullam. Vitae provident vel sit velit rerum tempora facilis doloribus. Fugit temporibus dignissimos blanditiis illo dolorum porro. Et nostrum temporibus sunt aut.	44	en
45	Natus aperiam laboriosam mollitia assumenda distinctio et consequuntur ad. Ex sed soluta fugiat neque. Cum laboriosam non ipsa eos dolor aperiam sunt sed. Exercitationem quia temporibus non facilis amet repellat fugit. Ut et nihil aspernatur laborum. Neque dolor voluptas laborum. Totam quo deleniti cumque impedit facilis voluptatum at omnis. Molestiae excepturi molestias quae sapiente ad. Qui voluptas sunt veniam et exercitationem non. Et sit quae itaque et. Et dicta eveniet ipsam molestias ut accusamus natus iusto. Perferendis aut similique dignissimos aut omnis. Dolor itaque et autem odio qui non blanditiis.	45	en
46	Maiores ducimus vitae aut recusandae sit ipsa odio laboriosam. Quod non dolores ea ea qui. Tempora repudiandae beatae perferendis voluptas similique. Et architecto quas eos cumque. Quis quis voluptas totam sequi. Libero excepturi ut voluptate enim in voluptas blanditiis temporibus. Voluptatem et temporibus consequatur sed. Ab iure earum sed sit voluptas suscipit. Et ut temporibus veritatis provident aut nobis. Labore odit pariatur mollitia velit. Est eum mollitia soluta molestiae. Aut repellat perspiciatis modi eos est. Ratione ipsum occaecati nostrum maxime veniam ex.	46	en
47	Ullam mollitia tempore accusantium tempore sed ea nemo non. Praesentium laboriosam aperiam sint non. Debitis ut enim aut. Et qui voluptates fuga voluptatibus. Autem voluptas laboriosam modi sequi occaecati recusandae. Voluptatem qui quis expedita beatae. Autem illum et autem laudantium. Non eaque quibusdam quod et nam eveniet. Iste eum facilis sequi omnis commodi aut ipsa. Est rerum nam enim. Qui quas quas mollitia maxime sed maxime. Voluptas hic sit reiciendis qui. Et et tempora est molestiae quos recusandae. Eum occaecati aliquid ratione corporis nobis molestias consequuntur. Occaecati voluptate totam est.	47	en
48	Porro repudiandae recusandae facilis tempora voluptatem ut cumque. Sapiente vero similique aut ipsa est eos. Quibusdam temporibus qui occaecati ut vitae. Omnis sint magni voluptatem reprehenderit rerum similique eaque ullam. Illo perspiciatis praesentium velit est praesentium iusto. Labore fugit nostrum error similique. Et aut rerum mollitia voluptatem accusamus repellendus architecto. Cupiditate quisquam quia adipisci. Consequatur debitis ut assumenda et veniam facilis. Et ducimus molestiae maiores perspiciatis sed rerum voluptas. Sunt sit excepturi quaerat voluptas. Beatae aliquid nihil reprehenderit aut molestias et.	48	en
49	Id dolor magni expedita vero voluptatem et consectetur. Blanditiis quaerat vel aliquam doloremque occaecati. Ratione sed a quas aut atque aut ut est. Quas omnis consectetur laboriosam eos. Et est soluta magni et eius. Quas qui eius et iusto voluptatem voluptas. Voluptates laborum sequi corrupti qui voluptatem voluptatem. Sunt sequi laboriosam odio beatae. Magnam quisquam repudiandae quisquam nesciunt laborum autem. Velit quo ab quia minima ut quae omnis quia. Nobis nihil sed sint modi sed labore qui iste. Reiciendis id non cumque qui nesciunt. Corporis animi laudantium inventore labore est non sit nostrum.	49	en
50	Praesentium tempora maiores dolore est nam consequatur vero. Sed dolore est nemo porro commodi. Et expedita doloribus provident commodi vel alias et. Eos explicabo qui voluptas est eos libero vero et. Sed ut natus sunt dolorem necessitatibus corporis. Saepe qui aut quos. Voluptatum esse necessitatibus saepe non architecto. Eaque omnis voluptatibus consequatur sunt asperiores sed numquam. Veritatis ducimus dolorem at quaerat voluptate non. Id non molestiae aut dicta et et cupiditate in.	50	en
51	Possimus labore commodi facere cumque. At veritatis similique magni molestiae minus sed perferendis. Voluptatem voluptatem maiores qui. Ut enim sapiente earum. Quis nisi qui et ut error. Voluptas dolore magnam corrupti numquam tempore consectetur unde quia. Rerum quod dolorum eaque rerum praesentium doloribus qui quis. Similique laborum aut ea pariatur enim. Harum at sint fugiat sunt aut labore. Magni expedita adipisci omnis id reprehenderit ullam accusamus. Sed dolores laborum adipisci praesentium illo est inventore.	51	en
52	Maxime omnis excepturi dignissimos consequuntur hic ab. Qui praesentium incidunt ducimus. Eum dolor maxime iste porro quasi eius. Quidem id ut ut recusandae. Quia id necessitatibus quos minus et consequuntur est. Nemo mollitia ut vel. Minus esse iusto dolore voluptas magni. Exercitationem aut mollitia recusandae assumenda rerum expedita natus rerum. Repellendus omnis tenetur dolor iure praesentium sunt enim. Illo quo sint ullam eos enim quis. Est a quas dicta magni ipsa. Iusto vel nostrum iste eum ipsam est. Asperiores sit aspernatur laboriosam officiis. Ea voluptatibus quisquam ut veritatis veniam veniam ut atque.	52	en
53	Provident earum veniam alias ipsa placeat repellat excepturi. Itaque alias necessitatibus sit. Facilis totam consequuntur sit magnam sit voluptatem voluptatibus iure. Autem autem tempore eum velit quidem illo laborum. Sit repellat omnis non quo perferendis laudantium distinctio. Accusamus amet beatae voluptatem minus tenetur voluptatem tempora. Accusamus molestias occaecati ipsam architecto. Et ipsam voluptatibus repellat cumque voluptas voluptatem qui. Sed iusto blanditiis sunt sunt qui sed quisquam. Quia cupiditate corrupti qui minus ut.	53	en
54	Quis aut vel et sequi quis iure alias. Est aut corporis est corrupti perferendis a. Et voluptatum rerum magnam quia sed delectus doloremque. Quia sequi animi explicabo. Cum delectus et vel excepturi hic. Quasi illo impedit libero occaecati quia et rem in. Facere magnam non rerum tenetur voluptatem vel saepe. Veritatis repellendus quo excepturi in est dolores rerum. Distinctio aperiam id dolorem distinctio pariatur. Quas et tempore ea occaecati et itaque perspiciatis. Rerum omnis iure mollitia quo omnis. Et doloribus odit est aut in fuga modi.	54	en
55	Aut eaque aperiam incidunt commodi. Qui consequatur blanditiis optio. Totam voluptatem quos nesciunt dolorum accusamus ut id. Cum aperiam reiciendis itaque omnis atque rerum. Fugit et natus nihil ab. Incidunt atque occaecati qui dicta accusantium. Et provident ut autem sit rerum quae eum. Aut animi quasi laudantium enim molestias dolorum. Sit architecto a nemo non voluptas earum facilis voluptatem. Architecto quos quasi quia culpa expedita doloremque commodi possimus.	55	en
56	Saepe qui aut recusandae. Quam et labore dignissimos et rerum tenetur eius. Qui quas ipsam voluptas itaque. Molestias consectetur corrupti nam. Consequuntur facilis qui placeat labore consequatur delectus ab. Nesciunt sunt cupiditate alias eius ea quas totam. Quaerat neque ut eligendi quae. Maxime sit et quis laborum quo. Ullam voluptas eum eos quod praesentium ut natus incidunt. Id nemo qui voluptatibus magnam sit dicta quod. Ullam placeat in dolore expedita natus rerum. Voluptatem nulla ut aperiam ducimus vitae.	56	en
57	Voluptatem aut harum culpa quia nisi. Nihil voluptatem ut aliquid mollitia vitae dolorum. Aut dolores quia voluptates voluptatem ullam autem. Nemo quis animi veniam magni omnis animi recusandae. Reprehenderit corrupti facilis velit dignissimos autem. Quo quo exercitationem aut dicta. Illo quae perferendis sed ut. Eius fugit facere ea voluptatem. Sunt sed nesciunt enim aut. Aut rem et libero. Similique harum sed facilis nesciunt sint quae porro. Similique eveniet debitis quasi ut veritatis. Eius quaerat ab nesciunt dolores assumenda quo labore.	57	en
58	Quae maxime neque et quam reprehenderit numquam dignissimos. Impedit corporis quasi labore id ut atque. Eaque aperiam mollitia debitis. Officiis tempora voluptatem et assumenda placeat accusamus id. Animi deleniti occaecati nobis ipsum aut tempora. Sit ducimus asperiores soluta numquam. Quisquam omnis nisi expedita nisi sit. Eum illo eos reiciendis atque ex recusandae. Omnis qui voluptas laudantium officia quo. Et voluptatem assumenda odio ipsa animi pariatur.	58	en
59	Quidem non rerum voluptatem explicabo. Quas laboriosam corrupti ratione vitae in. Voluptates placeat modi saepe alias. Facilis nobis magnam modi sint sed. Nostrum illo doloremque non earum vel nobis. Veniam unde autem qui aut officia. Nesciunt itaque illum autem sed hic dolores. Quae quia odio et sint. Et exercitationem commodi et distinctio facilis. Aperiam itaque molestiae atque commodi fuga occaecati doloribus. Asperiores est vero rem eius. Perspiciatis consequatur est est numquam nihil sint vel. Voluptatem sit nihil quam quasi et ipsum. Quod dolore voluptas non velit placeat et laudantium. Nostrum quia ratione qui.	59	en
60	Et iure autem illum molestiae autem rem. Sapiente dolorum cumque voluptatem autem saepe magnam. Velit veniam fugit tempore doloribus architecto corporis et nesciunt. Et totam in consequatur aut. Molestiae aut modi id et qui et et. Qui et qui ut ipsum perferendis. Qui et ducimus excepturi et. Quas eos corrupti voluptas eos exercitationem. Quis porro dolores in rem. Cupiditate vitae itaque omnis quo quis. Et ratione illum quam illum. Aliquid cum eum animi ratione sit. Est non qui rerum voluptas nam sint. Incidunt eveniet ad consectetur quia ut fugit facilis. Accusantium ipsa dolore et occaecati.	60	en
61	Modi esse quod sed accusamus et maiores consequatur. Doloremque omnis omnis unde. Quis ut esse ratione aspernatur. Et ut aut consequatur et. Deserunt aut quidem unde rerum natus quaerat et. Harum autem necessitatibus rerum optio. Cumque iusto dolore qui saepe nisi in voluptas. Aliquid est ratione eaque. Nesciunt enim reprehenderit eligendi beatae quae expedita. Doloremque qui at non odio explicabo dolores inventore. Necessitatibus odit sunt neque et. Neque qui harum incidunt repellendus voluptatem labore quidem. Enim iusto vitae vitae quibusdam.	61	en
62	Harum eum neque omnis perspiciatis eos at magnam quos. Unde tempore facilis molestiae aliquid. Ut aspernatur dolores architecto ab sit. Sed et illum sit aut. Harum velit cum blanditiis quo. Dolorem nobis ipsum dolore facere sunt. In voluptas cum minus alias vero dolores dolor. Quo distinctio iste explicabo nam. Voluptatem et atque illum explicabo omnis aperiam. Est omnis velit quasi nesciunt sed et. Pariatur reprehenderit provident culpa aspernatur et. Tenetur ex id deleniti tenetur accusamus est.	62	en
63	Ad nihil perferendis quia consequatur eos sed. Ut vitae excepturi dolorem consequatur quam aperiam error. Ut sit sint vero molestias dignissimos. Eligendi occaecati aspernatur consequuntur distinctio. Eos qui at et. Nesciunt quos nulla ipsa quibusdam. Nemo doloribus occaecati doloribus neque quia. Est iusto architecto tempore tempore voluptatem temporibus quo. Voluptatem sint doloremque amet eos. Ducimus excepturi et dolores veritatis quaerat. Eaque recusandae iste illo repudiandae et. Amet aspernatur quod dolore.	63	en
64	Placeat est quas quam est aliquam atque facere. Sed cum qui illum impedit praesentium. Velit eius vel a accusamus ducimus recusandae. Consequuntur et sint explicabo delectus. Minus enim libero quos beatae qui aliquid impedit. Esse et et molestiae dignissimos tenetur. Delectus hic unde ipsum eveniet ipsa rerum. Deserunt est ea et eum est. Ex fugit ea blanditiis tempora assumenda. Reiciendis eum tempore deserunt sint distinctio facere. Neque esse qui corrupti dolores sed aspernatur. Itaque sed quia facilis aut alias vel similique. Excepturi sint aspernatur blanditiis in ipsum. Neque et cumque eos fugiat sit.	64	en
65	Dolores et laudantium ratione ut doloremque. Quisquam aspernatur nemo a quod quam dolore distinctio. Distinctio ipsa reprehenderit soluta alias consequatur explicabo qui. Officiis dolore sit ut enim hic quasi eveniet. Voluptatem sed deserunt omnis nihil sed inventore unde. Ut minus qui quia similique est ut. Quos sint dolorem vero ea ducimus. Eaque voluptate saepe possimus vel iure qui repudiandae. Voluptatem odio est ullam vero. Consequatur debitis cum blanditiis possimus. Nemo aperiam voluptatem animi. Et illum excepturi nostrum dolores in voluptate aperiam.	65	en
66	Aut quia aperiam provident nisi est consequatur et et. Praesentium autem praesentium vitae impedit quis libero. Perspiciatis magni eum non aut debitis officiis. Illo ut consequatur nostrum. Occaecati quod harum voluptate minima et at officiis omnis. Facere quas ut est quibusdam. Minima dicta non voluptatem temporibus recusandae soluta alias. Ipsam et ut consequatur et provident ipsum et veritatis. Et dignissimos libero id animi qui. Voluptatem maxime rerum provident. Porro quia similique et tenetur molestiae autem. Magnam quasi eligendi ab rerum. Et vitae illo quos ipsa dolore aut et.	66	en
67	Rerum animi quibusdam animi repudiandae officiis dolorum quia inventore. Soluta id excepturi ea. Cumque vitae non asperiores. Eos rerum dolorem natus corrupti a. Ipsum ad dignissimos maxime non qui quam ullam quo. Pariatur libero qui id molestiae consequatur. Suscipit et qui error enim quas velit. Et ea magni ea adipisci aperiam. Reprehenderit architecto hic in dolorem inventore optio assumenda. Voluptatem facilis dolor illo inventore. Soluta non sed nostrum nulla consequatur. Natus sit dolorem nesciunt ut.	67	en
68	Quia enim dolorem id ea consectetur. Maxime nostrum eveniet quisquam debitis sit est a praesentium. Ipsa doloremque placeat qui sed voluptatem cupiditate sunt. Quis quasi commodi maxime alias nihil. Eos architecto et ea asperiores consequatur. Nesciunt occaecati rerum beatae veniam. Quidem aspernatur modi laudantium ea repellendus voluptates a. Suscipit ipsum dolores voluptatibus voluptatibus. Dolor minima repellat non qui. Unde molestiae quia non dicta enim. Voluptatum quia et laborum aut aspernatur odit. Doloremque consequatur neque ullam assumenda.	68	en
69	Assumenda eum tempore repellat. Temporibus similique praesentium expedita earum animi omnis. Veniam nam et autem minus. Quisquam quia asperiores et consequatur necessitatibus et. Soluta sed ab consequatur dicta. Atque corrupti voluptate velit enim harum aliquid voluptate. Debitis pariatur vel esse aut rerum. Eos omnis harum adipisci aliquam dolorum sint. Ipsa ad quibusdam dolores voluptas sint. Et quia modi molestiae corporis perferendis beatae. Cumque saepe impedit sequi ea autem. Aut in quis voluptates delectus dolore esse ipsa itaque. Repellendus unde ipsam qui ratione. Eligendi assumenda omnis est ipsum.	69	en
70	Omnis delectus harum labore tenetur officiis impedit laudantium quia. Consequuntur quos voluptate est doloribus sint sunt. Quisquam et sit eius commodi eos nobis. Voluptatum architecto eveniet in eaque numquam sed in eos. Reprehenderit nostrum quaerat in delectus nisi ut ex. Laboriosam soluta cum facilis earum iure. Sunt rerum nemo molestiae debitis id velit temporibus eos. Laboriosam adipisci consequatur et distinctio porro. Qui eius doloribus reiciendis eveniet rem. In deleniti nobis voluptas quisquam beatae. Labore qui quia repellendus maiores commodi iusto pariatur. Dolores excepturi ut magni id commodi rerum.	70	en
71	Culpa saepe consequatur maxime id rerum sit odio. Accusamus vel illo fugit ex necessitatibus. Distinctio quis laudantium aut voluptas soluta sit est at. Accusantium provident a temporibus consequuntur dolores. Quidem ipsum nesciunt et aliquam perferendis error et. Doloribus quia illum voluptate enim et et. Est cumque temporibus sed voluptatem commodi rerum deleniti. Quam nam ut eligendi cupiditate qui. Temporibus praesentium et vel voluptatem optio vel voluptatem. Nisi inventore corporis aspernatur dolores veritatis possimus vel quo. Reiciendis ullam distinctio suscipit velit consequatur sequi blanditiis.	71	en
72	Laboriosam voluptatem ea fuga sit perferendis illum qui. Blanditiis quasi nam quia aspernatur quae non assumenda. Ratione error exercitationem fugiat assumenda mollitia. Minus placeat ut incidunt nam. Excepturi laborum voluptas voluptas. Qui rerum iste et non nihil. Recusandae deserunt eligendi facere. Delectus nihil veritatis aliquid ipsa earum sunt reprehenderit. Quia illo voluptatem quis vitae labore vero. Iure aspernatur et neque excepturi voluptas. Asperiores exercitationem recusandae dolores temporibus et ea laborum nam. Excepturi incidunt vero optio consequuntur.	72	en
73	Rerum aut sequi saepe sint neque. Omnis ex eos suscipit quisquam deserunt consequatur quia. Nulla sit nam molestias rerum et omnis fuga doloribus. Dolore qui a veniam eos assumenda mollitia vero est. Rerum laboriosam dolore ea deserunt. Delectus est beatae dolor dolor doloremque delectus qui. Veritatis dignissimos vel nostrum. Aut ipsam temporibus quia aut et aperiam. Dolores saepe in tempore non voluptate. Provident est architecto voluptas optio qui. Iusto ea omnis fuga ut fuga fugiat. Ipsum dolore suscipit exercitationem praesentium.	73	en
74	Illum maxime doloribus aut aut itaque quis. Eligendi esse quaerat ut quas autem perferendis similique. Et quia aut voluptatem repudiandae maxime qui quis ut. Esse omnis soluta dignissimos id qui enim. Corrupti ipsum modi voluptatibus et sunt illo. Provident corrupti quas temporibus quidem veritatis quia. Excepturi aliquam autem officiis accusantium consequatur. Aut placeat accusantium veniam quisquam perspiciatis. Dolores praesentium et et unde qui. Harum quasi quia sunt. Distinctio tempore est ut labore neque.	74	en
75	Praesentium officiis enim beatae consequuntur excepturi eum eos. Dolor et ipsum voluptatem qui consectetur. Quisquam magnam dolores iusto numquam voluptas ut. Neque voluptate odit consequatur enim aliquam. Asperiores voluptas nulla iusto officia eos ipsa. Ipsum fuga fugiat ut totam a. Dolor consequuntur facilis eos. Facere temporibus velit delectus recusandae atque odit labore. Praesentium et omnis odit eos nam sapiente. Occaecati deserunt sed autem atque et et quia. Dolorum est molestias voluptas et. Consequatur placeat eos rerum debitis dolore accusamus nulla consequatur.	75	en
76	Accusantium ipsum minus ea commodi. Similique tenetur at totam fuga consectetur rerum. Laborum rerum rerum ea perferendis quibusdam a facilis ducimus. Eius inventore reprehenderit tempora perspiciatis alias sunt rerum et. Vitae corporis enim et reprehenderit quo explicabo et. Est eos animi eos quisquam necessitatibus. Non quis et eum. Non consequatur mollitia perferendis. Asperiores quia quisquam ullam et magni corrupti laboriosam. Necessitatibus rem incidunt ut mollitia est. Est tenetur cum amet placeat.	76	en
77	Magnam quisquam non qui excepturi minima voluptatem. Est ut est fuga ad sapiente aut iste. Numquam itaque cupiditate quia unde dolorem. Blanditiis eveniet et ab omnis. Est harum eveniet et alias et. Quae dolorem quasi eos incidunt iusto fuga laudantium possimus. Nisi quis repellat ut quae velit modi quas sed. Explicabo qui aut suscipit est laboriosam veritatis eos nihil. Exercitationem dolorem expedita suscipit aut ut. Velit occaecati magnam fugit animi voluptas qui ut fuga. Eveniet et eos quas dolores. Laboriosam eaque aut consequatur non fugit. Rerum ratione qui tempore. Aut velit officiis eius cupiditate voluptatem et eum.	77	en
78	Voluptatem aliquid culpa quae sit. Molestiae doloribus aut non nisi qui. Similique veniam harum rem quam aspernatur consequatur. Dolor iste qui alias qui et similique. Voluptatibus ullam in recusandae fugiat voluptas voluptatibus natus. Quae fuga provident ut iusto consequatur voluptatem fuga. At sit quas incidunt ratione quisquam voluptatem. Dicta unde et quo sed officia eos iusto. Laboriosam fugit rerum deleniti omnis nostrum. Occaecati tempora quis sit placeat labore eveniet eum. Aliquam tenetur dolorem quos.	78	en
79	Voluptates rerum est perspiciatis expedita expedita suscipit libero nulla. Repellat error nihil totam odit consequatur enim blanditiis unde. Nemo culpa illum velit architecto distinctio. Dolor et delectus qui nihil saepe dolores. Nemo tenetur eaque dolores dolores molestias facere. Quidem aut voluptatum quidem voluptatem officiis perferendis corporis. Rem id delectus alias in maiores placeat quos. Qui quo laboriosam voluptatibus vel. Unde quae quia et ullam officiis similique. Sit pariatur ipsum laborum atque in.	79	en
80	Est id nihil quod voluptatibus ullam hic est. Quas magnam laboriosam omnis repellat omnis rerum. Eius aut delectus iusto reprehenderit labore adipisci. Eveniet ducimus eos quasi error maxime molestiae. Sit quaerat iste ducimus quidem. Aperiam ad dolorem quae consequuntur quibusdam. Ut adipisci cum magni laborum. Et non autem quibusdam quia voluptas rerum sint asperiores. Nisi distinctio qui quia hic tempora ut. Quia maiores animi illum accusantium velit aut.	80	en
81	Facere repudiandae enim voluptas ullam nemo et iste. Et est corporis vel similique vel numquam voluptas. Veritatis dolore voluptas quia sapiente totam. Labore mollitia animi id. Distinctio porro dolorem consequatur perspiciatis. Optio officiis commodi explicabo consectetur sequi optio et in. Ratione et consequatur in quam illo velit. Nisi qui impedit soluta. Earum et repudiandae autem repellendus non exercitationem occaecati vel. Amet nobis sint qui ut recusandae corrupti ad. Architecto ut consectetur at ea dolorem dolor laborum. Sit deleniti consequatur distinctio consectetur tempora. Odio vero dolores aut nulla.	81	en
82	Optio qui ducimus quo quam tempore. Autem praesentium voluptates ullam et. Necessitatibus voluptatem architecto vero nisi architecto non iusto. Aut id ipsum reprehenderit commodi. Placeat ducimus exercitationem blanditiis veniam nostrum. Nesciunt ex vel tenetur debitis nisi hic neque. Quos totam facilis officia laboriosam. Alias dicta hic excepturi blanditiis fuga dignissimos dolor. Ipsam sint eligendi est corrupti sed mollitia sed. Consectetur ipsam modi porro debitis perferendis. Recusandae sequi rerum perferendis unde. Eos deserunt nam odio omnis perspiciatis.	82	en
83	Eaque ut omnis esse et reprehenderit. Eligendi laudantium aperiam quos earum ut. At dolore voluptatem et enim. Ullam magni quam perferendis ex. Quia ut nemo ut rerum dolores iste. Voluptatem voluptatum commodi aperiam corporis omnis nemo. Ullam voluptas veniam nihil vel neque magni quasi. Voluptatem adipisci excepturi est magnam. Aut nisi molestiae earum quas maxime. Delectus est voluptate totam sed ab ut expedita nam. Quibusdam sit et rerum qui explicabo. Enim magnam perspiciatis laboriosam corporis eos. Laudantium sed est minima culpa illum. Cupiditate ex non enim quia nemo rerum.	83	en
84	Iste aliquid natus enim consequatur natus. Qui cum esse soluta iste et. Aut quisquam temporibus voluptas fuga voluptas. Sed modi neque delectus ratione sint aut. Suscipit est perspiciatis est perspiciatis et voluptas qui. Odit aspernatur sed rerum natus provident quisquam quod. Nulla voluptatem similique deserunt quis. Sed explicabo dolor odit voluptatem vitae magnam. Aut consequatur inventore eos fugiat velit et beatae. Temporibus sunt sapiente accusamus nostrum corrupti ratione ut quidem. Voluptates laudantium dolores temporibus sapiente ea quidem. Est repudiandae minima maiores id in accusantium sit.	84	en
85	Molestias accusantium voluptatem aut sapiente exercitationem. Harum dolor nostrum non. Aperiam sunt incidunt eum cumque. Vero repellat fuga asperiores non hic est qui eius. Molestias et nemo quibusdam pariatur aperiam et non. Quis dignissimos totam consequatur sed numquam est. Dolorem iusto aut et excepturi veritatis quod. Ad non necessitatibus aut. Quidem ut iusto aut voluptatem. Rerum sed eaque qui eius. Provident libero quidem iste aspernatur temporibus et et voluptatibus.	85	en
86	Et sint sunt non fugiat. Quidem ipsum perferendis ut blanditiis impedit. Eveniet sunt libero culpa expedita. Soluta quaerat quo voluptatem incidunt sed. Quia quaerat excepturi rem voluptas cum laudantium molestiae. Placeat recusandae eius porro et sit et. Est consequatur delectus rerum rerum. Vitae quasi aperiam rem fugit quas cum. Blanditiis iure et quam quod tenetur velit ipsum vel. Eum earum qui tenetur voluptates. Vitae sit a est est aut rem non optio. Nemo earum maxime provident sint ut. Maiores accusantium facilis atque qui. Ea illo iste quis repellat qui.	86	en
87	Tempora est doloremque maxime qui distinctio dolor explicabo nam. Perferendis aut quas odit dignissimos ea provident. Minima harum qui ut suscipit omnis atque quisquam omnis. Libero provident recusandae tenetur voluptates ad quia. Debitis aperiam minima optio ut autem. Aut voluptatibus aut at non quas quia. Ut aliquid voluptatem suscipit saepe adipisci. Inventore quas voluptas rerum. Expedita voluptatem pariatur occaecati fuga rem illo iure et. Adipisci magni et magnam quaerat. Incidunt alias dolor et dolorem quis.	87	en
88	Laboriosam doloribus asperiores minus quis quia est deleniti atque. Sunt qui perspiciatis cum optio facere in. Quas dolores aut iusto voluptatum autem. Sit et molestiae ex minima commodi et. Itaque veniam fugit rerum optio enim. Magnam earum commodi sed explicabo. Explicabo quis exercitationem veritatis modi. A ut eos pariatur aliquam at eius. Enim qui voluptas qui est explicabo voluptas. Officia harum et corporis dolorum. Ad quibusdam modi et qui nesciunt soluta eos. Temporibus et voluptatum eveniet sed distinctio quam est. Omnis ducimus vitae qui ab vitae aut.	88	en
89	Eligendi eligendi ad dolores et. Modi expedita earum iste aliquam architecto dolor. Id facere ut molestiae dolores quo aliquam. Magnam repellendus qui dicta non autem. Ut voluptatem nemo sit rerum quia natus. Explicabo quibusdam expedita quam est. Veniam id necessitatibus consequatur sunt illum eos ducimus vero. Dignissimos est aut nemo impedit doloremque officiis numquam. Voluptates esse molestias laudantium libero voluptates et. Accusantium magnam reprehenderit autem quia est sed. Dolorem nihil magni suscipit voluptatum in. Omnis quasi non omnis dolor. Minima consequatur aut laborum libero nam. Quia ex perferendis quia quaerat.	89	en
90	Rem aspernatur velit vero voluptatibus. Vero dicta rerum asperiores expedita architecto. Earum a molestiae est et non. Vel porro autem dolore enim consequatur accusamus voluptatibus. Non sed suscipit voluptate qui. Tempore aspernatur aperiam est voluptatem cumque. Cumque mollitia nulla eos dolorem magnam ullam ut. Eveniet corporis numquam omnis voluptate molestias vel magni. Iure dolores sit perspiciatis atque consequatur facere quia. Ex et ducimus aliquid modi eius explicabo. Mollitia aut fugiat provident velit. Sed ipsa tenetur et ipsum officia est. Et quis voluptatibus saepe velit ut quia voluptatibus.	90	en
91	Ut assumenda accusantium pariatur sequi cum dolores. Nihil autem doloremque est et omnis consequuntur magni minus. Error ipsa vitae eos eligendi commodi asperiores. Eveniet nihil voluptate error laborum et sunt aperiam. Sequi facilis voluptas similique voluptatem sed vitae. Est sit deleniti omnis rem natus dolorem voluptatem. Voluptatum facilis voluptatem ut modi qui soluta. Fugiat sint delectus voluptates. Eum veritatis et sit aut sed ut possimus voluptatibus. Provident consectetur voluptates veritatis sequi ullam non.	91	en
92	Libero voluptatem itaque alias vero facilis ab. Sed ad quae aut molestiae harum voluptatibus. Architecto in sapiente deleniti numquam et nisi. Culpa quia iste eos recusandae earum. Dolor sed fuga aut ut repellat eaque. Voluptatum quis fuga repellendus optio voluptas suscipit et. Iusto deserunt est quos iste quia repudiandae perferendis. Officia quos perspiciatis provident tenetur quod laborum autem. Dolorem impedit animi eos doloremque soluta et error. Impedit excepturi temporibus eum temporibus. Consequuntur exercitationem ut quos labore itaque nulla. Qui cum aliquid error nobis placeat qui laborum.	92	en
93	Facilis ullam quidem nisi voluptatibus. Et illum qui deleniti occaecati. Aliquid dolor veritatis itaque velit quidem cum. Voluptas tempora qui quo officiis sit. Ut earum blanditiis deleniti nulla dolores similique asperiores voluptatem. Sunt magni eveniet atque qui. Facilis neque omnis sed atque ut ratione et. Sit maiores distinctio rem libero itaque quaerat. Odio voluptatibus omnis at aspernatur ut sit delectus. Mollitia ratione sed dolores laudantium ut. Unde voluptatem sit minima ipsa repellat quidem placeat ab. Est eveniet architecto est. Corrupti iusto veniam non qui ut odit sint.	93	en
94	Qui est eaque ratione aut est aut non. Iure veniam nostrum iste sint non. Veniam nobis sint tempora nostrum. Quos sunt sit quod eum dolorem et. Itaque nostrum et sed excepturi ex veritatis eveniet. Inventore et sequi cupiditate tenetur sunt necessitatibus laudantium. Assumenda consectetur aliquam vero qui eos. Sint aliquam facilis enim modi at ratione animi. Eius id voluptates nihil aliquam modi magni. Et eius non maxime rerum voluptatum adipisci quia. Sit harum accusamus exercitationem.	94	en
95	Corporis minima facilis aperiam sequi incidunt laborum maxime. Maiores sit quis et alias molestias quisquam. Dolorem aspernatur vel quaerat quos sed harum. Soluta quia repellendus aut soluta iusto. Officiis sequi quia sint. A ullam ex rerum itaque. Ipsam dignissimos accusantium modi. Recusandae est architecto magni at vero numquam. Officiis et occaecati sit quis asperiores. Ut nesciunt numquam ut eos impedit aut voluptatem. Tempora dignissimos doloremque accusamus et natus quia eius. Minus voluptatibus accusamus eaque dolorum. Illum sint aut deserunt at.	95	en
96	Sit iure harum iusto consequatur. Repellat rerum a dolorem dolore non est quae molestiae. Rerum consequatur est cupiditate est reiciendis. Quae vel voluptatum porro dolor eius adipisci quas. Occaecati magni animi molestiae quaerat qui amet. Molestiae molestias magnam corporis ut laudantium natus vel id. Enim suscipit vero iste occaecati et quia. Error modi quos impedit est. Non sapiente nam rem dolorum sit. At numquam officia id suscipit sed dolorum unde. Odio enim fugit voluptatem voluptas tempora dolor. Sit ut dicta recusandae fugit qui accusamus. Repudiandae a officia laudantium saepe. Dolorem consequatur est ipsum debitis.	96	en
97	Possimus tenetur est nihil eveniet consequatur. Et laborum rem consequatur illo eveniet necessitatibus et sed. Dicta aut distinctio odit nihil aliquid vel nihil. Occaecati ea iusto temporibus. Ut aspernatur et laudantium aut nisi eos. Quia tenetur ipsa sunt aperiam molestiae amet. Ipsum modi voluptate sed corrupti. Aut suscipit aut minus commodi ut laudantium eligendi omnis. Assumenda accusantium dignissimos dolore et. Sit aut adipisci vitae fugiat dolores pariatur ex corrupti. Rerum quasi eos qui maxime. Porro commodi ut voluptates nisi rerum aut nihil. Repellat aspernatur voluptas et ullam deleniti quia doloremque adipisci.	97	en
98	Non adipisci at dolores laboriosam quod quidem. In quia esse quia explicabo aliquam aut illo. Ut et nihil ea ut labore officia. Sint velit hic ut incidunt. Autem minus placeat accusamus et iste voluptatem. Totam expedita distinctio voluptas maxime. Pariatur illum architecto nihil delectus ex ex. Eos mollitia illum occaecati asperiores eos. Quia recusandae magni omnis quia. Sed dolorem ut nostrum non. Ut distinctio tenetur temporibus aliquid. Eum qui dolorum adipisci blanditiis eos. Provident atque neque laborum odio nobis ut.	98	en
99	Ipsa sit aperiam qui sunt nesciunt veniam. Occaecati corporis qui ea quas in. Et officia et praesentium enim. Tempora fugit exercitationem reiciendis similique commodi. Aperiam beatae nisi et tempore voluptas libero cum. Natus reiciendis ad qui delectus repellendus. Velit fugiat omnis aut aspernatur. Et nesciunt et necessitatibus qui dolorem. Est nostrum quae nisi quo adipisci recusandae. Unde illo aliquid dolor voluptates quis voluptates quia. Quo et vel et ratione est veritatis accusantium sit. Similique molestiae vel aliquid. Atque porro consequatur incidunt laudantium id aliquid.	99	en
100	Repellendus quas quo ipsa pariatur dolores. Est voluptatem velit minima fuga. Quasi sint blanditiis vitae voluptatem aspernatur accusantium. Sed molestias non est explicabo. Ipsum voluptatem qui qui minus iure quisquam corrupti est. Accusamus ut iusto est voluptatibus. Et nostrum consequatur et. Enim impedit velit qui sunt ipsa et sit. Alias aut eaque assumenda id expedita mollitia. Voluptatem itaque et ipsa et nam. Cumque eos natus ut minus et eos rerum qui. Ratione est ratione quisquam ipsam pariatur.	100	en
\.


--
-- Data for Name: recipe_ingredients; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.recipe_ingredients (id, recipe_id, unit_id, amount) FROM stdin;
\.


--
-- Data for Name: recipe_titles; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.recipe_titles (id, title, recipe_id, language) FROM stdin;
1	Quick, now!' And Alice was beginning to grow up any more.	1	en
2	Then the Queen was to twist it up into the wood. 'If it had.	2	en
3	The Duchess took no notice of her knowledge. 'Just think of.	3	en
4	Hatter; 'so I can't understand it myself to begin with; and.	4	en
5	I tell you, you coward!' and at once in a great hurry.	5	en
6	Adventures of hers that you couldn't cut off a head could be.	6	en
7	I don't like them!' When the Mouse to Alice with one eye; 'I.	7	en
8	Mock Turtle, and said to herself, 'the way all the creatures.	8	en
9	These were the two creatures got so close to her that she.	9	en
10	Gryphon. 'How the creatures wouldn't be so proud as all that.'.	10	en
11	Alice replied very readily: 'but that's because it stays the.	11	en
12	I to get in?' 'There might be hungry, in which you usually see.	12	en
13	I think?' 'I had NOT!' cried the Gryphon, and the Queen.	13	en
14	I am to see what I say,' the Mock Turtle yawned and shut his.	14	en
15	In another minute the whole place around her became alive with.	15	en
16	IS that to be found: all she could not think of nothing better.	16	en
17	English. 'I don't like them raw.' 'Well, be off, then!' said.	17	en
18	Alice, who had spoken first. 'That's none of my life.' 'You.	18	en
19	Knave, 'I didn't mean it!' pleaded poor Alice began in a low.	19	en
20	Queen in front of them, and considered a little pattering of.	20	en
21	Hatter went on, spreading out the Fish-Footman was gone, and.	21	en
22	Pigeon, raising its voice to its children, 'Come away, my.	22	en
23	Dinah: I think it was,' the March Hare interrupted, yawning.	23	en
24	You see the Hatter with a soldier on each side to guard him.	24	en
25	Alice. 'It goes on, you know,' said Alice, a good character.	25	en
26	Majesty,' he began, 'for bringing these in: but I grow at a.	26	en
27	Tortoise because he taught us,' said the Hatter. 'I deny it!'.	27	en
28	There was a child,' said the Queen. 'Sentence first--verdict.	28	en
29	I can guess that,' she added in a coaxing tone, and she grew.	29	en
30	MUST be more to do such a new idea to Alice, flinging the baby.	30	en
31	IN the well,' Alice said very politely, feeling quite pleased.	31	en
32	Alice, 'we learned French and music.' 'And washing?' said the.	32	en
33	Rabbit whispered in reply, 'for fear they should forget them.	33	en
34	I should think you'll feel it a very interesting dance to.	34	en
35	What happened to you? Tell us all about as much as she could.	35	en
36	Alice, jumping up and beg for its dinner, and all dripping.	36	en
37	Gryphon interrupted in a Little Bill It was opened by another.	37	en
38	Why, it fills the whole thing very absurd, but they were.	38	en
39	Hatter grumbled: 'you shouldn't have put it in less than no.	39	en
40	Hatter. Alice felt a very little! Besides, SHE'S she, and I'm.	40	en
41	Some of the court," and I never was so much already, that it.	41	en
42	I know is, something comes at me like that!' said Alice.	42	en
43	Hatter: 'as the things being alive; for instance, there's the.	43	en
44	Alice. 'Of course not,' Alice replied in an offended tone. And.	44	en
45	Which way?', holding her hand in hand with Dinah, and saying.	45	en
46	FIT you,' said the Gryphon, and the other side of the.	46	en
47	King. The White Rabbit with pink eyes ran close by her. There.	47	en
48	Lobster Quadrille The Mock Turtle angrily: 'really you are.	48	en
49	White Rabbit; 'in fact, there's nothing written on the ground.	49	en
50	Lory, as soon as it is.' 'Then you may stand down,' continued.	50	en
51	CHAPTER X. The Lobster Quadrille is!' 'No, indeed,' said.	51	en
52	Caterpillar contemptuously. 'Who are YOU?' Which brought them.	52	en
53	I get" is the same words as before, 'and things are "much of a.	53	en
54	Hatter. 'I deny it!' said the King put on her toes when they.	54	en
55	The Gryphon lifted up both its paws in surprise. 'What! Never.	55	en
56	Alice looked up, but it was only sobbing,' she thought, 'it's.	56	en
57	I'm a deal faster than it does.' 'Which would NOT be an old.	57	en
58	Hatter grumbled: 'you shouldn't have put it more clearly,'.	58	en
59	ALL. Soup does very well to say "HOW DOTH THE LITTLE BUSY.	59	en
60	Caterpillar. 'Not QUITE right, I'm afraid,' said Alice, who.	60	en
61	Alice, very much of it at all,' said the Caterpillar, and the.	61	en
62	Alice had not gone far before they saw Alice coming. 'There's.	62	en
63	Mock Turtle. Alice was not here before,' said the Hatter.	63	en
64	I'm quite tired of sitting by her sister kissed her, and she.	64	en
65	Rabbit say, 'A barrowful of WHAT?' thought Alice; but she had.	65	en
66	Alice as she went on eagerly. 'That's enough about lessons,'.	66	en
67	TO LEAVE THE COURT.' Everybody looked at it gloomily: then he.	67	en
68	But they HAVE their tails in their mouths; and the other side.	68	en
69	Alice could see it quite plainly through the little crocodile.	69	en
70	YET,' she said this, she looked up, and began by taking the.	70	en
71	Heads below!' (a loud crash)--'Now, who did that?--It was.	71	en
72	Soup!' CHAPTER XI. Who Stole the Tarts? The King turned pale.	72	en
73	Rabbit coming to look down and saying to herself how this same.	73	en
74	I think you'd take a fancy to cats if you like,' said the.	74	en
75	I'm mad?' said Alice. 'I've tried every way, and the happy.	75	en
76	Gryphon. 'Well, I can't see you?' She was a general chorus of.	76	en
77	Alice thought to herself. (Alice had no very clear notion how.	77	en
78	King said, for about the temper of your flamingo. Shall I try.	78	en
79	I know!' exclaimed Alice, who felt ready to ask help of any.	79	en
80	THAT direction,' waving the other side of WHAT?' thought.	80	en
81	I shall think nothing of the March Hare. 'He denies it,' said.	81	en
82	Knave of Hearts, and I don't remember where.' 'Well, it must.	82	en
83	Alice went timidly up to her head, she tried to fancy to.	83	en
84	Duchess: you'd better finish the story for yourself.' 'No.	84	en
85	Duchess was sitting between them, fast asleep, and the reason.	85	en
86	Alice quite jumped; but she saw maps and pictures hung upon.	86	en
87	Hatter. 'You might just as I was a good way off, panting, with.	87	en
88	WOULD put their heads down and saying to herself 'That's quite.	88	en
89	If she should chance to be a lesson to you to sit down without.	89	en
90	Alice had got its head impatiently, and said, very gravely, 'I.	90	en
91	Owl and the jury wrote it down 'important,' and some were.	91	en
92	Alice, and tried to open it; but, as the soldiers had to stoop.	92	en
93	The Knave shook his head mournfully. 'Not I!' he replied. 'We.	93	en
94	Alice ventured to ask. 'Suppose we change the subject of.	94	en
95	Duchess. An invitation for the rest waited in silence. At last.	95	en
96	Alice. 'I'm a--I'm a--' 'Well! WHAT are you?' And then a voice.	96	en
97	How brave they'll all think me at home! Why, I do it again and.	97	en
98	Hatter. Alice felt a violent shake at the beginning,' the King.	98	en
99	March Hare meekly replied. 'Yes, but some crumbs must have.	99	en
100	Why, she'll eat a little glass table. 'Now, I'll manage better.	100	en
\.


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.recipes (id, category_id, creator_id, photo_id, created_at, updated_at) FROM stdin;
1	1	55	1	2021-12-02 21:51:05	2021-12-02 21:51:05
2	2	70	2	2021-12-02 21:51:05	2021-12-02 21:51:05
3	1	22	3	2021-12-02 21:51:05	2021-12-02 21:51:05
4	1	81	4	2021-12-02 21:51:05	2021-12-02 21:51:05
5	2	19	5	2021-12-02 21:51:05	2021-12-02 21:51:05
6	4	57	6	2021-12-02 21:51:05	2021-12-02 21:51:05
7	1	79	7	2021-12-02 21:51:05	2021-12-02 21:51:05
8	4	49	8	2021-12-02 21:51:05	2021-12-02 21:51:05
9	1	98	9	2021-12-02 21:51:05	2021-12-02 21:51:05
10	4	100	10	2021-12-02 21:51:05	2021-12-02 21:51:05
11	2	35	11	2021-12-02 21:51:05	2021-12-02 21:51:05
12	3	63	12	2021-12-02 21:51:05	2021-12-02 21:51:05
13	4	11	13	2021-12-02 21:51:05	2021-12-02 21:51:05
14	4	21	14	2021-12-02 21:51:05	2021-12-02 21:51:05
15	3	23	15	2021-12-02 21:51:05	2021-12-02 21:51:05
16	2	70	16	2021-12-02 21:51:05	2021-12-02 21:51:05
17	4	16	17	2021-12-02 21:51:05	2021-12-02 21:51:05
18	4	68	18	2021-12-02 21:51:05	2021-12-02 21:51:05
19	3	57	19	2021-12-02 21:51:05	2021-12-02 21:51:05
20	3	59	20	2021-12-02 21:51:05	2021-12-02 21:51:05
21	1	54	21	2021-12-02 21:51:05	2021-12-02 21:51:05
22	2	36	22	2021-12-02 21:51:05	2021-12-02 21:51:05
23	4	11	23	2021-12-02 21:51:05	2021-12-02 21:51:05
24	1	63	24	2021-12-02 21:51:05	2021-12-02 21:51:05
25	1	14	25	2021-12-02 21:51:05	2021-12-02 21:51:05
26	2	21	26	2021-12-02 21:51:05	2021-12-02 21:51:05
27	2	79	27	2021-12-02 21:51:05	2021-12-02 21:51:05
28	2	28	28	2021-12-02 21:51:05	2021-12-02 21:51:05
29	3	91	29	2021-12-02 21:51:05	2021-12-02 21:51:05
30	2	71	30	2021-12-02 21:51:05	2021-12-02 21:51:05
31	3	28	31	2021-12-02 21:51:05	2021-12-02 21:51:05
32	2	38	32	2021-12-02 21:51:05	2021-12-02 21:51:05
33	1	46	33	2021-12-02 21:51:05	2021-12-02 21:51:05
34	3	2	34	2021-12-02 21:51:05	2021-12-02 21:51:05
35	4	35	35	2021-12-02 21:51:05	2021-12-02 21:51:05
36	1	98	36	2021-12-02 21:51:05	2021-12-02 21:51:05
37	4	99	37	2021-12-02 21:51:05	2021-12-02 21:51:05
38	1	34	38	2021-12-02 21:51:05	2021-12-02 21:51:05
39	2	58	39	2021-12-02 21:51:05	2021-12-02 21:51:05
40	1	49	40	2021-12-02 21:51:05	2021-12-02 21:51:05
41	3	15	41	2021-12-02 21:51:05	2021-12-02 21:51:05
42	2	43	42	2021-12-02 21:51:05	2021-12-02 21:51:05
43	4	43	43	2021-12-02 21:51:05	2021-12-02 21:51:05
44	3	72	44	2021-12-02 21:51:05	2021-12-02 21:51:05
45	3	95	45	2021-12-02 21:51:05	2021-12-02 21:51:05
46	2	7	46	2021-12-02 21:51:05	2021-12-02 21:51:06
47	4	73	47	2021-12-02 21:51:05	2021-12-02 21:51:06
48	4	15	48	2021-12-02 21:51:05	2021-12-02 21:51:06
49	3	53	49	2021-12-02 21:51:05	2021-12-02 21:51:06
50	3	56	50	2021-12-02 21:51:05	2021-12-02 21:51:06
51	4	16	51	2021-12-02 21:51:05	2021-12-02 21:51:06
52	2	42	52	2021-12-02 21:51:05	2021-12-02 21:51:06
53	4	11	53	2021-12-02 21:51:05	2021-12-02 21:51:06
54	1	70	54	2021-12-02 21:51:05	2021-12-02 21:51:06
55	4	94	55	2021-12-02 21:51:05	2021-12-02 21:51:06
56	1	26	56	2021-12-02 21:51:05	2021-12-02 21:51:06
57	2	45	57	2021-12-02 21:51:05	2021-12-02 21:51:06
58	3	22	58	2021-12-02 21:51:05	2021-12-02 21:51:06
59	4	82	59	2021-12-02 21:51:05	2021-12-02 21:51:06
60	1	13	60	2021-12-02 21:51:05	2021-12-02 21:51:06
61	3	29	61	2021-12-02 21:51:05	2021-12-02 21:51:06
62	3	40	62	2021-12-02 21:51:05	2021-12-02 21:51:06
63	4	16	63	2021-12-02 21:51:05	2021-12-02 21:51:06
64	1	40	64	2021-12-02 21:51:05	2021-12-02 21:51:06
65	4	28	65	2021-12-02 21:51:05	2021-12-02 21:51:06
66	3	42	66	2021-12-02 21:51:05	2021-12-02 21:51:06
67	3	25	67	2021-12-02 21:51:05	2021-12-02 21:51:06
68	3	35	68	2021-12-02 21:51:05	2021-12-02 21:51:06
69	4	99	69	2021-12-02 21:51:05	2021-12-02 21:51:06
70	2	28	70	2021-12-02 21:51:05	2021-12-02 21:51:06
71	4	37	71	2021-12-02 21:51:05	2021-12-02 21:51:06
72	3	58	72	2021-12-02 21:51:05	2021-12-02 21:51:06
73	3	68	73	2021-12-02 21:51:05	2021-12-02 21:51:06
74	3	73	74	2021-12-02 21:51:05	2021-12-02 21:51:06
75	1	29	75	2021-12-02 21:51:05	2021-12-02 21:51:06
76	4	61	76	2021-12-02 21:51:05	2021-12-02 21:51:06
77	1	29	77	2021-12-02 21:51:05	2021-12-02 21:51:06
78	1	36	78	2021-12-02 21:51:05	2021-12-02 21:51:06
79	1	94	79	2021-12-02 21:51:05	2021-12-02 21:51:06
80	2	50	80	2021-12-02 21:51:05	2021-12-02 21:51:06
81	2	74	81	2021-12-02 21:51:05	2021-12-02 21:51:06
82	3	9	82	2021-12-02 21:51:05	2021-12-02 21:51:06
83	3	87	83	2021-12-02 21:51:05	2021-12-02 21:51:06
84	3	39	84	2021-12-02 21:51:05	2021-12-02 21:51:06
85	3	22	85	2021-12-02 21:51:05	2021-12-02 21:51:06
86	4	48	86	2021-12-02 21:51:05	2021-12-02 21:51:06
87	1	16	87	2021-12-02 21:51:05	2021-12-02 21:51:06
88	1	9	88	2021-12-02 21:51:05	2021-12-02 21:51:06
89	2	33	89	2021-12-02 21:51:05	2021-12-02 21:51:06
90	1	39	90	2021-12-02 21:51:05	2021-12-02 21:51:06
91	1	40	91	2021-12-02 21:51:05	2021-12-02 21:51:06
92	3	69	92	2021-12-02 21:51:05	2021-12-02 21:51:06
93	3	54	93	2021-12-02 21:51:05	2021-12-02 21:51:06
94	1	49	94	2021-12-02 21:51:05	2021-12-02 21:51:06
95	4	7	95	2021-12-02 21:51:05	2021-12-02 21:51:06
96	3	36	96	2021-12-02 21:51:05	2021-12-02 21:51:06
97	3	12	97	2021-12-02 21:51:05	2021-12-02 21:51:06
98	4	9	98	2021-12-02 21:51:05	2021-12-02 21:51:06
99	3	100	99	2021-12-02 21:51:05	2021-12-02 21:51:06
100	3	72	100	2021-12-02 21:51:05	2021-12-02 21:51:06
\.


--
-- Data for Name: role_has_permissions; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: units; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.units (id, name, type) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
1	admin	admin@admin.com	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	3LpZmE38ke	\N	\N
2	Mr. Josiah Rogahn	huel.adell@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	c4lH30eP4e	2021-12-02 21:51:05	2021-12-02 21:51:05
3	Queen Fahey	kraig.hoppe@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	19GeH1zdhm	2021-12-02 21:51:05	2021-12-02 21:51:05
4	Ms. Bonnie Padberg	kelley.armstrong@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	PT6ArnDuF8	2021-12-02 21:51:05	2021-12-02 21:51:05
5	Pierce Ruecker	birdie.fahey@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	knoxXkwS2I	2021-12-02 21:51:05	2021-12-02 21:51:05
6	Sheila Kihn	zstehr@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	wfTscc6tVc	2021-12-02 21:51:05	2021-12-02 21:51:05
7	Ora Ebert	fermin.price@example.com	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	phvRKoXtrb	2021-12-02 21:51:05	2021-12-02 21:51:05
8	Prof. Lloyd Swift III	choeger@example.com	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	71wpY4SPlM	2021-12-02 21:51:05	2021-12-02 21:51:05
9	Missouri Ryan I	edwina51@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	i9zVxkN40x	2021-12-02 21:51:05	2021-12-02 21:51:05
10	Vilma Batz IV	horacio.gorczany@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	KElGEWB47X	2021-12-02 21:51:05	2021-12-02 21:51:05
11	Dr. August Reilly IV	vicky.schulist@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	zXNvn3y9Lg	2021-12-02 21:51:05	2021-12-02 21:51:05
12	Jerad Mohr MD	prohaska.nina@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	MXMSeMxSWK	2021-12-02 21:51:05	2021-12-02 21:51:05
13	Coralie O'Hara Sr.	konopelski.leda@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	bDllm3Nh65	2021-12-02 21:51:05	2021-12-02 21:51:05
14	Coty Wisoky	jerrold40@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	D23CrHZiW0	2021-12-02 21:51:05	2021-12-02 21:51:05
15	Miss Lura Considine MD	kuvalis.andreanne@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	IXca2sEets	2021-12-02 21:51:05	2021-12-02 21:51:05
16	Allan Hamill	okey88@example.com	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	NBFFwU5nEp	2021-12-02 21:51:05	2021-12-02 21:51:05
17	Salma West	freda89@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	qTaX7EKaP9	2021-12-02 21:51:05	2021-12-02 21:51:05
18	Lexus Skiles	johnson.cormier@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	inxN7N3GC5	2021-12-02 21:51:05	2021-12-02 21:51:05
19	Fannie Willms	heller.donna@example.com	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	235Yf120yY	2021-12-02 21:51:05	2021-12-02 21:51:05
20	Prof. Ferne Baumbach Sr.	johnston.maria@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	iF6CUM9J67	2021-12-02 21:51:05	2021-12-02 21:51:05
21	Wilbert Auer	chelsey.daniel@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	rFjhuuPM2v	2021-12-02 21:51:05	2021-12-02 21:51:05
22	Lucas Volkman	mraz.myrl@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	wdJXagvf1C	2021-12-02 21:51:05	2021-12-02 21:51:05
23	Laverna Flatley Sr.	lstamm@example.com	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	Sk84RYOv84	2021-12-02 21:51:05	2021-12-02 21:51:05
24	Ellis Orn Sr.	reichert.uriel@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	8i9IYiYCCw	2021-12-02 21:51:05	2021-12-02 21:51:05
25	Ernestine Lang	sophie85@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	vzGQuFmcMZ	2021-12-02 21:51:05	2021-12-02 21:51:05
26	Nasir Jakubowski	benedict.mcglynn@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	FcKjkcYPbN	2021-12-02 21:51:05	2021-12-02 21:51:05
27	Conner Hayes DVM	dmorar@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	YoKPpl13r3	2021-12-02 21:51:05	2021-12-02 21:51:05
28	Mathew Toy	pollich.quinten@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	EHgWBuZXrH	2021-12-02 21:51:05	2021-12-02 21:51:05
29	Katlynn Upton	langosh.keira@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	pzcnZLzj1Z	2021-12-02 21:51:05	2021-12-02 21:51:05
30	Ms. Amiya Koelpin Sr.	hrice@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	7Elv6asQjj	2021-12-02 21:51:05	2021-12-02 21:51:05
31	Ms. Sabrina Yost	ymedhurst@example.com	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	3QAmHlohBX	2021-12-02 21:51:05	2021-12-02 21:51:05
32	Mr. Devante West	efay@example.com	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	AUyoqJVENt	2021-12-02 21:51:05	2021-12-02 21:51:05
33	Edgar Schuppe	edoyle@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	cQc32Om4lY	2021-12-02 21:51:05	2021-12-02 21:51:05
34	Dr. Marcelino Sawayn II	carol62@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	ZVSI52OmUD	2021-12-02 21:51:05	2021-12-02 21:51:05
35	Lydia Wisoky	augusta.schamberger@example.com	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	vFSFmpqRDM	2021-12-02 21:51:05	2021-12-02 21:51:05
36	Forrest Cummerata	hyatt.ethyl@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	qBqz7CvsPW	2021-12-02 21:51:05	2021-12-02 21:51:05
37	Brooklyn Swaniawski DDS	daija.walker@example.com	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	4OjWpzh48N	2021-12-02 21:51:05	2021-12-02 21:51:05
38	Edmund Gaylord DVM	romaguera.mario@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	9I8ESKgjQK	2021-12-02 21:51:05	2021-12-02 21:51:05
39	Mr. Tyrel Funk IV	dmayer@example.com	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	ArfLXVLVGj	2021-12-02 21:51:05	2021-12-02 21:51:05
40	Adelia Hoeger	eladio80@example.com	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	f0I7Tp7FkS	2021-12-02 21:51:05	2021-12-02 21:51:05
41	Rubye Stark	alyson.zboncak@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	BJZTnzYh4L	2021-12-02 21:51:05	2021-12-02 21:51:05
42	Mr. Cleve Stiedemann I	mattie97@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	NLufPQNbwR	2021-12-02 21:51:05	2021-12-02 21:51:05
43	Miss Kailey Bruen	qwisozk@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	lDqflTGwEO	2021-12-02 21:51:05	2021-12-02 21:51:05
44	Katrina Streich	carter.thea@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	TFzFhSLyox	2021-12-02 21:51:05	2021-12-02 21:51:05
45	Mina Deckow	luciano.rohan@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	rK4xgxY7Rg	2021-12-02 21:51:05	2021-12-02 21:51:05
46	Dr. Jerrell Pouros V	dschulist@example.org	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	l7FCqDvHjI	2021-12-02 21:51:05	2021-12-02 21:51:05
47	Blake Frami V	angie.haag@example.com	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	dVQaEMKqnT	2021-12-02 21:51:05	2021-12-02 21:51:05
48	Janae Rippin	mcglynn.brandon@example.net	2021-12-02 21:51:04	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	rQyMZvIzEP	2021-12-02 21:51:05	2021-12-02 21:51:05
49	Marty Lehner	okon.karlie@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	6Rjwq6yyVo	2021-12-02 21:51:05	2021-12-02 21:51:05
50	Prof. Dominic Lebsack	dmckenzie@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	AHoBX3B66L	2021-12-02 21:51:05	2021-12-02 21:51:05
51	Savion Ebert	jules92@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	FWJZR54Ksb	2021-12-02 21:51:05	2021-12-02 21:51:05
52	Ms. Dulce Leffler	prohaska.ansley@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	DuEXsboxpz	2021-12-02 21:51:05	2021-12-02 21:51:05
53	Zechariah Ziemann	garnett22@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	NUbv1EcTT1	2021-12-02 21:51:05	2021-12-02 21:51:05
54	Dr. Amber Reichel	colton75@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	4xUsyp3KN6	2021-12-02 21:51:05	2021-12-02 21:51:05
55	Mr. Willy Rolfson	kleffler@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	Kmbw0zPwOF	2021-12-02 21:51:05	2021-12-02 21:51:05
56	Arnulfo Brakus I	efunk@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	CzXOVcd35h	2021-12-02 21:51:05	2021-12-02 21:51:05
57	Judy Witting	elfrieda82@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	jmFBqfho3S	2021-12-02 21:51:05	2021-12-02 21:51:05
58	Hazel Okuneva IV	john.feil@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	4hhvtHPV3W	2021-12-02 21:51:05	2021-12-02 21:51:05
59	Quentin Mills	aracely07@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	5wYnOJafVx	2021-12-02 21:51:05	2021-12-02 21:51:05
60	Stella Roob	lyric44@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	wZ09jkczfX	2021-12-02 21:51:05	2021-12-02 21:51:05
61	Graciela Klein	curtis15@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	f967OqGmR5	2021-12-02 21:51:05	2021-12-02 21:51:05
62	Lowell Kirlin	keeling.gregg@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	yxSaTXXsRd	2021-12-02 21:51:05	2021-12-02 21:51:05
63	Katrine Lemke	iva.okuneva@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	iU6fCgGx4e	2021-12-02 21:51:05	2021-12-02 21:51:05
64	Ms. Linnie Lebsack	bednar.chanel@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	SAcqcFmeRU	2021-12-02 21:51:05	2021-12-02 21:51:05
65	Dr. Ilene Waelchi MD	wstiedemann@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	eod8iDzNXt	2021-12-02 21:51:05	2021-12-02 21:51:05
66	Jaida Senger	martin.hessel@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	51Xf0ewcMX	2021-12-02 21:51:05	2021-12-02 21:51:05
67	Adalberto Hane	korbin.oconner@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	x9Roo4jNxV	2021-12-02 21:51:05	2021-12-02 21:51:05
68	Winfield Bosco	devon.hettinger@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	LrsU45DDls	2021-12-02 21:51:05	2021-12-02 21:51:05
69	Sterling Blanda V	xkreiger@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	VQ6q23cWIg	2021-12-02 21:51:05	2021-12-02 21:51:05
70	Ms. Lola Parisian V	kmurray@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	qw5ePn0hyh	2021-12-02 21:51:05	2021-12-02 21:51:05
71	Annabelle Spinka	carole.nikolaus@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	JsOJhhuYVI	2021-12-02 21:51:05	2021-12-02 21:51:05
72	Dr. Scotty Deckow	thompson.cecilia@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	aiavDphv9m	2021-12-02 21:51:05	2021-12-02 21:51:05
73	Name Cummings	winnifred49@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	DiuVmmerlO	2021-12-02 21:51:05	2021-12-02 21:51:05
74	Mrs. Rylee O'Conner	koelpin.nels@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	Vn3X8VaCJL	2021-12-02 21:51:05	2021-12-02 21:51:05
75	Mrs. Marina Farrell Sr.	easter.buckridge@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	lZ4JOzp9Wj	2021-12-02 21:51:05	2021-12-02 21:51:05
76	Peter Lesch Sr.	dbashirian@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	7ALmPvDIV3	2021-12-02 21:51:05	2021-12-02 21:51:05
77	Maryjane Pouros	virgie78@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	JgvbpuY29W	2021-12-02 21:51:05	2021-12-02 21:51:05
78	Leopoldo Hoppe	simone.hoppe@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	mJA967EJm5	2021-12-02 21:51:05	2021-12-02 21:51:05
79	Dr. Wayne Franecki DDS	fwest@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	EUbSPt7lir	2021-12-02 21:51:05	2021-12-02 21:51:05
80	Ms. Melissa Wiegand	jo.lemke@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	tDTi8mster	2021-12-02 21:51:05	2021-12-02 21:51:05
81	Reyes Muller I	nyah63@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	Rjm3ot2okJ	2021-12-02 21:51:05	2021-12-02 21:51:05
82	Cristian Harvey	dejuan.wolf@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	zblf5w8neb	2021-12-02 21:51:05	2021-12-02 21:51:05
83	Zola Langworth	lina83@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	iztyFcHM5x	2021-12-02 21:51:05	2021-12-02 21:51:05
84	Mark Blick	cielo25@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	jLOXGWX5Ej	2021-12-02 21:51:05	2021-12-02 21:51:05
85	Justina Breitenberg	darion55@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	2Kb5UYTvBF	2021-12-02 21:51:05	2021-12-02 21:51:05
86	Laisha Fay DDS	wrunolfsson@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	qzAPybLViX	2021-12-02 21:51:05	2021-12-02 21:51:05
87	Christelle Mohr	keeling.olen@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	Y2X93ywzbL	2021-12-02 21:51:05	2021-12-02 21:51:05
88	Wiley Armstrong	mazie57@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	ferzoR4m6G	2021-12-02 21:51:05	2021-12-02 21:51:05
89	Skye Kerluke	ugreen@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	zPBqfEeWnY	2021-12-02 21:51:05	2021-12-02 21:51:05
90	Mr. Derick Schaden V	yconsidine@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	XYBCxYd8wq	2021-12-02 21:51:05	2021-12-02 21:51:05
91	Don Pollich IV	khagenes@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	L5Wl79fgGT	2021-12-02 21:51:05	2021-12-02 21:51:05
92	Ms. Maiya Pagac	zcruickshank@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	mOLWw45HzR	2021-12-02 21:51:05	2021-12-02 21:51:05
93	Brenna Hettinger	demarco68@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	nxkA46zbhR	2021-12-02 21:51:05	2021-12-02 21:51:05
94	Linda Hodkiewicz	tod89@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	iDhx6201D3	2021-12-02 21:51:05	2021-12-02 21:51:05
95	Roslyn Sauer I	antwon54@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	TwSoPjGIFg	2021-12-02 21:51:05	2021-12-02 21:51:05
96	Tillman Bogisich	leann38@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	9U2L21hzdu	2021-12-02 21:51:05	2021-12-02 21:51:05
97	Kieran Lakin	kiarra.kessler@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	CLpSQrzRGU	2021-12-02 21:51:05	2021-12-02 21:51:05
98	Deanna Tillman	crystel69@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	uf6qQ2ml9n	2021-12-02 21:51:05	2021-12-02 21:51:05
99	Branson Pollich	evie.klocko@example.com	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	dQaJlmYPEl	2021-12-02 21:51:05	2021-12-02 21:51:05
100	Shanna Kunde	grimes.adriana@example.net	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	kOYZNUVzhx	2021-12-02 21:51:05	2021-12-02 21:51:05
101	Dr. Leann Cole	rosemarie25@example.org	2021-12-02 21:51:05	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	opcGpQPZ9M	2021-12-02 21:51:05	2021-12-02 21:51:05
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: category_names_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.category_names_id_seq', 4, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: ingredient_names_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.ingredient_names_id_seq', 1, false);


--
-- Name: ingredients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.ingredients_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.migrations_id_seq', 15, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.photos_id_seq', 100, true);


--
-- Name: recipe_bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.recipe_bodies_id_seq', 100, true);


--
-- Name: recipe_ingredients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.recipe_ingredients_id_seq', 1, false);


--
-- Name: recipe_titles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.recipe_titles_id_seq', 100, true);


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.recipes_id_seq', 100, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- Name: units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.units_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chef
--

SELECT pg_catalog.setval('public.users_id_seq', 101, true);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: category_names category_names_id_language_unique; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.category_names
    ADD CONSTRAINT category_names_id_language_unique UNIQUE (id, language);


--
-- Name: category_names category_names_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.category_names
    ADD CONSTRAINT category_names_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: ingredient_names ingredient_names_id_language_unique; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.ingredient_names
    ADD CONSTRAINT ingredient_names_id_language_unique UNIQUE (id, language);


--
-- Name: ingredient_names ingredient_names_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.ingredient_names
    ADD CONSTRAINT ingredient_names_pkey PRIMARY KEY (id);


--
-- Name: ingredients ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: model_has_permissions model_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);


--
-- Name: model_has_roles model_has_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);


--
-- Name: permissions permissions_name_guard_name_unique; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_name_guard_name_unique UNIQUE (name, guard_name);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: photos photos_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);


--
-- Name: recipe_bodies recipe_bodies_id_language_unique; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipe_bodies
    ADD CONSTRAINT recipe_bodies_id_language_unique UNIQUE (id, language);


--
-- Name: recipe_bodies recipe_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipe_bodies
    ADD CONSTRAINT recipe_bodies_pkey PRIMARY KEY (id);


--
-- Name: recipe_ingredients recipe_ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipe_ingredients
    ADD CONSTRAINT recipe_ingredients_pkey PRIMARY KEY (id);


--
-- Name: recipe_ingredients recipe_ingredients_recipe_id_unit_id_unique; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipe_ingredients
    ADD CONSTRAINT recipe_ingredients_recipe_id_unit_id_unique UNIQUE (recipe_id, unit_id);


--
-- Name: recipe_titles recipe_titles_id_language_unique; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipe_titles
    ADD CONSTRAINT recipe_titles_id_language_unique UNIQUE (id, language);


--
-- Name: recipe_titles recipe_titles_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipe_titles
    ADD CONSTRAINT recipe_titles_pkey PRIMARY KEY (id);


--
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- Name: role_has_permissions role_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);


--
-- Name: roles roles_name_guard_name_unique; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_guard_name_unique UNIQUE (name, guard_name);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: units units_name_unique; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_name_unique UNIQUE (name);


--
-- Name: units units_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: model_has_permissions_model_id_model_type_index; Type: INDEX; Schema: public; Owner: chef
--

CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);


--
-- Name: model_has_roles_model_id_model_type_index; Type: INDEX; Schema: public; Owner: chef
--

CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: chef
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: chef
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: recipe_titles_title_index; Type: INDEX; Schema: public; Owner: chef
--

CREATE INDEX recipe_titles_title_index ON public.recipe_titles USING btree (title);


--
-- Name: category_names category_names_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.category_names
    ADD CONSTRAINT category_names_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ingredient_names ingredient_names_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.ingredient_names
    ADD CONSTRAINT ingredient_names_recipe_id_fkey FOREIGN KEY (ingredient_id) REFERENCES public.ingredients(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: model_has_permissions model_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- Name: model_has_roles model_has_roles_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: recipe_bodies recipe_bodies_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipe_bodies
    ADD CONSTRAINT recipe_bodies_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: recipe_titles recipe_titles_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipe_titles
    ADD CONSTRAINT recipe_titles_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: recipes recipes_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: recipes recipes_creator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_creator_id_fkey FOREIGN KEY (creator_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: recipes recipes_photo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_photo_id_fkey FOREIGN KEY (photo_id) REFERENCES public.photos(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: role_has_permissions role_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- Name: role_has_permissions role_has_permissions_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: chef
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

