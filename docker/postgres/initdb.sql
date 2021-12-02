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
1	/images/seed/1/2.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
2	/images/seed/2/8.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
3	/images/seed/3/3.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
4	/images/seed/1/3.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
5	/images/seed/3/4.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
6	/images/seed/4/8.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
7	/images/seed/3/6.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
8	/images/seed/4/9.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
9	/images/seed/1/3.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
10	/images/seed/3/7.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
11	/images/seed/2/4.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
12	/images/seed/3/8.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
13	/images/seed/3/3.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
14	/images/seed/2/5.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
15	/images/seed/1/8.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
16	/images/seed/2/1.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
17	/images/seed/1/8.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
18	/images/seed/4/2.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
19	/images/seed/3/8.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
20	/images/seed/1/1.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
21	/images/seed/1/5.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
22	/images/seed/2/4.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
23	/images/seed/3/9.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
24	/images/seed/4/8.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
25	/images/seed/3/3.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
26	/images/seed/1/4.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
27	/images/seed/3/5.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
28	/images/seed/3/5.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
29	/images/seed/2/8.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
30	/images/seed/4/2.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
31	/images/seed/1/3.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
32	/images/seed/2/1.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
33	/images/seed/3/2.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
34	/images/seed/2/7.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
35	/images/seed/1/1.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
36	/images/seed/4/8.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
37	/images/seed/1/6.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
38	/images/seed/4/6.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
39	/images/seed/1/1.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
40	/images/seed/4/8.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
41	/images/seed/4/4.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
42	/images/seed/1/5.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
43	/images/seed/2/4.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
44	/images/seed/1/7.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
45	/images/seed/1/9.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
46	/images/seed/3/2.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
47	/images/seed/1/8.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
48	/images/seed/1/3.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
49	/images/seed/4/8.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
50	/images/seed/4/10.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
51	/images/seed/3/7.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
52	/images/seed/1/2.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
53	/images/seed/3/5.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
54	/images/seed/3/5.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
55	/images/seed/2/4.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
56	/images/seed/1/10.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
57	/images/seed/2/7.jpg	2021-12-02 22:34:31	2021-12-02 22:34:31
58	/images/seed/1/5.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
59	/images/seed/2/2.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
60	/images/seed/2/10.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
61	/images/seed/2/3.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
62	/images/seed/2/6.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
63	/images/seed/1/7.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
64	/images/seed/1/3.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
65	/images/seed/2/3.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
66	/images/seed/1/9.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
67	/images/seed/2/7.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
68	/images/seed/4/8.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
69	/images/seed/1/6.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
70	/images/seed/3/10.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
71	/images/seed/4/9.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
72	/images/seed/4/4.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
73	/images/seed/1/4.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
74	/images/seed/3/1.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
75	/images/seed/3/10.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
76	/images/seed/2/4.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
77	/images/seed/4/9.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
78	/images/seed/4/4.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
79	/images/seed/4/6.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
80	/images/seed/2/4.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
81	/images/seed/2/1.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
82	/images/seed/3/8.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
83	/images/seed/1/2.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
84	/images/seed/1/7.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
85	/images/seed/3/9.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
86	/images/seed/3/7.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
87	/images/seed/2/1.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
88	/images/seed/1/5.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
89	/images/seed/2/9.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
90	/images/seed/4/3.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
91	/images/seed/4/1.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
92	/images/seed/3/8.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
93	/images/seed/3/6.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
94	/images/seed/1/2.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
95	/images/seed/4/10.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
96	/images/seed/1/4.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
97	/images/seed/2/9.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
98	/images/seed/4/8.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
99	/images/seed/4/6.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
100	/images/seed/1/3.jpg	2021-12-02 22:34:32	2021-12-02 22:34:32
\.


--
-- Data for Name: recipe_bodies; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.recipe_bodies (id, body, recipe_id, language) FROM stdin;
1	Dicta animi dolor dolores ea dignissimos ad quod velit. Earum vel omnis expedita sint sit in aliquid. Inventore ducimus aut qui id corrupti dicta at. Dolores quas dolor enim. Sapiente odit enim rerum ut quae voluptatibus. Dolores vero eos et optio doloribus est. Dolor iure in ad et. Sunt vel veniam inventore eum totam adipisci. Sint illum enim accusamus distinctio. Tenetur veritatis quidem cumque quas quia dignissimos reiciendis. Voluptas consectetur maiores sit suscipit incidunt nihil. Ut porro sit fuga quae sed numquam et. Ad aut officiis voluptatem est. Neque accusamus accusantium qui saepe.	1	en
2	Quod sint dolores consequuntur repudiandae. Cum in quidem praesentium molestias. Tenetur illo ea rem quidem. Explicabo voluptatum velit incidunt hic. Exercitationem corrupti exercitationem qui suscipit expedita aut voluptates. Sunt libero consequatur dolorum atque quia recusandae. Et nihil aut tempore a. Ea rerum nulla excepturi et natus quos eaque. Nemo excepturi sint perferendis aut aut ullam. Aperiam omnis id ullam quisquam dolores sit aspernatur. Est aut repellendus officiis vitae voluptas sed aut. Neque facilis vitae eos vel adipisci suscipit molestiae.	2	en
3	Est iste non aut totam placeat. Et aliquid sed cupiditate dolores. Quia aliquid delectus explicabo vel accusamus reprehenderit voluptatem. Beatae et eos cumque nesciunt suscipit eaque enim. Sed dolores ut corporis provident repellat beatae. Ducimus qui debitis reiciendis eos. Est non autem optio nesciunt voluptatem praesentium et. Et sunt hic impedit eum expedita eum aspernatur. Laborum nostrum sed odit voluptas a aut. Et hic dolorem non ut molestiae soluta voluptatem. Exercitationem dolorem mollitia quibusdam ex ea. Sequi incidunt ab dicta porro. Expedita similique dolor sunt repudiandae omnis asperiores.	3	en
4	Rerum illo assumenda quae quisquam corrupti omnis. Deleniti in consequatur harum culpa et. Est pariatur mollitia error nihil voluptatem rerum. Vitae placeat eum placeat omnis. Voluptatem quo ullam dolorem itaque alias aut consequatur. Quia culpa qui at iure quos temporibus. Quidem ratione facilis doloremque reiciendis ut dicta quia. Nihil culpa vitae ea omnis. Ad natus repellat at pariatur animi. Molestiae minima est enim nostrum aliquam earum.	4	en
5	Aut quaerat molestiae sapiente exercitationem fugiat est. Natus esse architecto quaerat architecto vel nihil. Qui et animi dignissimos cumque ut. Ut consequuntur quod voluptatem cumque officiis amet accusamus est. Nesciunt ullam facilis mollitia aperiam earum et a facere. Doloribus earum omnis aut laboriosam enim. Reprehenderit et harum aspernatur praesentium doloremque nihil. Eius cum saepe totam eveniet sed quis sed dicta. Ipsum ea beatae voluptatibus architecto ratione qui vitae. Corporis delectus non fugiat qui qui modi veniam. Et quia exercitationem ullam consequatur quia. Quia quia qui voluptas saepe.	5	en
6	Doloremque labore perferendis laudantium nihil. Recusandae magnam ut aut. Aut accusamus consequatur eligendi laborum dolores voluptates nesciunt. Et qui et et optio aperiam dicta consequatur. Nemo velit dolores quaerat ipsum quasi quisquam pariatur. Cupiditate architecto dolores saepe sit alias beatae. Deleniti animi praesentium quia sint perferendis adipisci. Repellendus tenetur velit veniam laborum esse ab. Magni iusto quasi error commodi qui. Voluptates aut praesentium explicabo vel corporis. Ipsum quia vel animi vitae. Unde praesentium eligendi autem perspiciatis voluptas non eaque.	6	en
7	Iste laboriosam quis ut iusto aliquid non. Non omnis mollitia ullam cupiditate dolor eaque ut. Nihil rem molestiae est et placeat molestiae quae. Sint quia beatae dolores minus beatae adipisci. Ratione deleniti aut numquam et voluptas eum consequatur. Debitis dolorem reprehenderit minus porro deleniti quidem. Saepe repudiandae omnis animi corporis aut corporis quaerat doloremque. Non occaecati velit molestias et expedita excepturi non. Nulla quo sed laboriosam fugiat reprehenderit ducimus sint. Quia iste voluptas aut et. Nihil incidunt tempora quis.	7	en
8	Cum quia officiis possimus aperiam. Saepe aut nisi quis soluta veritatis commodi eum. Consequatur ut eveniet quos cupiditate optio distinctio. Assumenda consequatur soluta porro sint dolor veritatis. Excepturi hic non quo voluptatem libero unde quod. Voluptas tenetur in earum rerum. Ad distinctio sed ut quas praesentium doloribus odio. Soluta saepe assumenda odio nemo mollitia et. Facilis est iusto est alias eum magnam quis. Maxime qui quo adipisci labore quia quo. Officia delectus neque sit optio corrupti ea sunt. Consequatur debitis quae aut consequatur sit id.	8	en
9	Et quia aut sed quibusdam magni. Quod odit magni ut exercitationem. Ducimus voluptatem ex quia consequuntur ea sit. Doloremque et aut quibusdam tenetur dolore debitis. Qui sunt et nihil odio pariatur consequatur. Vel ad dolorem magnam et aut esse. Aut rem voluptas iure deleniti eius ducimus. Saepe quae aut unde eos maiores. Nisi nemo enim dolorem velit alias. Commodi consequuntur sed consequatur tenetur vero exercitationem. Praesentium eaque earum eos cupiditate alias. Voluptatem molestiae expedita natus suscipit. Aut est vitae asperiores quas nostrum veritatis.	9	en
10	Possimus voluptatibus tempora omnis enim voluptatibus amet. Cupiditate consequatur nihil ipsum similique eveniet pariatur. Magni hic illo dolor commodi consequatur sit at. Voluptatem tempora molestiae voluptatum qui suscipit voluptate odit. Inventore praesentium ad impedit laboriosam amet ut dicta. Exercitationem ut necessitatibus et nihil quidem quam nulla. Occaecati id tempore ut est. Iure qui velit corrupti id eos veritatis. Ipsa cupiditate maiores pariatur voluptatem alias officiis. Animi accusantium illum eos illum ipsum nesciunt.	10	en
11	Eos illum eos dolorem doloremque reiciendis necessitatibus. Cupiditate doloremque aperiam modi. Accusantium voluptas consequatur veniam voluptatum dolor placeat harum. Similique illo quia aliquid itaque consequatur. Nam omnis et perspiciatis dolor aut omnis. Dolorem molestiae qui magni eos aut. Repudiandae doloribus architecto nostrum impedit consectetur sunt. Qui est placeat provident et. Nulla non iusto doloribus consectetur. Quos deleniti ex sit est. Aperiam aspernatur dolores esse quia et et quas sit.	11	en
12	Vero consequuntur voluptatem ipsam illo. Non quis ea accusamus id dolore. At exercitationem aut accusamus illo natus nisi aut. Sed doloremque odio illo nobis perspiciatis amet et quibusdam. Voluptatibus quod molestiae voluptas necessitatibus. Sequi quas tempore quam sed quia omnis. Consequatur illum quod quod qui aperiam voluptate hic. Ut est iusto similique ducimus non aut autem. Voluptate consectetur nihil fuga quis minus. Voluptas dolorem et ea unde ipsum. Necessitatibus doloribus nihil nisi minima velit. Quia sit qui alias hic magnam quam. Fuga aut recusandae sit maiores fuga alias consequatur.	12	en
38	Provident ex minus excepturi earum earum soluta. Molestiae minima ea autem sed vero sed voluptatem. Unde esse quia beatae. Voluptatem deleniti dolore consectetur et possimus et excepturi. Modi voluptatem qui enim similique. Quidem qui mollitia aperiam quis aut consequuntur corrupti. Et voluptas expedita aliquam quod velit voluptas ut. Vel hic recusandae dolorem ut qui vitae. Natus voluptatem neque eos laudantium quod doloribus. Et eius inventore totam laudantium. Adipisci eos reprehenderit qui sunt non. Ullam nam illum enim quis in voluptatem delectus.	38	en
13	Tenetur harum enim tempore a excepturi. Officia aperiam asperiores consequatur ex. Nemo est voluptatibus omnis adipisci veniam libero. Porro corporis molestiae quasi fuga vitae debitis quibusdam. Mollitia recusandae aut dolor qui in cum. Sed voluptatem nihil dolore molestias voluptatum perspiciatis. Et et itaque adipisci eos. Autem non ea eum nesciunt fuga esse et exercitationem. Iste sit non minima rerum illo. Et omnis nihil accusantium dicta. Reiciendis officia ut qui consequatur consequatur nulla. Voluptatibus perferendis enim voluptas. Officiis recusandae eaque autem tenetur. Esse incidunt numquam sit ut incidunt.	13	en
14	Et error dolor dolore ut cumque tempore. Amet incidunt et commodi omnis. Commodi non officiis corporis inventore sequi eum sunt optio. Qui consectetur commodi ipsa qui quo. Quaerat non voluptates ipsum. Delectus ea minima vel aut quia dolorem. Quia unde fugiat illum. Dolor eum in odit veniam. Dolore consequuntur ratione consequatur fuga eveniet. Veniam omnis iste non. Sunt maxime dolorum nihil aut harum. Nihil mollitia reiciendis quasi quam sit sequi. Reprehenderit dignissimos ut excepturi quam necessitatibus dolorem ipsa. Saepe maiores maiores deserunt adipisci quo ut placeat.	14	en
15	Rerum et blanditiis quas excepturi et. Illum molestiae dolorem facere alias aut. Est placeat nobis cumque enim dolorum. Porro aut atque id illo. Incidunt inventore et perferendis esse minus eligendi. Consectetur occaecati ut sunt alias. Quisquam saepe aut consequuntur est quasi ad. Consectetur quia beatae sit iusto. Ad accusantium autem aut iusto debitis voluptates. Culpa est aperiam aut et possimus soluta enim adipisci. Perspiciatis asperiores quae dolorem consequuntur excepturi. Sed qui et a eum quia omnis. Et numquam quidem dolorum ut laudantium officia. Quod eos natus ut adipisci architecto consectetur iusto.	15	en
16	Asperiores sed dolores assumenda doloribus voluptas reiciendis. Earum excepturi alias placeat sed iste. Deleniti sit iusto rerum tempora nesciunt. Fugit qui rerum quasi veritatis omnis culpa magni. Et nemo et enim. Repellendus reiciendis non voluptates laudantium sit. Itaque ratione illum corporis accusantium. Et assumenda sit hic ea voluptatum. Sit error eos non a. Autem blanditiis minima aperiam itaque esse. Dignissimos repellat vel ut quo inventore iure. Recusandae sed odit cum non rerum. Ea corrupti quasi dolorem. Minima eum quae ducimus. Ut iure sunt nam voluptas ullam.	16	en
17	Consequuntur ut voluptate pariatur suscipit consequatur vel deleniti. Totam quos et ut architecto impedit ut officia. Aspernatur aspernatur modi tempore eos. Esse illo ea aut ea voluptatibus quo repudiandae. Blanditiis non consequatur tempora et velit hic itaque. Iure aut adipisci et tempore enim voluptas. Possimus ex aut corporis distinctio veritatis. Quia sunt minima id odio qui consequatur. Et possimus aliquam illum. Fugit ducimus minima quaerat velit dolor aut. In quo omnis dolorem sapiente. Distinctio autem temporibus eos rerum incidunt fugit. Aut in eum est adipisci. Porro atque voluptatem dignissimos qui odit optio dolorum.	17	en
18	Omnis aperiam numquam quod voluptatem debitis corrupti. Eum deleniti doloremque sed error et et. Iure iusto unde libero odio ad. Sequi necessitatibus repudiandae soluta dolores repudiandae explicabo. Temporibus voluptas laboriosam qui quo dignissimos delectus doloribus iure. Et tempore perferendis voluptates eos nihil reiciendis optio. Quaerat dolore reprehenderit fugiat. Aspernatur voluptatem accusantium nesciunt expedita. Est laudantium quia non harum. Aspernatur laboriosam aut dignissimos explicabo quisquam mollitia. Nisi labore et harum velit.	18	en
19	Sunt a ex neque magnam. Aut qui maiores ea consequatur. Modi sit numquam voluptates. Et beatae facilis voluptatum et aut blanditiis. Illo ad quia quia sint. Quia dignissimos quia fuga. Recusandae quisquam neque ab et perferendis aspernatur. Eos et nulla quo voluptatem ipsum ex iste. Voluptatem est voluptatem dolor blanditiis iusto explicabo. Cum culpa fugit repellendus incidunt quae totam vel. Accusantium perferendis consequatur ut. A nobis minima quibusdam libero minus non reprehenderit. Quisquam libero rerum enim.	19	en
20	Et a voluptates sint in nihil. Facere voluptatem consequatur nihil. Incidunt qui iure error debitis eum. Enim rem dolores soluta eum. Nihil corporis at dolorem qui. Quisquam ipsa ipsum tenetur ipsam et eius doloribus. Neque dolores sed illo quisquam. Non incidunt enim reiciendis tenetur facilis. Eveniet magni est eum ratione sed et repudiandae. Rerum et sed sed. Facere nihil iusto molestiae enim aut repudiandae blanditiis voluptatem. Sequi quaerat animi voluptatem. Quam in ratione neque voluptatem rem. Provident eos cumque praesentium ut.	20	en
21	Accusamus consectetur nostrum ut deserunt veritatis. Sint perspiciatis delectus et dolores nemo repellat. Vel dolor aperiam cupiditate laborum et modi. Praesentium pariatur iure culpa qui mollitia blanditiis. Non quia non excepturi explicabo saepe. Iste occaecati ad molestiae dolorem. Aut iusto dolore dolor magnam sed aut eos. Dolore voluptatibus possimus id dolorum. Voluptatem nemo iste sed tempore ratione aliquam. Totam quo qui illo reprehenderit. Corporis ducimus et iusto.	21	en
22	Et ad accusamus facilis enim deserunt. Autem labore sed quod animi quibusdam saepe sapiente. Et natus repellendus impedit iste qui et. In earum aperiam aut est necessitatibus repellat et ducimus. Animi saepe quidem laborum. Dolores neque doloremque ea molestias est adipisci. Fuga magni suscipit cumque similique beatae. Est in quo cupiditate atque. Illum et magni molestiae accusantium eaque qui aperiam corrupti. Distinctio itaque in voluptatem aut dolor sequi ratione molestiae.	22	en
23	Aut corrupti magni quia est sunt qui. Nemo dolor consequatur sint molestiae et. Minima molestiae qui repellendus impedit. Nobis quia voluptas reprehenderit aut eum quae voluptas. Et magni impedit hic et repellendus. Optio qui omnis consectetur alias quia. Velit nulla quia earum aliquid ab. Officia ut velit quis eligendi saepe voluptate eaque facere. Minima molestiae quo ex aut quam molestiae. Distinctio at beatae eaque in modi maiores. Non voluptatem voluptatem inventore libero consectetur illum id. Architecto magnam quod autem amet aut. Dolore dignissimos ut quod eum ea. Tempora dolorum magnam sed voluptas.	23	en
24	Ea dolor velit nostrum. Porro doloribus atque eum praesentium. Rerum ut dolorem beatae dolorem officiis eos et. Qui cumque commodi consequuntur tenetur expedita. Amet voluptas delectus assumenda consequatur asperiores est. Eligendi aut dolorum qui maxime voluptas maxime. Exercitationem totam suscipit et sapiente voluptas voluptas qui. Hic eos cumque optio nobis nam sapiente quaerat autem. Corrupti doloremque voluptatem qui iusto quo. Veniam voluptatum sed nihil non expedita. Dolorum consequatur expedita repellat aliquam sapiente laboriosam eligendi id. Quo voluptates quae voluptate illo qui delectus. Non sint nostrum at rem.	24	en
39	Maxime quia assumenda corporis. Velit rerum iusto iusto ea harum. Aut magni sunt a. Quibusdam sit odio eos eius dolor. Deleniti et in totam provident culpa ea id. Ut rerum aliquam maiores cupiditate. Accusantium ex minima nisi est. Illum voluptate harum facilis facere. Sit est non occaecati iusto corporis amet sit alias. Quod ipsa quo cupiditate omnis. Fugiat et perferendis eligendi aspernatur id rerum eos. Nesciunt harum odio in unde quia ut. Facere ut quibusdam ut inventore.	39	en
25	Ipsum assumenda neque quis iure voluptas amet fugiat. Qui aspernatur temporibus architecto accusamus. Quia illum blanditiis facilis non natus modi. Ipsam natus consequatur quod quos doloribus occaecati. Quas quis odio consequuntur qui fugit asperiores consequatur. Consequatur dolorum autem labore et ut. Accusantium quisquam dolorem et iure deserunt. Deleniti voluptas in ut occaecati molestias expedita sed at. Est quam dolores quam aut iure et. Iusto atque aut qui officiis. Dignissimos fugiat dolore dolores praesentium iure. Culpa eligendi tempore reiciendis eligendi aspernatur sapiente reiciendis error.	25	en
26	Repellendus sequi omnis aliquid quia. Debitis similique fugiat perspiciatis eaque voluptatem aut sequi. Consequatur enim quasi est in et. Eos recusandae ut quo. Perspiciatis ut sapiente eaque aliquid dignissimos. Quo esse beatae animi. Esse ex nobis blanditiis quaerat. Rerum dolorem voluptas corporis dignissimos. Est assumenda amet dignissimos culpa nulla corrupti. Voluptate et totam deleniti ipsam fugit deserunt. Et qui maxime minima voluptatem. A omnis esse quo illo consequatur excepturi. Enim magnam praesentium aut consequatur nobis. Aperiam illo ea doloremque qui aut quam. Pariatur qui quasi exercitationem.	26	en
27	Fugit sunt totam ex quia enim quasi ea. Distinctio eum deleniti quaerat consequuntur. Vel quis praesentium molestias repellat officia odio quia. Vitae et recusandae explicabo dolorem culpa quis et ex. Excepturi eligendi quos eveniet qui provident sunt. Officiis autem placeat eos enim amet ipsam consectetur. Voluptatem nemo blanditiis nisi amet. Itaque dolor velit alias ratione doloremque. Ipsum eveniet sint facilis ea hic. Voluptas rerum officiis veritatis dolores ut earum sit. In et totam porro aut et.	27	en
28	Velit architecto id est nobis in fugiat accusantium. Quod doloremque quasi voluptatem numquam occaecati cum. Ut ea itaque impedit in natus dolor amet. Excepturi dignissimos autem ab dolorem voluptatum quo asperiores. Et incidunt ut quia ea deserunt. Quos veritatis reprehenderit vel rerum quas alias consequatur. Suscipit aliquam tempora voluptates rem dolores aperiam. Corporis excepturi asperiores aliquid quo. Aut aliquid in adipisci corrupti voluptas atque sit rerum. Rerum possimus voluptatum fugit. Et voluptatem aut vel.	28	en
29	Id quisquam sed quia harum quis sapiente. Minus dolor est repudiandae omnis at ut. Enim sed veritatis labore praesentium. Unde iste laboriosam totam praesentium itaque. Ab corporis iure quia id. Cupiditate minus ratione et odit. Amet ex id totam saepe quo nam. Quos placeat laudantium sit quaerat iure libero. Dolor sit natus qui. Facere ea quia vel omnis voluptates unde ex. Consequatur ut possimus a blanditiis harum voluptatem. Minima eum corrupti tempore quibusdam dolores. Temporibus sed aut molestias ut veniam qui.	29	en
30	Et rerum et ea alias rem distinctio nulla. Dolore dolor odit quis dolorum omnis fuga qui quae. Quia dolor nemo qui voluptatem recusandae. Doloremque suscipit officia enim ex repellat quis. Facere voluptas voluptates commodi occaecati. Et eum quos beatae qui. Commodi autem praesentium assumenda quae omnis ut. Qui recusandae aperiam corporis omnis et beatae. Est voluptas nostrum non consequatur quae nulla ipsam ratione. Iusto et quia rem molestiae. Quia eum quibusdam quia est et quas.	30	en
31	Modi et omnis ducimus hic. Porro similique modi inventore dolorem nam ut. Dolorem magni eveniet voluptatibus deserunt. Tempore tempore commodi autem modi culpa. Ad similique ut beatae doloribus architecto accusantium et. Officia laboriosam minus ut doloribus illo ea. Rerum adipisci soluta eum quia. Labore voluptates architecto distinctio iusto. Est qui adipisci ut fugit. Nihil fugit tenetur placeat aspernatur. Est expedita nulla eos asperiores magni eos nihil. Sed quae nihil maiores in ut est ea. Corrupti sint et debitis eveniet. Explicabo pariatur impedit eaque voluptate assumenda dolorem.	31	en
32	Quis vitae voluptatibus voluptatem porro et. Rerum dolorem optio illum sint distinctio. Cumque non quisquam sequi sunt nihil maxime consequatur. Nemo omnis omnis eaque voluptatem explicabo. Non dolores nulla et. Aliquid voluptatum neque quod error iusto ea voluptas. Nostrum aut omnis dignissimos laborum cum debitis ullam voluptatem. Voluptatem non optio magni facilis corrupti. At sit repellat explicabo. Explicabo aliquam quas quod dolores quo. Quisquam nobis voluptatem quo non qui distinctio. Inventore impedit molestiae sed laborum quo id fugit aut.	32	en
33	At eos qui voluptatem esse et doloribus aut. Numquam consequatur nihil et enim quisquam earum repellat. Fugit maiores laborum aut eligendi et. Consequatur totam explicabo recusandae quis tempora. Nihil veritatis optio ea accusantium sunt occaecati. Et adipisci eum minima placeat sit. Culpa illum enim numquam. Eius laudantium et soluta. Consequuntur natus eos est. Repudiandae adipisci sunt illum iure. Laudantium similique velit facilis nulla possimus ipsam molestiae. Quia ipsa distinctio quia labore autem sed aut. Officia occaecati in asperiores eligendi voluptas dolor animi sint.	33	en
34	Saepe tempore voluptates voluptate corrupti. Quae hic autem eos itaque. Eaque omnis culpa autem molestiae velit doloribus in et. Est explicabo quae rerum dicta aspernatur quos. A et dolor ut ut. Dolores aperiam molestiae a nihil qui. Similique voluptatem vero voluptas perspiciatis illo deserunt quam. Recusandae consequatur fugit labore ea vel. Earum voluptas quia consequatur consequatur praesentium consequatur asperiores laboriosam. Ab quidem sunt quasi incidunt ipsa. Sed rerum commodi non asperiores consequatur cupiditate accusamus.	34	en
35	Laudantium sunt aut aut nemo eum est quo. Harum atque odit dolore tempore nesciunt distinctio. Occaecati quae et quo. Quos et odit qui tenetur rem necessitatibus. Eveniet assumenda et possimus qui asperiores. Qui omnis dolorum explicabo amet beatae. Dolor dolores nemo ipsa optio et maiores. Iure et rerum expedita a porro. Totam sint totam aut quis eum. Voluptatem eligendi qui tempora perferendis. Quia et odio ducimus nihil. Rerum deleniti deserunt doloremque similique dolores enim.	35	en
36	Voluptatem sunt ut itaque odio enim iste temporibus. Omnis natus voluptatem et ea voluptatibus. Voluptas voluptatem dolorem sit dolore asperiores. Saepe et delectus incidunt pariatur. Necessitatibus ratione ea nihil iste nemo nam dolorum. Cumque quisquam optio nemo aut sunt. Perferendis quae sapiente molestiae non fuga ut nihil. Aliquam hic repellat quia officiis voluptates. Quis distinctio officiis commodi mollitia et similique. Non quia non rem earum cupiditate. Voluptas porro est similique. Minima itaque velit sint expedita excepturi iusto.	36	en
37	Debitis recusandae eum expedita incidunt quod aut voluptatem. Non deserunt libero rerum veritatis. Autem totam et vitae eveniet iusto illum fugiat quos. Ex architecto magni aut maiores. Suscipit nihil maxime fuga autem tempore. Voluptatem deserunt rem possimus eligendi praesentium fugiat vel. Totam quia animi beatae perspiciatis non est. Omnis iure distinctio voluptas optio vel quae. Molestias ut fuga deleniti quo totam. Libero quae debitis pariatur sunt consequatur ab. Assumenda voluptas eius molestiae. Aut consequuntur dolorem earum id odio.	37	en
40	Animi et facilis consequatur. Rerum et quia numquam sint unde. Dolor temporibus recusandae aliquid quis et consequatur qui. In perspiciatis dolores saepe vel. Earum blanditiis nam eos aspernatur a qui pariatur. Nihil non unde nobis itaque voluptates et. Quia voluptate et deleniti magni. Est sit assumenda consequatur neque excepturi accusantium ratione. Labore eum at ducimus nemo in nam iste. Et voluptates ea voluptatem autem officiis. Ipsum animi omnis ut ipsum amet. Beatae et nemo rerum. Nemo delectus officia et. Dolor qui quisquam voluptas sapiente quos.	40	en
41	Impedit quisquam sit eum. Facere minus velit ratione voluptatem. Ducimus et eligendi nemo explicabo iure id. Tempora ut autem ut ea. Ullam illo numquam qui perspiciatis. Ab placeat et pariatur cumque quidem dolores. Non facilis facere itaque est ut. Rem sit et et eum ut in. Quibusdam eum magni ut deserunt ea hic dolore qui. Quaerat corrupti dicta ab voluptatem repudiandae quis eaque enim. Sit impedit ipsum laboriosam veniam. Est aut distinctio libero qui ea dolorem laudantium. Mollitia in rerum ipsam ipsum voluptate.	41	en
42	Fugit et rerum quod voluptatem eos et et. Et aspernatur necessitatibus perferendis fuga earum sunt et facere. Et dolores fuga perspiciatis nobis ullam animi harum. Voluptatum fugiat adipisci qui omnis nostrum ea. Quidem est eligendi sit aliquid. Atque in eveniet ut et maxime quia vel. Porro quas praesentium rem earum corporis sequi. Ea saepe quam et. Nisi et molestias omnis harum est modi. Sint dolor porro est ut et. Qui eos porro delectus laborum. Nisi sequi autem nihil repellendus. Eos qui libero sed ut est aut esse. Hic nemo aut qui aperiam qui et.	42	en
43	Delectus quia accusamus eligendi et. Culpa laudantium id quis est optio et. Laboriosam doloremque debitis aut sed. Quas ducimus accusamus beatae aspernatur magni. Cum debitis veniam ea mollitia ipsa minima amet qui. Ipsum sequi sed quia officiis. Error quis necessitatibus porro. Quas perferendis aut fugiat blanditiis consequatur eaque aliquid. Dolores veniam omnis minima nihil deleniti omnis. Ut nihil amet amet aspernatur optio qui accusantium. Placeat enim tenetur ut incidunt. Nihil ullam voluptas repudiandae iure. Officiis est non eos incidunt aperiam magnam aut. Adipisci asperiores non aut hic pariatur nihil nulla sed.	43	en
44	Tempora ut quia aperiam nostrum earum alias enim. Repudiandae voluptas cupiditate eveniet sit quasi non voluptate. Ratione porro exercitationem cupiditate ut. Temporibus sequi distinctio iure ut. Enim perspiciatis cum magni facilis minima. Porro tempora facere sunt qui sit quos velit. Facere nihil quis distinctio sint et. Nesciunt voluptate aut vero. Et ipsam enim error doloribus ex iste facilis saepe. Consequatur voluptatibus ad sapiente qui qui. Qui qui voluptatibus ducimus est.	44	en
45	Ea quo sit quibusdam consequatur at unde ex. Facere quia incidunt et amet aut. Assumenda sed facere alias et mollitia nesciunt. Quos numquam magni accusamus vitae rem debitis. Numquam tempora rerum nulla ea aperiam odit possimus. Earum dolore error veritatis. Nulla ut tempore et hic itaque accusantium aliquid. Et labore fugit cumque vel consectetur enim. Qui nisi quod magni. Repellendus nesciunt deleniti totam in ex enim corporis laboriosam. Voluptas maxime tempore quo ea veniam ipsum cumque. Tempora omnis et sit. Est qui velit eos eaque numquam. Reiciendis ratione illo qui vel voluptatem. Ut atque repellat laboriosam.	45	en
46	Repellat deserunt facilis delectus cumque distinctio expedita. Aut eum illo ut nihil. Nobis et quae rem. Quo odit error dolorem dolore sunt commodi id. Commodi ea consequuntur architecto voluptas id aut ipsa sit. Quis praesentium maxime repellendus corporis consequatur. Nemo molestiae voluptas aperiam expedita. Totam exercitationem sed suscipit aliquid. Recusandae atque doloribus eum debitis. Cum voluptatum impedit deserunt labore odit. Aut sunt et optio non rerum dolores quaerat. Sed nemo voluptatum aliquid rem ut sunt. Nihil nihil assumenda suscipit sint dolores est.	46	en
47	Amet hic aperiam ut explicabo et dolor consequatur. Placeat veritatis voluptatibus eaque consequatur. Laboriosam sequi illum occaecati quis et amet quo qui. Sit qui sunt quisquam nam dolores. Provident voluptas rerum omnis veniam. Sed ea voluptatem suscipit dolor possimus. Ducimus quia sit unde quod dicta. Nisi ullam animi dolor ea et. Tenetur nisi corrupti consequuntur. Illum est nam nam ipsam quis esse porro. Ut exercitationem id id quasi ipsam.	47	en
48	Nihil est modi ut quas labore aspernatur enim. Alias dolores ab sit sint sint. Temporibus qui earum officiis et dolorem non ea. Culpa rerum vel rem nihil quaerat odit doloribus. Assumenda repellendus dicta ipsam ratione maiores blanditiis. Qui natus ut iste rerum perferendis eum. Distinctio quis et et dolores labore quae optio. Omnis necessitatibus doloribus vel animi possimus. Autem ducimus omnis illo tenetur et earum. Dolore nisi ullam et veniam earum. Incidunt qui omnis esse pariatur. Blanditiis sunt accusantium possimus. Delectus consequatur ab corporis. Animi ea minima laudantium quaerat.	48	en
49	Rerum ad et similique sequi a minus. Ipsum animi consequuntur neque ut. Ut nihil et adipisci. Odio blanditiis aut harum eos impedit. In debitis a ea non. Voluptatibus est est distinctio repellendus dolores. Rem dolor ducimus eligendi et vel rerum tempore. Similique animi officia magni vel cumque laboriosam maxime. Ipsum voluptatem ab et in occaecati deserunt asperiores. Consectetur quia optio expedita sunt voluptas sit dolorem. Et harum velit pariatur quibusdam vel. Enim quisquam vero aut esse voluptas aperiam.	49	en
50	Quidem sint nulla omnis non eos. Cupiditate voluptas ut nobis ratione non quam. Necessitatibus qui sunt hic vel. Ut odit dolor beatae voluptatibus consequatur voluptate dolor cum. Rem fugit est officiis officiis illo voluptas ea. Minus et delectus repellat nisi repellat qui. Iusto sed magnam vel et omnis est. Excepturi non vel unde atque cupiditate non. Deleniti in et magni debitis. Tempora exercitationem qui ut porro consequatur laboriosam ut. Tenetur recusandae ipsum quas quos et qui porro. Nisi et dolore quaerat nesciunt. Et quos sed nesciunt et et maxime odit.	50	en
51	Laboriosam et blanditiis veritatis necessitatibus sint aliquam. Ipsa omnis odit recusandae nemo. Nostrum unde cupiditate eos sit unde totam esse. Et qui perferendis nihil et. Maxime molestiae velit in dolores nihil. Doloremque quidem nihil et sit quidem et. Voluptatem impedit aliquid commodi harum commodi. Quod eveniet et dolor ut suscipit. Consectetur nobis quisquam dolores suscipit exercitationem. Quas iste dolore voluptatem omnis dolor est non. Quo iusto asperiores necessitatibus molestias qui veniam. Quibusdam dignissimos vitae dicta laudantium sed deserunt sed animi. Voluptate culpa quo explicabo ut minus enim.	51	en
52	Aut ratione suscipit sed deleniti reiciendis sed. Nostrum error magni facere iusto nisi totam et doloribus. Omnis quae voluptatem vel culpa quasi illum accusantium. Id dolorem natus nihil fuga quam fugiat sit. Ipsam iure ut aut et repudiandae inventore doloribus necessitatibus. Sed dolor ipsam ex ut mollitia fugit. Voluptatem qui et reprehenderit sed a officiis. Libero perferendis veritatis aut dicta distinctio. Dolores rerum magni ea aut similique velit magni. Est animi id necessitatibus iste quo ab sit. In est aperiam nulla dolorem voluptate nemo et.	52	en
53	Illo sequi nobis beatae et quia architecto nostrum qui. Itaque facere velit quis exercitationem velit. Vel tenetur laboriosam blanditiis accusantium commodi exercitationem dolorum. Earum quasi natus aliquid aut eum consequuntur. Quibusdam ut quisquam dolor rerum possimus. Repudiandae iure quo quas sed corporis iusto. Placeat dolore quae corporis accusantium explicabo alias atque. Alias voluptas consequatur qui minus. Natus debitis voluptate occaecati assumenda aliquid laborum quia explicabo. Voluptas maxime qui adipisci.	53	en
54	Ut voluptatem atque est inventore quia. Sunt corporis quis ex ipsum dolores veritatis dolorum. Quia ea nihil placeat ducimus magni excepturi. Nihil assumenda nihil iste id optio voluptatem perferendis. Magni quia quia adipisci velit consequatur. Ut ad corporis voluptas doloribus autem distinctio explicabo. Ex dolorem ratione magni et vel corrupti velit. Accusantium suscipit reprehenderit recusandae ratione occaecati eveniet. Sint voluptates quis excepturi et cupiditate aut libero. Quidem facere error odio illum perferendis quaerat veniam ullam. Natus quae labore porro rerum.	54	en
55	Laboriosam accusamus iusto praesentium omnis sint dolorum. Autem modi ut nostrum inventore molestias. Adipisci est debitis dolore odio ad pariatur id. Eos repellendus iusto est consequatur fugiat ipsum magni doloremque. Ratione at incidunt qui quasi quis veritatis. Quos voluptatem asperiores dolores aliquam quia id. Fuga distinctio ut veniam quas provident cum ea. Et excepturi sapiente similique. Possimus corrupti pariatur magnam nemo similique quas aspernatur. Voluptatem assumenda delectus dolorem vel qui tenetur. Dolor beatae voluptatem reiciendis soluta laboriosam magni enim.	55	en
56	Officia non autem et iure impedit temporibus. In sed voluptas officia aperiam. Perspiciatis provident saepe consectetur et eos perspiciatis aut ad. Eum cupiditate ea quo laudantium. Illum officia magni voluptatum porro. Repellat qui eaque doloribus at est tempore a nesciunt. Magni ut reiciendis omnis. Minima facilis eum rerum cupiditate omnis architecto nobis. Dolores est qui voluptatem quaerat commodi tempore voluptatibus. Cum quidem aliquid nobis voluptatem quos est voluptatum. Voluptate nam sapiente deleniti error rerum. Qui sapiente dolorem laboriosam assumenda velit eos.	56	en
57	Quia non exercitationem omnis architecto ut ut sed eos. Ut nemo quibusdam quo non voluptatem eaque beatae. Saepe eum aliquam dolorem voluptas ipsam. Corporis vero rerum ut quibusdam et nulla aperiam. Ea esse sint impedit culpa explicabo omnis. Eum explicabo sed asperiores minima at unde. Possimus animi ut voluptas aut. Explicabo assumenda est consequatur molestiae deserunt inventore. Amet sunt esse ut temporibus unde praesentium. Omnis possimus et in tenetur quidem et ipsa. Facere est excepturi voluptas ea animi nulla ea. Dolor ipsa aut iste facilis sequi.	57	en
58	Sit corrupti delectus tempore sapiente. Hic esse eum aut iure ullam veniam. Laudantium delectus sed et. Dolorem illo similique voluptatem nemo sed fuga qui. Recusandae nihil molestiae aut. Non architecto dolor quo sit commodi quas cum. Temporibus assumenda laudantium cupiditate. Quis sit dolorem est vel dignissimos aspernatur veritatis. Libero est explicabo beatae voluptas. Necessitatibus consectetur aperiam enim possimus. Quos quis voluptatibus est illo. Eius labore aut veritatis enim. Aliquid itaque aut dolorem quia totam beatae nisi ipsum. Voluptates voluptatibus velit rerum quam voluptatem magni libero.	58	en
59	Rerum vel dolore perferendis officia. Eveniet deleniti aut non et autem vel. Voluptas est aut vero quia ullam omnis in. Quas quos dolores facilis dolorem illo reiciendis aut. Aut repellat quo eligendi minima quisquam iste doloribus. Sunt quis in ab et quod nesciunt. Nostrum architecto reprehenderit tempore molestiae architecto aliquam culpa. Omnis dolores unde expedita sit quis eos. Ipsum occaecati perspiciatis similique et minima. Vel cum ducimus occaecati et.	59	en
60	Quas est fugit voluptatum. Sit ut qui tempore aspernatur fugit incidunt consequuntur. Cupiditate aut sapiente aut nemo cumque. Ratione et totam optio. Maiores nulla libero maiores quis praesentium. Non a unde cupiditate enim alias. Ducimus eligendi suscipit ducimus quasi asperiores ea est. Nam eum vitae ut nobis eos. Sed et enim beatae iste officiis. Perspiciatis vel qui et aperiam. Aliquam cum enim ratione vitae blanditiis eos veritatis reiciendis. Totam suscipit omnis sequi et ut doloribus. Et itaque assumenda quod distinctio tenetur quibusdam quis. Blanditiis architecto voluptatum culpa. Alias non ex odit consequatur ut.	60	en
61	Incidunt ea dolor ea omnis. Et ea dolorum voluptas sint tempora nisi laudantium. Id rerum rerum inventore suscipit aut. Et magni alias itaque fugiat qui culpa. Iste aut quis ipsum perferendis. Est nesciunt est rerum sequi. Rem quis iure quaerat voluptatum est. Accusantium et qui adipisci repellendus nam sed. A autem at mollitia aliquid quaerat molestiae qui. Veniam voluptatem odio ea et sunt. Officia debitis ipsum ab fuga in aliquam et. Dolorem minima in voluptatem. Accusamus itaque fugit enim cupiditate et iste repudiandae.	61	en
62	Quaerat facilis ut eos placeat. Architecto quidem quis enim rerum. Omnis aut adipisci autem illo tempore et sequi. Est et nulla est quibusdam placeat nam hic. Quod quia aut ratione reiciendis ea. Animi deleniti quasi cupiditate numquam. Est ex repellendus porro commodi quo facere autem. Dolore eligendi est rerum commodi. Blanditiis blanditiis quidem quaerat dignissimos et. Blanditiis non omnis nihil corporis expedita temporibus. Illum minus est eius quo quo. Qui eligendi voluptatem fuga similique nulla perspiciatis eos. Voluptas sunt reiciendis voluptatem consequatur quod blanditiis quasi.	62	en
63	Rerum quia reiciendis sapiente omnis minus doloribus. Iste consectetur quos numquam eligendi vitae dolores eaque. Facere molestias et ab aspernatur dolorem ducimus. Id debitis nesciunt facere corporis. Non beatae totam sed. Itaque aut quis harum molestias omnis dolores. Aut odio nobis deserunt provident quia sint. Amet molestias nihil aut repellendus culpa et. Enim eveniet cumque nemo velit nemo aut. Soluta enim velit rem iusto delectus.	63	en
64	Et sit voluptas autem quia ea sunt animi sed. Velit consequatur ad nam ducimus aut assumenda similique. Et fugiat est possimus quo. Dolor fugit corporis voluptates dolor officiis laboriosam. Aut quam ad id quibusdam. Nisi et cumque vero eveniet et enim in velit. Nisi voluptates ipsam dignissimos exercitationem ut optio. Velit quas dolorem non quas aliquam. Vel sapiente dolorum ipsum qui accusamus dignissimos sequi. Consequatur eos deleniti minus aliquid omnis qui necessitatibus nam. In dignissimos doloribus quis porro rem ut molestiae nesciunt. Voluptatum ad deserunt et nam odio. Et sint voluptatem harum qui qui.	64	en
65	Voluptatem exercitationem dolores ratione eius iste in. Velit est dolor sed facere. Voluptas sequi ad molestiae odio. Reiciendis omnis possimus similique voluptatem asperiores et. Ab molestiae eaque et est odit suscipit sunt est. Autem sunt dolorem dolores dolor asperiores eos. Molestiae nemo dolores architecto quo quis atque et. Sapiente quibusdam aut incidunt voluptatum. Eligendi voluptatem aperiam quia voluptas cupiditate occaecati odit. Maiores provident quia porro maxime in. Consequatur omnis rem laborum totam. Facilis eum placeat sint vero quaerat fugiat.	65	en
66	Debitis qui nostrum omnis rerum aut dolores. Quia voluptatem inventore error saepe accusamus. Odit voluptas ratione placeat. Praesentium nihil ut rerum sequi et iste rerum. Eos modi aut repellat non eveniet expedita. Doloremque ut odio tempore. Autem aut perspiciatis totam ducimus eligendi. Vel aut ipsa molestiae consectetur enim aut. Qui voluptatem officia amet nam sunt molestias. Minima exercitationem dolores quia esse et sed perferendis. Minima eius expedita deleniti id in. Eaque cumque sequi cumque ut enim. Voluptatem omnis assumenda enim expedita quam sed aut.	66	en
67	Quis odit cumque omnis architecto repellat. Sit aliquid nulla eum aut eveniet iusto non. Illum in soluta quisquam qui. Et doloremque sunt voluptatibus qui. Aliquam ad cumque laboriosam odio molestiae illo est. Dolorum architecto sed libero nesciunt omnis ex. Aut quia quo repudiandae soluta ipsum illo eveniet. Itaque possimus laboriosam esse quam quo est vitae saepe. Nulla omnis molestiae quia. A et architecto est architecto. In impedit eius molestiae perspiciatis. Dolores qui id sed aut eum rerum necessitatibus. Qui ut voluptatem voluptate incidunt dignissimos minus. Rerum minima quidem mollitia molestiae necessitatibus nobis.	67	en
68	Quas quis aspernatur a est ut quia minima. Aperiam non cumque ea. Ut quae ut maiores sit tempore. Sit delectus voluptatem earum voluptatibus. Nam sit alias sed sed. Iste dolore eum tempora animi. Dolor odit aut iste ut repellendus porro. Et dolorem et pariatur doloribus facilis velit. Minus aut similique blanditiis corporis error. Non amet neque voluptate ea facere consequatur consequuntur. Cumque et dolorem ea suscipit dolorem sed. Est qui repellendus neque amet distinctio harum. Necessitatibus eos illo doloremque. Ea quia dignissimos sed incidunt ea sed dicta.	68	en
69	Commodi veritatis voluptate laborum vitae molestiae. Officiis beatae fugiat voluptate corrupti fuga aut et. Asperiores id saepe numquam vel. Expedita eos eaque ratione eum neque et animi voluptatem. Expedita eius rem blanditiis et nulla ad quod illo. Facere aut voluptatem totam expedita. Laudantium rerum nobis ipsa delectus enim dignissimos earum. Ea eveniet eum facilis quisquam facilis omnis. Voluptatem rerum veritatis unde aperiam. Magni doloribus aut voluptas numquam dolorem dolores quae. Id quia ex tempora et voluptatum explicabo et.	69	en
70	Aperiam consequatur accusamus qui blanditiis dolores et eum. Porro voluptas enim dolores tempore. Eum cupiditate doloribus iste doloremque quidem assumenda eius libero. Nulla et rem quas officiis cupiditate magnam ut reiciendis. Odit non earum consequatur ut totam et magni. Odit ut rerum est velit autem odio id commodi. Et sit quas esse veritatis. Sapiente sit quo similique cumque ad eos facilis. Incidunt non tempore asperiores veniam eveniet non sit. Exercitationem laborum earum consequuntur eius laudantium dicta.	70	en
71	Illum vel ea repellat eos eum itaque ut. Unde dolorem veniam autem rerum. Eligendi saepe soluta architecto aut fugit consectetur eum voluptatibus. Ut aliquam molestias et dignissimos. Perferendis alias aut voluptatum aut nostrum voluptas. Est corrupti praesentium nihil odio. Debitis sed doloremque vel numquam. Aut commodi et quis cupiditate beatae. Iure quia itaque eos consequatur magni fugiat. At debitis quos molestias dolorem voluptatibus et voluptatibus in. Vero ut praesentium earum culpa nihil minima eum. Qui velit natus occaecati culpa nihil praesentium placeat. Enim vitae culpa non itaque eum at.	71	en
72	Ut veritatis libero non. Et dignissimos nostrum quis vero et fuga voluptatem. Molestiae et voluptatem natus in. Repellat dolorem modi sit aut error voluptatem. Optio eaque placeat molestiae aut et. Facere non ducimus quis quidem pariatur et. Voluptatem dolorum impedit nobis aut sit illo natus. Nihil sapiente molestias placeat laudantium. Nemo quo voluptatem dolorem dolores repellendus. Dolores quos qui cum exercitationem deserunt et. Nulla rerum inventore mollitia neque occaecati. Distinctio autem similique enim. Modi culpa consectetur est atque dolore quod tempora.	72	en
73	Occaecati sed magnam error est ut. Qui sapiente nihil illo dolorem soluta sequi mollitia. Ipsam sit perferendis eum quo ut voluptatem tempore maiores. Tempore consequatur iusto hic repudiandae officia commodi. Cum rerum amet sint doloremque ducimus. Ut quas ipsam officiis non explicabo reprehenderit odit. Ut sunt eos voluptas dolor laborum ipsam qui. Ipsum est quisquam fuga labore sint adipisci. Dolorum ea ea repudiandae. Libero possimus qui iure animi nobis porro accusantium. Quae eum a eius distinctio.	73	en
74	Laudantium ut commodi doloremque fuga perspiciatis omnis unde quisquam. Facere modi dolores autem quod nulla. Asperiores dolor et omnis minus eos dolores delectus. Velit a ratione qui quos. Ipsum consequuntur ut sit consequatur nostrum odit maiores. Numquam molestiae et aut exercitationem cumque ratione delectus. Non asperiores tempora id. Illum aliquam iusto exercitationem minus numquam quos consequuntur.	74	en
75	Quod sit et corrupti. Enim voluptatem suscipit sint velit ea omnis. Quidem et id omnis. Suscipit provident sed quis ut quia vitae. Qui corrupti tenetur eligendi maiores error dolores voluptas aut. Earum occaecati quidem ipsum est facilis tempora officia nobis. Voluptatem reprehenderit expedita vel voluptatem et qui ut. Assumenda sit quia eveniet fugit eum magnam velit. Quos modi ratione sequi. Dolor expedita optio quas in est est reiciendis possimus.	75	en
76	Autem quis tempora autem blanditiis esse. Est iste nam itaque quasi nesciunt saepe adipisci. Ratione consequatur aliquid reprehenderit eos iusto aliquid earum. Quidem doloribus necessitatibus consequatur dolore autem. Fuga illo omnis eligendi officiis cum. Error officiis earum enim ea corrupti cupiditate possimus ut. Est omnis occaecati quasi quia blanditiis dolor. Est aut tempora dolorem aliquam ducimus aut placeat praesentium. Molestiae cumque dignissimos sed earum delectus vel possimus. Qui est consequatur quia culpa voluptatem qui. Id illum eligendi deleniti fugiat. Non natus velit at non molestias sapiente.	76	en
77	Voluptatem ut explicabo quaerat vel voluptatibus voluptate optio laudantium. Rerum occaecati saepe non delectus aperiam. Amet sit voluptas deserunt voluptas eveniet ipsa repudiandae. Et porro eius consequatur nesciunt. Est dignissimos excepturi consequuntur id quis laborum voluptates. Non vero nulla ut odio et non. Molestias dolor enim doloribus veritatis. Ut dolor veritatis fugiat quasi fugiat eaque dignissimos. Non voluptate voluptatem voluptatem ipsam quos. Sunt maiores aliquam recusandae beatae. Et aut eum voluptatem dolorum reiciendis sed eligendi. Accusamus aut sed repudiandae alias. Explicabo ea totam aut et fugiat.	77	en
78	Iure consequatur unde occaecati possimus quis sit nesciunt. Totam reprehenderit ad molestiae eveniet. Sequi sequi recusandae et possimus voluptatem aut autem. Repellendus temporibus mollitia dolor quia ut. Et ipsum nulla voluptatum reiciendis nostrum explicabo nemo tempore. Consectetur aut molestias asperiores molestiae quos modi voluptas. Voluptatem aliquid iusto eum. Veniam quo ut est quibusdam aperiam alias. Fugiat aliquam tenetur voluptas assumenda voluptatem necessitatibus. Earum quia provident omnis nisi. Ipsum perspiciatis et labore dolore qui commodi.	78	en
79	Et perspiciatis veritatis cumque aut dolorem sint. Beatae blanditiis enim amet omnis et. Et quisquam sed voluptatibus fugiat harum minus quaerat qui. Ex velit qui iure sed. Ipsum aut magni voluptas consequatur repellendus maiores. Dolorem omnis est eos enim maiores. Sint alias ad nulla fugit odit. Eum tempora neque alias voluptate doloribus assumenda. Doloremque error modi nobis rem consequatur accusantium doloribus. Temporibus qui fugiat illo. Ea dicta quam sint quo.	79	en
80	Voluptatem sint asperiores modi sed omnis. Dolorum enim omnis cupiditate velit minus fugiat voluptatum id. Voluptas aut qui reprehenderit perspiciatis minus vel voluptas. Consectetur sit quia voluptatem autem ex nulla. Nemo sed fuga sint maiores quos et. Porro dolor sunt omnis et explicabo doloribus. Sit ullam sint fugit natus ipsa. Nisi debitis velit quia aut et incidunt amet voluptates. Nisi doloremque velit totam eum saepe et. Libero praesentium sapiente aut aut.	80	en
81	Dolores ea est alias harum mollitia. Error saepe doloremque quia porro qui blanditiis. Voluptatem consequatur aut laboriosam enim quo corporis. Voluptate velit harum voluptas aut omnis. Quam suscipit dolorem quibusdam saepe dolorem. Aut dignissimos minus debitis. Eos sapiente temporibus corrupti in quos quo numquam quo. Blanditiis necessitatibus repellat a id ipsum eligendi deleniti. Delectus a et quaerat qui cumque vel. In possimus molestiae assumenda aliquid quia. Aperiam quae corporis ducimus tempora voluptate minus. Excepturi incidunt accusantium autem temporibus quo quasi alias.	81	en
82	Ratione nisi rerum voluptas autem neque unde ab. Quisquam illo neque sit inventore ab ex ut. Quo quia quasi omnis voluptatibus temporibus. Molestiae iusto praesentium quasi. Sint occaecati tempora officia illum eos sit sit et. Quo ut distinctio reiciendis eaque. Est et architecto dolor eos quia. Dicta fuga et esse. Voluptas cum tempora repellat recusandae rem laborum. Nihil rerum et aut omnis. Sit fugit sit et quia reiciendis molestias est. Ut sequi et totam vel. Sit rerum delectus et asperiores saepe. Rerum sapiente ipsam numquam magnam molestias similique. Nostrum in animi minus aut. Et ex molestiae eum enim incidunt ad.	82	en
83	Voluptatem aut possimus dolorum expedita. Et quo suscipit at facere sapiente rem eum quo. Dolorem tempora saepe aspernatur ut reprehenderit quos. Voluptatum sequi eos odit. Aut quidem in aut iste ea et. Rem unde dolorem autem possimus sint. Voluptas eveniet ut repellat hic. Id qui possimus aut omnis. Dolores molestias magnam quam nemo voluptatem pariatur inventore quidem. Labore odio dolor non omnis. Nostrum suscipit sint eum recusandae cum et. Doloribus delectus reprehenderit eligendi quia cum. Assumenda quaerat ut magnam quod blanditiis laboriosam. Illo accusantium doloribus sunt.	83	en
84	Iste fuga ea deserunt dolor. Mollitia corrupti ea quas est quia facere aut. Sint eum tempore totam eaque dolorem quasi rerum molestiae. Facere facere aperiam veritatis vel esse. Vel ad debitis magni debitis. Sit enim quo est repellendus autem voluptatem quia. Aut eligendi soluta cupiditate aut officia quam itaque. Dolorem et delectus quia eius sed.	84	en
85	Sed nostrum nisi accusamus. Fugit impedit unde vel optio expedita voluptates consequuntur. Quos consequuntur placeat recusandae et repellendus ducimus sit. Et iusto tenetur aliquid facilis quibusdam aut ab. Consequatur eos qui laboriosam modi aliquam maiores. In asperiores modi modi hic. Nam quia nisi omnis eveniet consequatur. Amet et nemo aut possimus. Et cupiditate id quas quis quam praesentium voluptatum. Laboriosam molestias nam sint odio quasi. Laborum possimus qui non incidunt veritatis doloremque. Sit eos dolores error dolores architecto. Laudantium nobis eos officiis et vitae similique.	85	en
86	Et itaque sit tenetur illum. Minus omnis amet non veniam voluptatem. Repudiandae consequatur et nobis totam. Maxime placeat eveniet animi accusantium sed esse. Nobis magni similique dignissimos in officia repudiandae. Dolores corporis similique architecto rerum sapiente. Eum ut aut velit accusantium. Ea dolor praesentium voluptatem quam quos ab. Voluptates omnis adipisci omnis qui. Ex et in et ratione explicabo ut. Sunt vitae eum earum ut ipsa et optio. Eos ea enim voluptas ducimus mollitia aut. Totam beatae deserunt natus aut pariatur quos.	86	en
87	Sequi et soluta et dolores. Exercitationem voluptatum sed quam et aut. Nihil exercitationem velit aliquam repudiandae accusantium. Deleniti asperiores saepe perferendis mollitia eum aperiam. Quo expedita sequi architecto ipsam ut. Unde quos quam dolor fugiat. Et non aliquam excepturi non reiciendis accusantium. Deleniti voluptate voluptatum a. Accusantium recusandae laudantium nihil cumque dolore perferendis. Ut aut a fuga asperiores. Sit quaerat culpa consequuntur consequatur fuga qui. Dignissimos nam laudantium nihil sint.	87	en
88	Culpa nihil dolorem aperiam suscipit aspernatur est provident voluptatem. Nemo incidunt hic est quo. Quo est similique assumenda. Ut dolores aut est et vel quam sed. Voluptas ratione corrupti sint consequatur repudiandae. Ad amet optio magni a officia non minus hic. Et recusandae possimus ut. Quia culpa iste facere sit blanditiis odio iure. At consequatur temporibus deserunt voluptatem officia consequatur. Minima quia quia natus iusto dolores et. Dolores est praesentium quod mollitia velit nostrum. Et laudantium iure deleniti dolor. Itaque minima velit totam ex tempore iure aut. Facere culpa cumque rerum iste.	88	en
89	Architecto excepturi in repudiandae et. Debitis illum perspiciatis repudiandae voluptas id voluptatem est. Eum ea laborum sapiente qui quidem ut. Autem possimus cupiditate ea. Expedita qui aut facere vero praesentium repudiandae dolores sint. Quaerat non non impedit ratione reprehenderit itaque nobis facere. Quo non quo repellat et quia. Ut pariatur aut doloribus neque enim nesciunt. Magnam qui aliquam delectus. Quidem dolorem itaque alias quis eveniet nostrum dolorem. Voluptatem rerum corrupti qui quas suscipit atque. Minima ullam rerum illo ut officia rerum. Non et ullam expedita magni tempore.	89	en
90	Nulla et et sapiente. Cupiditate id aut similique quos qui et deleniti. Quae ea totam voluptas sit nisi dolorem aspernatur deleniti. Voluptatem dolores saepe rem voluptatem vitae corrupti consectetur. Consequatur qui omnis sit mollitia minima explicabo. Ut iusto numquam soluta sunt ab. Excepturi fuga est perspiciatis eos. Aut laborum eveniet hic. Quaerat expedita repellat tempora qui qui. Ipsum repudiandae iusto id non consectetur officia. Enim nam molestiae eligendi accusamus rerum.	90	en
91	Voluptas odio tenetur aliquam voluptatum et voluptatem libero. Architecto beatae sed voluptatem est voluptatem quia. Placeat qui sint omnis tenetur assumenda voluptatem sit. Non architecto omnis ratione nulla. Nemo ullam repellendus qui qui excepturi. Itaque ipsum pariatur omnis unde ut. Incidunt modi quam quo neque enim praesentium eum similique. Aut quia laborum iste asperiores exercitationem voluptatem praesentium. Rerum ex laborum sapiente vero qui non. Fugiat eos sed dolorum voluptatem provident repellat. Sed molestias rerum ut rerum. Voluptatem impedit est consequatur et.	91	en
92	Sit facere numquam harum et et magni nobis. Et qui et assumenda sint dignissimos deleniti. Placeat itaque et dolor labore quae alias voluptatem. Quo est hic eligendi architecto illum odit. Doloribus officiis ut voluptas iusto. Et nihil eveniet et rem. Temporibus dolore provident soluta quae eos. Omnis dignissimos et consequuntur dignissimos porro architecto. Dolorem ut dolores sit molestiae reprehenderit blanditiis consequatur. Voluptas qui voluptas fuga culpa. Debitis ut eius eaque autem nihil et quod.	92	en
93	Ullam suscipit totam rerum blanditiis sequi culpa. Consequatur quia consequuntur dignissimos expedita tempora qui recusandae. Id repellendus maiores quod veritatis sit ut qui accusantium. Sunt exercitationem accusantium ut eos rerum et. Odit sit corporis repellat provident aliquid. Libero sit quibusdam voluptatem est aliquam iure quas occaecati. Quae consequatur nobis aut est. Et dolorem sed quaerat quas nihil nam. Cum et enim natus optio voluptatem. Ratione ut sed ut maxime ea excepturi. Nisi quasi qui ex minima quia. Laboriosam optio qui ipsam.	93	en
94	Magnam sit pariatur ut excepturi perspiciatis voluptatum. Est corrupti sapiente rerum sunt sit quia architecto accusamus. Natus minima deleniti dicta consequatur sed sunt est. At modi minima occaecati quas eligendi ut. Molestiae nemo quo voluptate rerum impedit laudantium. Facere accusantium consequuntur nemo at quaerat. Alias sapiente eos possimus. Est sunt rerum dolore error earum. Voluptatibus aliquam aspernatur soluta quo sapiente.	94	en
95	Qui qui rem dicta sed aperiam architecto. Repellendus odit commodi repudiandae libero. Nam aut commodi facere nihil aut ex. Voluptatem et nobis accusantium sed officiis voluptates eum soluta. Natus nobis laudantium aliquid officia et. Dolores esse quia rerum omnis suscipit eligendi. Repellat sunt at est dolore placeat. Et ducimus sed necessitatibus eligendi facilis voluptatem quasi. Quis illum molestias quae dolores. Quia fugit voluptatem est velit temporibus facilis. Laboriosam quasi autem unde omnis iusto autem. Aut architecto vero alias eum et quia suscipit. Asperiores voluptas totam et repellendus officiis.	95	en
96	Omnis tempore consequatur sed. Cumque natus voluptatum pariatur ut autem dolorem. Commodi at sit sed voluptates provident dicta. Aut ut quos suscipit iste amet vel dolores. Illo pariatur doloribus numquam tempore in ducimus qui qui. Ullam commodi est voluptates et aut. Blanditiis necessitatibus eos voluptatem assumenda nihil consectetur dolorem repudiandae. Architecto odio ut voluptatem est necessitatibus consectetur alias cupiditate. Nesciunt earum quia labore iusto totam ullam. Laboriosam sed sapiente ut minus. Omnis sit dolorum quae. Eum praesentium voluptatum expedita animi nam. Numquam est molestiae aut cupiditate est ut.	96	en
97	Quia ipsa rem consequatur molestiae sunt eaque. Facere eveniet dolorem autem aperiam. Non mollitia alias dolorem eum voluptatem. Ut est ab ut omnis neque. Aperiam saepe saepe et fuga nihil qui repellat. Consequatur nihil perspiciatis cumque suscipit neque. Architecto illum blanditiis aspernatur fuga quidem vel sit. Est deserunt qui vitae dicta in eligendi ex repellendus. Rem tempore et tenetur omnis. Veniam consequatur autem quia et. Et asperiores vero dolor reiciendis sed cupiditate. Debitis quasi consequatur animi molestias aut assumenda et ad.	97	en
98	Ab debitis molestiae aperiam quasi aut fugiat. Natus voluptas vel hic asperiores. Quia laudantium qui voluptas id. Repudiandae animi magni sed id earum. Ab et ullam aspernatur provident eum et velit vel. Ducimus assumenda aut placeat tenetur aliquam quis error. Illum vel minus molestiae quo voluptates qui. Asperiores ut molestiae deleniti. Cumque dolorem officiis eos minima aliquid et excepturi dolorum. Sed sed sit eveniet ut voluptates voluptas eveniet rerum. Expedita tempora sit repellat blanditiis doloremque iure dicta. Fuga explicabo ea atque quis. Sint minus quis nostrum in molestiae aperiam.	98	en
99	Et deleniti et itaque officia numquam quaerat vel. Quia quis quae rerum ut quis. Quo dignissimos cupiditate nihil deleniti sint asperiores repellat. Ea id omnis voluptatem nisi iusto ea. Veniam nostrum quod atque at amet. Ipsa expedita non et sunt voluptatem nam veniam consequuntur. Iusto nesciunt quidem vitae hic iusto dolor. Voluptatibus et ut eos porro. Vero deleniti veritatis voluptas quibusdam asperiores itaque. Distinctio dolorem consequuntur quas cupiditate quia exercitationem eius sunt.	99	en
100	Itaque modi eaque praesentium sapiente culpa. Laboriosam sit nihil qui adipisci et delectus. Veritatis qui consequatur quam neque ipsam. Voluptas consequatur blanditiis harum qui. Dolore vel repellat quia id est quia rerum. Esse asperiores sit ipsa sit ea. Non qui et soluta tempora voluptates laborum adipisci. Eveniet et non quidem ut dicta soluta sint. Ut quidem officia rerum sed sapiente. Ut quas expedita et accusamus quaerat. Enim libero velit ea necessitatibus excepturi. Debitis recusandae commodi eum est nesciunt id et. Labore officia quis id placeat alias. Adipisci nisi vitae accusantium blanditiis.	100	en
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
1	Alice cautiously replied, not feeling at all a pity. I said.	1	en
2	Mock Turtle: 'why, if a dish or kettle had been of late much.	2	en
3	He says it kills all the children she knew, who might do very.	3	en
4	QUITE as much as serpents do, you know.' 'Not the same words.	4	en
5	First, she tried her best to climb up one of the day; and this.	5	en
6	As for pulling me out of the wood--(she considered him to you.	6	en
7	Mock Turtle's Story 'You can't think how glad I am very tired.	7	en
8	Alice, a good deal frightened at the Footman's head: it just.	8	en
9	You MUST have meant some mischief, or else you'd have signed.	9	en
10	Alice thought the poor little thing was snorting like a.	10	en
11	Mouse was speaking, so that altogether, for the fan she was.	11	en
12	The door led right into it. 'That's very curious.' 'It's all.	12	en
13	And then, turning to Alice. 'Only a thimble,' said Alice very.	13	en
14	Gryphon is, look at the place where it had entirely.	14	en
15	Alice looked round, eager to see its meaning. 'And just as.	15	en
16	Alice said to herself, 'it would have done just as well go.	16	en
17	Alice; 'I can't help it,' said Alice indignantly. 'Let me.	17	en
18	Dodo had paused as if his heart would break. She pitied him.	18	en
19	He says it kills all the party sat silent and looked at Two.	19	en
20	Alice found at first was in the chimney as she could. 'No,'.	20	en
21	Alice said nothing: she had never before seen a rabbit with.	21	en
22	Alice began, in a ring, and begged the Mouse was bristling all.	22	en
23	Five! Don't go splashing paint over me like that!' But she.	23	en
24	I will prosecute YOU.--Come, I'll take no denial; We must have.	24	en
25	Alice looked round, eager to see the earth takes twenty-four.	25	en
26	CHAPTER V. Advice from a bottle marked 'poison,' it is almost.	26	en
27	Queen was close behind us, and he's treading on her lap as if.	27	en
28	Mock Turtle in a great letter, nearly as large as himself, and.	28	en
29	Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE.	29	en
30	Edwin and Morcar, the earls of Mercia and Northumbria--"'.	30	en
31	Mock Turtle. So she set off at once: one old Magpie began.	31	en
32	I've often seen a good character, But said I didn't!'.	32	en
33	Alice; 'living at the Queen, 'Really, my dear, YOU must.	33	en
34	Gryphon sat up and walking off to other parts of the.	34	en
35	Alice, she went to school every day--' 'I'VE been to the baby.	35	en
36	Duchess: 'what a clear way you can;--but I must go and take it.	36	en
37	And the moral of that is--"Be what you had been running half.	37	en
38	Dodo said, 'EVERYBODY has won, and all the jurymen are back in.	38	en
39	Mock Turtle sighed deeply, and drew the back of one flapper.	39	en
40	Duchess; 'and most things twinkled after that--only the March.	40	en
41	Gryphon, and, taking Alice by the Queen till she was quite out.	41	en
42	Gryphon, and all the things between whiles.' 'Then you keep.	42	en
43	WAS a curious feeling!' said Alice; 'it's laid for a great.	43	en
44	I want to go! Let me see: four times seven is--oh dear! I.	44	en
45	No room!' they cried out when they saw her, they hurried back.	45	en
46	I'LL soon make you grow shorter.' 'One side will make you dry.	46	en
47	YET,' she said this, she was now, and she felt a little scream.	47	en
48	Queen's hedgehog just now, only it ran away when it saw mine.	48	en
49	Queen's Croquet-Ground A large rose-tree stood near the.	49	en
50	COULD! I'm sure _I_ shan't be able! I shall think nothing of.	50	en
51	PRECIOUS nose'; as an unusually large saucepan flew close by.	51	en
52	This time Alice waited till the eyes appeared, and then dipped.	52	en
53	So Bill's got the other--Bill! fetch it here, lad!--Here, put.	53	en
54	Queen: so she sat down and began bowing to the general.	54	en
55	WHAT?' thought Alice; 'I can't go no lower,' said the Dormouse.	55	en
56	Beautiful, beautiful Soup! 'Beautiful Soup! Who cares for.	56	en
57	Queen said to herself in Wonderland, though she knew that were.	57	en
58	Alice was too late to wish that! She went in without knocking.	58	en
59	Latitude was, or Longitude either, but thought they were all.	59	en
60	Bill!' then the Mock Turtle yawned and shut his eyes.--'Tell.	60	en
61	BEST butter,' the March Hare was said to the other, trying.	61	en
62	Gryphon went on growing, and growing, and growing, and.	62	en
63	Dormouse sulkily remarked, 'If you can't be Mabel, for I know.	63	en
64	Alice, with a soldier on each side, and opened their eyes and.	64	en
65	I will prosecute YOU.--Come, I'll take no denial; We must have.	65	en
66	Cat. 'I said pig,' replied Alice; 'and I do so like that.	66	en
67	Arithmetic--Ambition, Distraction, Uglification, and.	67	en
68	Alice heard the Queen's voice in the way I ought to tell him.	68	en
69	Normans--" How are you getting on now, my dear?' it continued.	69	en
70	And she began very cautiously: 'But I don't believe there's an.	70	en
71	Mock Turtle. 'She can't explain MYSELF, I'm afraid, but you.	71	en
72	The only things in the sea, though you mayn't believe it--' 'I.	72	en
73	VERY unpleasant state of mind, she turned the corner, but the.	73	en
74	I can't quite follow it as you go to law: I will just explain.	74	en
75	Queen was close behind us, and he's treading on my tail. See.	75	en
76	NOT, being made entirely of cardboard.) 'All right, so far,'.	76	en
77	King was the King; 'and don't be nervous, or I'll have you got.	77	en
78	ARE you doing out here? Run home this moment, I tell you!' But.	78	en
79	May it won't be raving mad after all! I almost wish I'd gone.	79	en
80	Alice, as she went hunting about, and shouting 'Off with her.	80	en
81	Alice: 'allow me to him: She gave me a pair of the wood--(she.	81	en
82	Allow me to sell you a couple?' 'You are old,' said the Pigeon.	82	en
83	Dinah, tell me who YOU are, first.' 'Why?' said the Mock.	83	en
84	Alice, 'how am I to get us dry would be quite as safe to stay.	84	en
85	Alice the moment she appeared; but she stopped hastily, for.	85	en
86	Gryphon. 'Well, I should be raving mad--at least not so mad as.	86	en
87	Alice to find that she had to double themselves up and walking.	87	en
88	King, who had followed him into the sea, 'and in that poky.	88	en
89	There seemed to Alice to herself. 'Shy, they seem to be"--or.	89	en
90	Hatter, 'I cut some more of it in asking riddles that have no.	90	en
91	I'd taken the highest tree in front of them, with her head!'.	91	en
92	Queen, 'and take this young lady to see it trot away quietly.	92	en
93	March Hare had just begun 'Well, of all this grand procession.	93	en
94	Alice rather unwillingly took the hookah out of the game.	94	en
95	Gryphon, the squeaking of the way--' 'THAT generally takes.	95	en
96	Alice. 'That's very important,' the King said, turning to.	96	en
97	IS it to her that she had not got into the garden door. Poor.	97	en
98	His voice has a timid voice at her with large eyes full of.	98	en
99	I can remember feeling a little three-legged table, all made.	99	en
100	I hadn't cried so much!' Alas! it was perfectly round, she.	100	en
\.


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: chef
--

COPY public.recipes (id, category_id, creator_id, photo_id, created_at, updated_at) FROM stdin;
1	1	67	1	2021-12-02 22:34:31	2021-12-02 22:34:31
2	2	73	2	2021-12-02 22:34:31	2021-12-02 22:34:31
3	3	53	3	2021-12-02 22:34:31	2021-12-02 22:34:31
4	1	95	4	2021-12-02 22:34:31	2021-12-02 22:34:31
5	3	15	5	2021-12-02 22:34:31	2021-12-02 22:34:31
6	4	100	6	2021-12-02 22:34:31	2021-12-02 22:34:31
7	3	44	7	2021-12-02 22:34:31	2021-12-02 22:34:31
8	4	30	8	2021-12-02 22:34:31	2021-12-02 22:34:31
9	1	63	9	2021-12-02 22:34:31	2021-12-02 22:34:31
10	3	53	10	2021-12-02 22:34:31	2021-12-02 22:34:31
11	2	41	11	2021-12-02 22:34:31	2021-12-02 22:34:31
12	3	85	12	2021-12-02 22:34:31	2021-12-02 22:34:31
13	3	37	13	2021-12-02 22:34:31	2021-12-02 22:34:31
14	2	10	14	2021-12-02 22:34:31	2021-12-02 22:34:31
15	1	98	15	2021-12-02 22:34:31	2021-12-02 22:34:31
16	2	51	16	2021-12-02 22:34:31	2021-12-02 22:34:31
17	1	78	17	2021-12-02 22:34:31	2021-12-02 22:34:31
18	4	77	18	2021-12-02 22:34:31	2021-12-02 22:34:31
19	3	80	19	2021-12-02 22:34:31	2021-12-02 22:34:31
20	1	54	20	2021-12-02 22:34:31	2021-12-02 22:34:31
21	1	19	21	2021-12-02 22:34:31	2021-12-02 22:34:31
22	2	56	22	2021-12-02 22:34:31	2021-12-02 22:34:31
23	3	2	23	2021-12-02 22:34:31	2021-12-02 22:34:31
24	4	69	24	2021-12-02 22:34:31	2021-12-02 22:34:31
25	3	48	25	2021-12-02 22:34:31	2021-12-02 22:34:31
26	1	18	26	2021-12-02 22:34:31	2021-12-02 22:34:31
27	3	32	27	2021-12-02 22:34:31	2021-12-02 22:34:31
28	3	90	28	2021-12-02 22:34:31	2021-12-02 22:34:31
29	2	84	29	2021-12-02 22:34:31	2021-12-02 22:34:31
30	4	73	30	2021-12-02 22:34:31	2021-12-02 22:34:31
31	1	40	31	2021-12-02 22:34:31	2021-12-02 22:34:31
32	2	50	32	2021-12-02 22:34:31	2021-12-02 22:34:31
33	3	67	33	2021-12-02 22:34:31	2021-12-02 22:34:31
34	2	33	34	2021-12-02 22:34:31	2021-12-02 22:34:31
35	1	67	35	2021-12-02 22:34:31	2021-12-02 22:34:31
36	4	22	36	2021-12-02 22:34:31	2021-12-02 22:34:31
37	1	32	37	2021-12-02 22:34:31	2021-12-02 22:34:31
38	4	33	38	2021-12-02 22:34:31	2021-12-02 22:34:31
39	1	4	39	2021-12-02 22:34:31	2021-12-02 22:34:31
40	4	14	40	2021-12-02 22:34:31	2021-12-02 22:34:31
41	4	94	41	2021-12-02 22:34:31	2021-12-02 22:34:31
42	1	34	42	2021-12-02 22:34:31	2021-12-02 22:34:31
43	2	38	43	2021-12-02 22:34:31	2021-12-02 22:34:31
44	1	16	44	2021-12-02 22:34:31	2021-12-02 22:34:31
45	1	71	45	2021-12-02 22:34:31	2021-12-02 22:34:31
46	3	40	46	2021-12-02 22:34:31	2021-12-02 22:34:31
47	1	22	47	2021-12-02 22:34:31	2021-12-02 22:34:31
48	1	8	48	2021-12-02 22:34:31	2021-12-02 22:34:31
49	4	53	49	2021-12-02 22:34:31	2021-12-02 22:34:31
50	4	97	50	2021-12-02 22:34:31	2021-12-02 22:34:31
51	3	52	51	2021-12-02 22:34:31	2021-12-02 22:34:31
52	1	4	52	2021-12-02 22:34:31	2021-12-02 22:34:31
53	3	61	53	2021-12-02 22:34:31	2021-12-02 22:34:31
54	3	25	54	2021-12-02 22:34:31	2021-12-02 22:34:31
55	2	44	55	2021-12-02 22:34:31	2021-12-02 22:34:31
56	1	48	56	2021-12-02 22:34:31	2021-12-02 22:34:31
57	2	28	57	2021-12-02 22:34:31	2021-12-02 22:34:31
58	1	18	58	2021-12-02 22:34:31	2021-12-02 22:34:32
59	2	2	59	2021-12-02 22:34:31	2021-12-02 22:34:32
60	2	44	60	2021-12-02 22:34:31	2021-12-02 22:34:32
61	2	3	61	2021-12-02 22:34:31	2021-12-02 22:34:32
62	2	40	62	2021-12-02 22:34:31	2021-12-02 22:34:32
63	1	53	63	2021-12-02 22:34:31	2021-12-02 22:34:32
64	1	15	64	2021-12-02 22:34:31	2021-12-02 22:34:32
65	2	66	65	2021-12-02 22:34:31	2021-12-02 22:34:32
66	1	7	66	2021-12-02 22:34:31	2021-12-02 22:34:32
67	2	11	67	2021-12-02 22:34:31	2021-12-02 22:34:32
68	4	53	68	2021-12-02 22:34:31	2021-12-02 22:34:32
69	1	72	69	2021-12-02 22:34:31	2021-12-02 22:34:32
70	3	50	70	2021-12-02 22:34:31	2021-12-02 22:34:32
71	4	23	71	2021-12-02 22:34:31	2021-12-02 22:34:32
72	4	30	72	2021-12-02 22:34:31	2021-12-02 22:34:32
73	1	2	73	2021-12-02 22:34:31	2021-12-02 22:34:32
74	3	43	74	2021-12-02 22:34:31	2021-12-02 22:34:32
75	3	68	75	2021-12-02 22:34:31	2021-12-02 22:34:32
76	2	31	76	2021-12-02 22:34:31	2021-12-02 22:34:32
77	4	65	77	2021-12-02 22:34:31	2021-12-02 22:34:32
78	4	28	78	2021-12-02 22:34:31	2021-12-02 22:34:32
79	4	9	79	2021-12-02 22:34:31	2021-12-02 22:34:32
80	2	4	80	2021-12-02 22:34:31	2021-12-02 22:34:32
81	2	12	81	2021-12-02 22:34:31	2021-12-02 22:34:32
82	3	84	82	2021-12-02 22:34:31	2021-12-02 22:34:32
83	1	24	83	2021-12-02 22:34:31	2021-12-02 22:34:32
84	1	93	84	2021-12-02 22:34:31	2021-12-02 22:34:32
85	3	60	85	2021-12-02 22:34:31	2021-12-02 22:34:32
86	3	21	86	2021-12-02 22:34:31	2021-12-02 22:34:32
87	2	69	87	2021-12-02 22:34:31	2021-12-02 22:34:32
88	1	8	88	2021-12-02 22:34:31	2021-12-02 22:34:32
89	2	1	89	2021-12-02 22:34:31	2021-12-02 22:34:32
90	4	97	90	2021-12-02 22:34:31	2021-12-02 22:34:32
91	4	78	91	2021-12-02 22:34:31	2021-12-02 22:34:32
92	3	30	92	2021-12-02 22:34:31	2021-12-02 22:34:32
93	3	79	93	2021-12-02 22:34:31	2021-12-02 22:34:32
94	1	97	94	2021-12-02 22:34:31	2021-12-02 22:34:32
95	4	36	95	2021-12-02 22:34:31	2021-12-02 22:34:32
96	1	7	96	2021-12-02 22:34:31	2021-12-02 22:34:32
97	2	89	97	2021-12-02 22:34:31	2021-12-02 22:34:32
98	4	30	98	2021-12-02 22:34:31	2021-12-02 22:34:32
99	4	45	99	2021-12-02 22:34:31	2021-12-02 22:34:32
100	1	89	100	2021-12-02 22:34:31	2021-12-02 22:34:32
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
1	admin	admin@admin.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	mn2c3HVUVY	\N	\N
2	Dr. Kaitlin Moen DDS	danielle.sawayn@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	0m28RImWjw	2021-12-02 22:34:30	2021-12-02 22:34:30
3	Dr. Joey Orn	sylvan.trantow@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	rJHOPRKs4x	2021-12-02 22:34:30	2021-12-02 22:34:30
4	Helmer Brown	kim56@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	fbxBRyRqRt	2021-12-02 22:34:30	2021-12-02 22:34:30
5	Geovanny Pfeffer	jenkins.sheldon@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	1Xi5NxaMxn	2021-12-02 22:34:30	2021-12-02 22:34:30
6	Dayana Ruecker	dudley.jacobs@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	oJbeHFcYUM	2021-12-02 22:34:30	2021-12-02 22:34:30
7	Tania Cummings	lavina46@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	JM2jHU2mKZ	2021-12-02 22:34:30	2021-12-02 22:34:30
8	Jamir Bechtelar II	rashawn20@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	NlLKdwFpnI	2021-12-02 22:34:30	2021-12-02 22:34:30
9	Mr. Newton Wehner	feest.macey@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	pevVDlI82g	2021-12-02 22:34:30	2021-12-02 22:34:30
10	Mr. Rickie Harris DDS	spinka.ricardo@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	L2okcZ1HMU	2021-12-02 22:34:30	2021-12-02 22:34:30
11	Prof. Darrion Rice Sr.	maureen.denesik@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	NW2oMj9v2z	2021-12-02 22:34:30	2021-12-02 22:34:30
12	Prof. Caleb Abernathy	pauline70@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	Wb5h1yQfW8	2021-12-02 22:34:30	2021-12-02 22:34:30
13	Dr. Halie Harvey	johnston.emelia@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	UOeAQ5ZAZY	2021-12-02 22:34:30	2021-12-02 22:34:30
14	Miss Sunny Erdman	kkub@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	nQg6Ok3V6U	2021-12-02 22:34:30	2021-12-02 22:34:30
15	Reynold Koelpin	justen63@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	kTmEmsrJkg	2021-12-02 22:34:30	2021-12-02 22:34:30
16	Edison Frami	berneice.hammes@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	v3Nrc95gyj	2021-12-02 22:34:30	2021-12-02 22:34:30
17	Lauryn Schuppe	peter32@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	xyATUaBtmY	2021-12-02 22:34:30	2021-12-02 22:34:30
18	Dr. Francisca Stiedemann	prohaska.euna@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	xL4sLD9jGo	2021-12-02 22:34:30	2021-12-02 22:34:30
19	Prof. Alford Mills	jrobel@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	22mmHU3PqN	2021-12-02 22:34:30	2021-12-02 22:34:30
20	Ransom Larkin	valerie.wolf@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	1O1vdVMBNB	2021-12-02 22:34:30	2021-12-02 22:34:30
21	Meagan Hodkiewicz II	moriah03@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	JIe01kMYbG	2021-12-02 22:34:30	2021-12-02 22:34:30
22	Dr. Emanuel Marvin II	simone86@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	qTKAt7UWma	2021-12-02 22:34:30	2021-12-02 22:34:30
23	Jennie Runolfsdottir I	nigel61@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	egWjAsRUH6	2021-12-02 22:34:30	2021-12-02 22:34:30
24	Ignatius Swift	mbeahan@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	kbdPy9lFTe	2021-12-02 22:34:30	2021-12-02 22:34:30
25	Prof. Caitlyn Casper Jr.	macy27@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	dEYHBpaXY5	2021-12-02 22:34:30	2021-12-02 22:34:30
26	Prof. Carey Jerde	koch.avis@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	WgMyNoF5bB	2021-12-02 22:34:30	2021-12-02 22:34:30
27	Jewell Schaden	grover82@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	Fn7mfM9VCH	2021-12-02 22:34:30	2021-12-02 22:34:30
28	Keegan Pfannerstill	oconner.jalyn@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	0twfjzqfws	2021-12-02 22:34:30	2021-12-02 22:34:30
29	Scottie Schuppe	sheldon94@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	VYAsqoMBdl	2021-12-02 22:34:30	2021-12-02 22:34:30
30	Vernon Rath	greenholt.darrion@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	kWghRYywYB	2021-12-02 22:34:30	2021-12-02 22:34:30
31	Adrain Morissette	waters.hans@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	GLMsIDh5HZ	2021-12-02 22:34:30	2021-12-02 22:34:30
32	Elvera Herman	phoebe.spinka@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	j2gCZk13CY	2021-12-02 22:34:30	2021-12-02 22:34:30
33	Ms. Helen Maggio DVM	gankunding@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	FTNPwL1KDO	2021-12-02 22:34:30	2021-12-02 22:34:30
34	Prof. Kelton Marks DVM	mbins@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	LggeyhWvzr	2021-12-02 22:34:30	2021-12-02 22:34:30
35	Dr. Tatum Harvey DVM	arely04@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	rxQduCkyPJ	2021-12-02 22:34:30	2021-12-02 22:34:30
36	Zelma Wolf	fbauch@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	px1dasmbhb	2021-12-02 22:34:30	2021-12-02 22:34:30
37	Prof. Sienna Batz	clemens69@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	w4e0B8Za9v	2021-12-02 22:34:30	2021-12-02 22:34:30
38	Cyril Stracke II	adelle68@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	YH9xGioohE	2021-12-02 22:34:30	2021-12-02 22:34:30
39	Loraine Walker III	tharber@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	EAL74zMHaH	2021-12-02 22:34:30	2021-12-02 22:34:30
40	Ross Kirlin	louisa.ernser@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	lSiSYmg9ky	2021-12-02 22:34:30	2021-12-02 22:34:30
41	Dr. Yessenia Watsica	heaven14@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	lqNtaBPMZg	2021-12-02 22:34:30	2021-12-02 22:34:30
42	Dr. Milan Willms I	mpowlowski@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	Cb3E2UJrGL	2021-12-02 22:34:30	2021-12-02 22:34:30
43	Keyshawn Ledner	williamson.margarita@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	s43jRKDBST	2021-12-02 22:34:30	2021-12-02 22:34:30
44	Prof. Muriel Veum	hackett.anjali@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	NXKEJBmb8a	2021-12-02 22:34:30	2021-12-02 22:34:30
45	Prof. Terry Rice	mccullough.princess@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	8wPO0Ayh1k	2021-12-02 22:34:30	2021-12-02 22:34:30
46	Miss Peggie Effertz	albin.harris@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	Q74mnP4g9B	2021-12-02 22:34:30	2021-12-02 22:34:30
47	Juliana Kemmer	nader.kylee@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	1vDo3cWUc0	2021-12-02 22:34:30	2021-12-02 22:34:30
48	Ettie Cruickshank	adaline.champlin@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	z7GTZ1a0oW	2021-12-02 22:34:30	2021-12-02 22:34:30
49	Elvera Bayer	zmiller@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	k1vaYLRwRy	2021-12-02 22:34:30	2021-12-02 22:34:30
50	Christiana Littel	konopelski.gilberto@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	6nBpKS1L8R	2021-12-02 22:34:30	2021-12-02 22:34:30
51	Jackeline Daniel	schumm.emilia@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	bH6u1affsN	2021-12-02 22:34:30	2021-12-02 22:34:30
52	Cody Feeney	beahan.sabrina@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	fHqptG9rSH	2021-12-02 22:34:30	2021-12-02 22:34:30
53	Angelica Rolfson	willard43@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	3np9pQridd	2021-12-02 22:34:30	2021-12-02 22:34:30
54	Tanner Nitzsche Jr.	malcolm00@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	LsgrGZDVMv	2021-12-02 22:34:30	2021-12-02 22:34:30
55	Althea Tillman Sr.	green.zack@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	l7xWFhgiZz	2021-12-02 22:34:30	2021-12-02 22:34:30
56	Toy Streich	kameron.gutmann@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	aLKLXzZIai	2021-12-02 22:34:30	2021-12-02 22:34:30
57	Ms. Tressa Berge V	hbarrows@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	7bBpFPacR3	2021-12-02 22:34:30	2021-12-02 22:34:30
58	Ayana Harber	hagenes.kaela@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	6TVsxF8aoQ	2021-12-02 22:34:30	2021-12-02 22:34:30
59	Mrs. Maurine Schowalter	cleveland19@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	J2YnaEtMU0	2021-12-02 22:34:30	2021-12-02 22:34:30
60	Corine Hudson DVM	buford.gorczany@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	8YJpZasurv	2021-12-02 22:34:30	2021-12-02 22:34:30
61	Prof. Will Smitham IV	vernice01@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	cwvo7HYRCS	2021-12-02 22:34:30	2021-12-02 22:34:30
62	Morris Rohan I	hartmann.dion@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	HoIK8Ynw61	2021-12-02 22:34:30	2021-12-02 22:34:30
63	Mr. Emery Schmitt I	halvorson.brendon@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	y9K7yPgez8	2021-12-02 22:34:30	2021-12-02 22:34:30
64	Dr. Emily Kohler V	macy77@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	xQLRAMyae6	2021-12-02 22:34:30	2021-12-02 22:34:30
65	Prof. Eve Kuphal	gpredovic@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	4sQbluToBP	2021-12-02 22:34:30	2021-12-02 22:34:30
66	Miss Catharine D'Amore	mayer.charlotte@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	pzL3L9HCsR	2021-12-02 22:34:30	2021-12-02 22:34:30
67	Prof. Filiberto Hegmann	dallas.schultz@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	SK4tUlLakR	2021-12-02 22:34:30	2021-12-02 22:34:30
68	Ms. Everette Sauer PhD	wilkinson.kiarra@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	eTg59Hak2x	2021-12-02 22:34:30	2021-12-02 22:34:30
69	Mr. Gabe Mohr	kling.webster@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	0sbx3oadn0	2021-12-02 22:34:30	2021-12-02 22:34:30
70	Dr. Jayson Jenkins Sr.	damien41@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	SIiW8b6Zrs	2021-12-02 22:34:30	2021-12-02 22:34:30
71	Maxwell Gleason III	steuber.marc@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	W7fFUh6Oli	2021-12-02 22:34:30	2021-12-02 22:34:30
72	Mr. Louie Steuber	lane.bruen@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	C3VMRR7ehx	2021-12-02 22:34:30	2021-12-02 22:34:30
73	Jessica Jaskolski	nathen.daniel@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	66sJic6rSC	2021-12-02 22:34:30	2021-12-02 22:34:30
74	Braeden Weissnat PhD	schultz.mustafa@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	Pf6tzeZvq3	2021-12-02 22:34:30	2021-12-02 22:34:30
75	Jerrod Lesch	rick.cormier@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	5wnSJkUgBp	2021-12-02 22:34:30	2021-12-02 22:34:30
76	Alyce Gleason	hodkiewicz.deanna@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	S1kXmD0g4p	2021-12-02 22:34:30	2021-12-02 22:34:30
77	Ila Predovic	retta.leannon@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	ZR2jM1LKUW	2021-12-02 22:34:30	2021-12-02 22:34:30
78	Rodrigo Reynolds	xlang@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	AkY5FOLoJQ	2021-12-02 22:34:30	2021-12-02 22:34:30
79	Queenie Keebler	macejkovic.elias@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	MPT1uATiD8	2021-12-02 22:34:30	2021-12-02 22:34:30
80	Francis Huels Sr.	dubuque.stephanie@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	UXK4MqkIIv	2021-12-02 22:34:30	2021-12-02 22:34:30
81	Prof. Joy Labadie V	wledner@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	uSzr2NY3nH	2021-12-02 22:34:30	2021-12-02 22:34:30
82	Raymundo Hammes	leatha.kautzer@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	K3O6WRj9q0	2021-12-02 22:34:30	2021-12-02 22:34:30
83	Marge Treutel	caitlyn.windler@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	ZZd2CfCuYd	2021-12-02 22:34:30	2021-12-02 22:34:30
84	Geraldine Stehr	zkirlin@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	yy7a0x9WmS	2021-12-02 22:34:30	2021-12-02 22:34:30
85	Marielle Goyette	axel.schneider@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	uImKIU4OKQ	2021-12-02 22:34:30	2021-12-02 22:34:30
86	Alexandre Kuphal	wtromp@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	RvlN7NdEpm	2021-12-02 22:34:31	2021-12-02 22:34:31
87	Melvina Treutel I	lonnie43@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	oxvzSpRNsG	2021-12-02 22:34:31	2021-12-02 22:34:31
88	Mrs. Tina Zieme	hollie.hayes@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	PDyJO4jCc7	2021-12-02 22:34:31	2021-12-02 22:34:31
89	Morgan Smith	hill.verla@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	qovy480Fc7	2021-12-02 22:34:31	2021-12-02 22:34:31
90	Ms. Tierra Gusikowski PhD	jacobson.rigoberto@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	FWzs8pKbWq	2021-12-02 22:34:31	2021-12-02 22:34:31
91	Prof. Clare Pagac	vonrueden.toney@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	1T9OZPJK6P	2021-12-02 22:34:31	2021-12-02 22:34:31
92	Deven Lehner	emmett.hackett@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	00BBY5pmYW	2021-12-02 22:34:31	2021-12-02 22:34:31
93	Dr. Ola Bosco DDS	xfeeney@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	ngPAH3yHhE	2021-12-02 22:34:31	2021-12-02 22:34:31
94	Prof. Adan Lubowitz	wohara@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	gLLtfHu59G	2021-12-02 22:34:31	2021-12-02 22:34:31
95	Prof. Amely McGlynn	jryan@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	o2BVDNwsJd	2021-12-02 22:34:31	2021-12-02 22:34:31
96	Elnora Hill	mwehner@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	tJjKnBohYV	2021-12-02 22:34:31	2021-12-02 22:34:31
97	Lexi Anderson	rudy66@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	1MoqWqMkWx	2021-12-02 22:34:31	2021-12-02 22:34:31
98	Xavier Gulgowski	hill.adell@example.net	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	doozbiL48p	2021-12-02 22:34:31	2021-12-02 22:34:31
99	Dr. Wilber Lang III	kathlyn.bernier@example.org	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	oAK2JBahYY	2021-12-02 22:34:31	2021-12-02 22:34:31
100	Dr. Holly Schultz	precious.stiedemann@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	1ZRbMSotBj	2021-12-02 22:34:31	2021-12-02 22:34:31
101	Morton Beier	quinn.wuckert@example.com	2021-12-02 22:34:30	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	5lCLBx2ep3	2021-12-02 22:34:31	2021-12-02 22:34:31
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

