--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp(6) with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp(6) with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp(6) with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: django_summernote_attachment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_summernote_attachment (
    id bigint NOT NULL,
    name character varying(255),
    file character varying(100) NOT NULL,
    uploaded timestamp(6) with time zone NOT NULL
);


ALTER TABLE public.django_summernote_attachment OWNER TO postgres;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_summernote_attachment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_summernote_attachment_id_seq OWNER TO postgres;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_summernote_attachment_id_seq OWNED BY public.django_summernote_attachment.id;


--
-- Name: parkingarea_parkingarea; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parkingarea_parkingarea (
    id bigint NOT NULL,
    title character varying(150) NOT NULL,
    slug character varying(150) NOT NULL,
    thumbnail character varying(100) NOT NULL,
    description text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    edited_at timestamp with time zone NOT NULL,
    is_public boolean NOT NULL,
    rental_start timestamp with time zone NOT NULL,
    rental_end timestamp with time zone NOT NULL,
    price integer NOT NULL,
    available boolean NOT NULL,
    contact text NOT NULL,
    address text NOT NULL,
    author_id bigint NOT NULL
);


ALTER TABLE public.parkingarea_parkingarea OWNER TO postgres;

--
-- Name: parkingarea_parkingarea_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parkingarea_parkingarea_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.parkingarea_parkingarea_id_seq OWNER TO postgres;

--
-- Name: parkingarea_parkingarea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parkingarea_parkingarea_id_seq OWNED BY public.parkingarea_parkingarea.id;


--
-- Name: parkingarea_parkingarea_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parkingarea_parkingarea_tags (
    id bigint NOT NULL,
    parkingarea_id bigint NOT NULL,
    tag_id bigint NOT NULL
);


ALTER TABLE public.parkingarea_parkingarea_tags OWNER TO postgres;

--
-- Name: parkingarea_parkingarea_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parkingarea_parkingarea_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.parkingarea_parkingarea_tags_id_seq OWNER TO postgres;

--
-- Name: parkingarea_parkingarea_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parkingarea_parkingarea_tags_id_seq OWNED BY public.parkingarea_parkingarea_tags.id;


--
-- Name: parkingarea_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parkingarea_tag (
    id bigint NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.parkingarea_tag OWNER TO postgres;

--
-- Name: parkingarea_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parkingarea_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.parkingarea_tag_id_seq OWNER TO postgres;

--
-- Name: parkingarea_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parkingarea_tag_id_seq OWNED BY public.parkingarea_tag.id;


--
-- Name: posts_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts_post (
    id bigint NOT NULL,
    title character varying(150) NOT NULL,
    slug character varying(150) NOT NULL,
    thumbnail character varying(100) NOT NULL,
    description text NOT NULL,
    read_time integer,
    created_at timestamp(6) with time zone NOT NULL,
    edited_at timestamp(6) with time zone NOT NULL,
    is_public boolean NOT NULL,
    author_id bigint NOT NULL,
    rental_start timestamp(6) with time zone,
    rental_end timestamp(6) with time zone,
    available boolean NOT NULL,
    price integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.posts_post OWNER TO postgres;

--
-- Name: posts_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_post_id_seq OWNER TO postgres;

--
-- Name: posts_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_post_id_seq OWNED BY public.posts_post.id;


--
-- Name: posts_post_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts_post_tags (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    tag_id bigint NOT NULL
);


ALTER TABLE public.posts_post_tags OWNER TO postgres;

--
-- Name: posts_post_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_post_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_post_tags_id_seq OWNER TO postgres;

--
-- Name: posts_post_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_post_tags_id_seq OWNED BY public.posts_post_tags.id;


--
-- Name: posts_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts_tag (
    id bigint NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.posts_tag OWNER TO postgres;

--
-- Name: posts_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_tag_id_seq OWNER TO postgres;

--
-- Name: posts_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_tag_id_seq OWNED BY public.posts_tag.id;


--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp(6) with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO postgres;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNER TO postgres;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp(6) with time zone,
    expires_at timestamp(6) with time zone NOT NULL,
    user_id bigint,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO postgres;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNER TO postgres;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp(6) with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    first_name character varying(150),
    last_name character varying(150),
    avatar character varying(100) NOT NULL,
    title character varying(50) NOT NULL,
    created_at timestamp(6) with time zone NOT NULL,
    is_staff boolean NOT NULL,
    is_verified boolean NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.users_user OWNER TO postgres;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO postgres;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_user_groups_id_seq OWNER TO postgres;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_user_id_seq OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO postgres;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_summernote_attachment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_summernote_attachment ALTER COLUMN id SET DEFAULT nextval('public.django_summernote_attachment_id_seq'::regclass);


--
-- Name: parkingarea_parkingarea id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_parkingarea ALTER COLUMN id SET DEFAULT nextval('public.parkingarea_parkingarea_id_seq'::regclass);


--
-- Name: parkingarea_parkingarea_tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_parkingarea_tags ALTER COLUMN id SET DEFAULT nextval('public.parkingarea_parkingarea_tags_id_seq'::regclass);


--
-- Name: parkingarea_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_tag ALTER COLUMN id SET DEFAULT nextval('public.parkingarea_tag_id_seq'::regclass);


--
-- Name: posts_post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_post ALTER COLUMN id SET DEFAULT nextval('public.posts_post_id_seq'::regclass);


--
-- Name: posts_post_tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_post_tags ALTER COLUMN id SET DEFAULT nextval('public.posts_post_tags_id_seq'::regclass);


--
-- Name: posts_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_tag ALTER COLUMN id SET DEFAULT nextval('public.posts_tag_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add attachment	6	add_attachment
22	Can change attachment	6	change_attachment
23	Can delete attachment	6	delete_attachment
24	Can view attachment	6	view_attachment
25	Can add blacklisted token	7	add_blacklistedtoken
26	Can change blacklisted token	7	change_blacklistedtoken
27	Can delete blacklisted token	7	delete_blacklistedtoken
28	Can view blacklisted token	7	view_blacklistedtoken
29	Can add outstanding token	8	add_outstandingtoken
30	Can change outstanding token	8	change_outstandingtoken
31	Can delete outstanding token	8	delete_outstandingtoken
32	Can view outstanding token	8	view_outstandingtoken
33	Can add user	9	add_user
34	Can change user	9	change_user
35	Can delete user	9	delete_user
36	Can view user	9	view_user
37	Can add post	10	add_post
38	Can change post	10	change_post
39	Can delete post	10	delete_post
40	Can view post	10	view_post
41	Can add tag	11	add_tag
42	Can change tag	11	change_tag
43	Can delete tag	11	delete_tag
44	Can view tag	11	view_tag
45	Can add comment	12	add_comment
46	Can change comment	12	change_comment
47	Can delete comment	12	delete_comment
48	Can view comment	12	view_comment
50	Can add tag	14	add_tag
51	Can change tag	14	change_tag
52	Can delete tag	14	delete_tag
53	Can view tag	14	view_tag
54	Can add parking area	15	add_parkingarea
55	Can change parking area	15	change_parkingarea
56	Can delete parking area	15	delete_parkingarea
57	Can view parking area	15	view_parkingarea
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-10-10 17:21:44+00	1	1	1	123	1	1
2	2022-10-11 00:16:02.55022+00	2	2. save	1	[{"added": {}}]	11	1
3	2022-10-11 00:16:17.940128+00	1	1. ssstest - Rachel Peters - darkbear0112@gmail.com	1	[{"added": {}}]	10	1
4	2022-10-11 00:17:19.994101+00	3	3. test	1	[{"added": {}}]	11	1
5	2022-10-11 00:17:21.99559+00	2	2. blockchain - Rachel Peters - darkbear0112@gmail.com	1	[{"added": {}}]	10	1
6	2022-10-11 00:18:01.683188+00	3	3. betting - Rachel Peters - darkbear0112@gmail.com	1	[{"added": {}}]	10	1
7	2022-10-11 00:19:31.493243+00	2	simba - 	1	[{"added": {}}]	9	1
8	2022-10-11 00:20:12.411981+00	2	simba - simba@gmail.com	2	[{"changed": {"fields": ["Email", "Avatar", "Is verified", "Is staff", "First name", "Last name", "Title"]}}]	9	1
9	2022-10-11 00:25:50.532046+00	1	1. ssstest - Rachel Peters - darkbear0112@gmail.com	3		10	1
10	2022-10-11 00:25:50.534048+00	3	3. betting - Rachel Peters - darkbear0112@gmail.com	3		10	1
11	2022-10-11 02:48:30.924907+00	4	4. car	1	[{"added": {}}]	11	1
12	2022-10-11 02:48:35.47792+00	4	4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com	1	[{"added": {}}]	10	1
13	2022-10-11 02:50:26.249265+00	2	2. save	3		11	1
14	2022-10-11 02:50:26.251288+00	3	3. test	3		11	1
15	2022-10-11 02:51:06.803211+00	18	Blacklisted token for Rachel Peters - darkbear0112@gmail.com	1	[{"added": {}}]	7	1
16	2022-10-11 02:54:46.645439+00	4	4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com	2	[{"changed": {"fields": ["Thumbnail"]}}]	10	1
17	2022-10-11 02:54:51.724477+00	4	4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com	2	[]	10	1
18	2022-10-11 02:55:00.787927+00	4	4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com	2	[]	10	1
19	2022-10-11 03:08:17.435488+00	4	4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com	2	[{"changed": {"fields": ["Thumbnail"]}}]	10	1
20	2022-10-11 03:08:22.325443+00	4	4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com	2	[]	10	1
21	2022-10-11 03:09:57.249175+00	4	4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com	2	[{"changed": {"fields": ["Thumbnail"]}}]	10	1
22	2022-10-11 03:18:54.025357+00	4	4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com	2	[{"changed": {"fields": ["Thumbnail"]}}]	10	1
23	2022-10-11 03:21:27.276751+00	5	5. Sedan Car - simba - simba@gmail.com	1	[{"added": {}}]	10	1
24	2022-10-11 03:24:05.235488+00	6	6. Convertible Car - Rachel Peters - darkbear0112@gmail.com	1	[{"added": {}}]	10	1
25	2022-10-11 03:28:12.358137+00	5	5. truck	1	[{"added": {}}]	11	1
26	2022-10-11 03:28:17.662699+00	7	7. Pick Up Vehicle Car - Rachel Peters - darkbear0112@gmail.com	1	[{"added": {}}]	10	1
27	2022-10-11 03:28:45.522455+00	6	6. Bus	1	[{"added": {}}]	11	1
28	2022-10-11 03:28:49.708357+00	8	8. Van Car - Rachel Peters - darkbear0112@gmail.com	1	[{"added": {}}]	10	1
29	2022-10-11 03:29:33.427586+00	9	9. SUV Car - simba - simba@gmail.com	1	[{"added": {}}]	10	1
30	2022-10-11 03:30:12.826144+00	10	10. Coupe Car - Rachel Peters - darkbear0112@gmail.com	1	[{"added": {}}]	10	1
31	2022-10-12 10:22:24.748902+00	10	10. Coupe Car - darkbear0112@gmail.com - darkbear0112@gmail.com	2	[{"changed": {"fields": ["Description", "Rental start", "Rental end"]}}]	10	1
32	2022-10-13 09:36:23.806588+00	7	7. Pick Up Vehicle Car - Rachel Peters - darkbear0112@gmail.com	2	[{"changed": {"fields": ["Available"]}}]	10	1
33	2022-10-13 11:38:21.446416+00	3	Egor - egormikhail0112@gmail.com	2	[]	9	1
34	2022-10-13 11:38:21.477385+00	3	Egor - egormikhail0112@gmail.com	2	[]	9	1
35	2022-10-13 11:38:45.607285+00	3	Egor - egormikhail0112@gmail.com	2	[{"changed": {"fields": ["Is verified"]}}]	9	1
36	2022-10-13 11:38:47.999203+00	3	Egor - egormikhail0112@gmail.com	2	[]	9	1
37	2022-10-13 11:38:57.806883+00	3	Egor - egormikhail0112@gmail.com	2	[{"changed": {"fields": ["Is verified"]}}]	9	1
38	2022-10-13 12:06:39.77688+00	10	10. Coupe Car - Rachel Peters - darkbear0112@gmail.com	2	[{"changed": {"fields": ["Available"]}}]	10	1
40	2024-05-22 20:21:27.047013+00	1	1. elektrik	1	[{"added": {}}]	14	5
41	2024-05-22 20:21:31.073502+00	2	2. su	1	[{"added": {}}]	14	5
42	2024-05-22 20:21:35.579355+00	3	3. internet	1	[{"added": {}}]	14	5
43	2024-05-22 20:21:40.275238+00	4	4. wc	1	[{"added": {}}]	14	5
44	2024-05-22 20:21:43.897617+00	5	5. banyo	1	[{"added": {}}]	14	5
45	2024-05-22 20:23:18.423051+00	1	1. yenice - zeynep - zeynep@gmail.com	1	[{"added": {}}]	15	5
46	2024-05-22 21:54:37.963186+00	1	1. yenice - zeynep - zeynep@gmail.com	3		15	5
47	2024-05-22 21:56:16.320178+00	2	2. test - zeynep - zeynep@gmail.com	1	[{"added": {}}]	15	5
48	2024-05-23 10:30:45.453585+00	10	10. Coupe Car - Rachel Peters - darkbear0112@gmail.com	3		10	5
49	2024-05-23 10:30:45.456592+00	9	9. SUV Car - simba - simba@gmail.com	3		10	5
50	2024-05-23 10:30:45.459592+00	8	8. van-car - Rachel Peters - darkbear0112@gmail.com	3		10	5
51	2024-05-23 10:30:45.462583+00	7	7. Pick Up Vehicle Car - Rachel Peters - darkbear0112@gmail.com	3		10	5
52	2024-05-23 10:30:45.464584+00	6	6. Convertible Car - Rachel Peters - darkbear0112@gmail.com	3		10	5
53	2024-05-23 10:30:45.466583+00	5	5. Sedan Car - simba - simba@gmail.com	3		10	5
54	2024-05-23 10:30:45.468583+00	4	4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com	3		10	5
55	2024-05-23 10:36:35.602959+00	8	8. caravan	1	[{"added": {}}]	11	5
56	2024-05-23 10:37:19.247681+00	13	13. KULİS KARAVAN - zeynep - zeynep@gmail.com	1	[{"added": {}}]	10	5
57	2024-05-23 10:42:55.073152+00	9	9. ronin-caravan	1	[{"added": {}}]	11	5
58	2024-05-23 10:43:22.722473+00	14	14. RONİN KARAVAN - zeynep - zeynep@gmail.com	1	[{"added": {}}]	10	5
59	2024-05-23 10:43:42.244155+00	10	10. lux-caravan	1	[{"added": {}}]	11	5
60	2024-05-23 10:43:49.626101+00	13	13. KULİS KARAVAN - zeynep - zeynep@gmail.com	2	[{"changed": {"fields": ["Tags"]}}]	10	5
61	2024-05-23 11:33:28.034084+00	2	2. Maşuk Camping - zeynep - zeynep@gmail.com	2	[{"changed": {"fields": ["Title", "Slug", "Thumbnail", "Description", "Tags", "Address"]}}]	15	5
62	2024-05-23 12:08:47.613172+00	2	2. Maşuk Camping - zeynep - zeynep@gmail.com	2	[{"changed": {"fields": ["Thumbnail"]}}]	15	5
63	2024-05-23 12:50:41.528403+00	2	2. Maşuk Camping - zeynep - zeynep@gmail.com	2	[{"changed": {"fields": ["Thumbnail"]}}]	15	5
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	django_summernote	attachment
7	token_blacklist	blacklistedtoken
8	token_blacklist	outstandingtoken
9	users	user
10	posts	post
11	posts	tag
12	comments	comment
14	parkingarea	tag
15	parkingarea	parkingarea
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-10-10 11:40:55.20017+00
2	contenttypes	0002_remove_content_type_name	2022-10-10 11:40:55.331074+00
3	auth	0001_initial	2022-10-10 11:40:55.729147+00
4	auth	0002_alter_permission_name_max_length	2022-10-10 11:40:55.750489+00
5	auth	0003_alter_user_email_max_length	2022-10-10 11:40:55.768469+00
6	auth	0004_alter_user_username_opts	2022-10-10 11:40:55.782462+00
7	auth	0005_alter_user_last_login_null	2022-10-10 11:40:55.793417+00
8	auth	0006_require_contenttypes_0002	2022-10-10 11:40:55.796415+00
9	auth	0007_alter_validators_add_error_messages	2022-10-10 11:40:55.804467+00
10	auth	0008_alter_user_username_max_length	2022-10-10 11:40:55.811462+00
11	auth	0009_alter_user_last_name_max_length	2022-10-10 11:40:55.818458+00
12	auth	0010_alter_group_name_max_length	2022-10-10 11:40:55.872329+00
13	auth	0011_update_proxy_permissions	2022-10-10 11:40:55.881346+00
14	auth	0012_alter_user_first_name_max_length	2022-10-10 11:40:55.898843+00
15	users	0001_initial	2022-10-10 11:40:56.165631+00
16	admin	0001_initial	2022-10-10 11:40:56.275417+00
17	admin	0002_logentry_remove_auto_add	2022-10-10 11:40:56.301777+00
18	admin	0003_logentry_add_action_flag_choices	2022-10-10 11:40:56.317134+00
19	posts	0001_initial	2022-10-10 11:40:56.510133+00
20	comments	0001_initial	2022-10-10 11:40:56.552416+00
21	comments	0002_initial	2022-10-10 11:40:56.627416+00
22	django_summernote	0001_initial	2022-10-10 11:40:56.665428+00
23	django_summernote	0002_update-help_text	2022-10-10 11:40:56.685627+00
24	posts	0002_initial	2022-10-10 11:40:56.866758+00
25	sessions	0001_initial	2022-10-10 11:40:56.968834+00
26	token_blacklist	0001_initial	2022-10-10 11:40:57.266511+00
27	token_blacklist	0002_outstandingtoken_jti_hex	2022-10-10 11:40:57.30346+00
28	token_blacklist	0003_auto_20171017_2007	2022-10-10 11:40:57.330459+00
29	token_blacklist	0004_auto_20171017_2013	2022-10-10 11:40:57.385879+00
30	token_blacklist	0005_remove_outstandingtoken_jti	2022-10-10 11:40:57.421213+00
31	token_blacklist	0006_auto_20171017_2113	2022-10-10 11:40:57.447179+00
32	token_blacklist	0007_auto_20171017_2214	2022-10-10 11:40:57.634728+00
33	token_blacklist	0008_migrate_to_bigautofield	2022-10-10 11:40:57.839136+00
34	token_blacklist	0010_fix_migrate_to_bigautofield	2022-10-10 11:40:57.875376+00
35	token_blacklist	0011_linearizes_history	2022-10-10 11:40:57.87836+00
37	django_summernote	0003_alter_attachment_id	2024-05-22 20:01:03.892618+00
38	parkingarea	0001_initial	2024-05-22 20:19:49.782109+00
42	parkingarea	0002_auto_20240526_0004	2024-05-25 21:06:37.197228+00
43	parkingarea	0002_auto_20240526_0052	2024-05-25 21:53:28.449911+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
5ntpc8knzjfpg7e4z0cckxu5cgnkci98	.eJxVjMEOwiAQRP-FsyEsW0Lr0bvfQHZhkaqhSWlPjf9um_Sgmdu8N7OpQOtSwtpkDmNSV-XU5bdjii-pB0hPqo9Jx6ku88j6UPRJm75PSd630_07KNTKvo6DzeB6I5j2oDWZrfGI3pCgzwQ8oCUARxhFHDFA10nPPnryQk59vtY_N-I:1sAwZb:7XnVmO65O4A2AuKohU1X8kjOJ-yZ0F5Z92luEAR8yks	2024-06-08 18:56:55.247344+00
2a91640k7g5wpc96xdg5fuleiab3ofcj	.eJxVjMEOwiAQRP-FsyEsW0Lr0bvfQHZhkaqhSWlPjf9um_Sgmdu8N7OpQOtSwtpkDmNSV-XU5bdjii-pB0hPqo9Jx6ku88j6UPRJm75PSd630_07KNTKvo6DzeB6I5j2oDWZrfGI3pCgzwQ8oCUARxhFHDFA10nPPnryQk59vtY_N-I:1sAzrX:2GHTvSIuJCdPiQBLLu0JKwP0kSiePgu54YJADuZwF5A	2024-06-08 22:27:39.70118+00
\.


--
-- Data for Name: django_summernote_attachment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_summernote_attachment (id, name, file, uploaded) FROM stdin;
\.


--
-- Data for Name: parkingarea_parkingarea; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parkingarea_parkingarea (id, title, slug, thumbnail, description, created_at, edited_at, is_public, rental_start, rental_end, price, available, contact, address, author_id) FROM stdin;
9	rtehrthr	rthrth	parkingareas/default.jpg	rthrth	2024-05-25 22:27:00.604714+00	2024-05-25 22:27:00.604714+00	f	2024-05-27 01:24:00+00	2024-05-30 01:24:00+00	2000	t	rhtr	thrt	5
11	wehefbwjre	ergferf	parkingareas/default.jpg	rthrth	2024-05-25 22:27:25.245018+00	2024-05-25 22:27:25.245018+00	f	2024-05-27 01:24:00+00	2024-05-30 01:24:00+00	2000	t	rhtr	thrt	5
12	dfvd	vdfvv	parkingareas/default.jpg	vdvsd	2024-05-25 23:01:46.585039+00	2024-05-25 23:01:46.585039+00	f	2024-05-29 02:01:00+00	2024-05-30 02:01:00+00	3500	t	svdv	sd	5
\.


--
-- Data for Name: parkingarea_parkingarea_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parkingarea_parkingarea_tags (id, parkingarea_id, tag_id) FROM stdin;
\.


--
-- Data for Name: parkingarea_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parkingarea_tag (id, name) FROM stdin;
\.


--
-- Data for Name: posts_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts_post (id, title, slug, thumbnail, description, read_time, created_at, edited_at, is_public, author_id, rental_start, rental_end, available, price) FROM stdin;
2	blockchain	blockchain	thumbnails/fe0e04.jpg	<p>sssssssss</p>	\N	2022-10-11 00:17:21.985903+00	2022-10-11 00:17:21.985903+00	f	1	\N	\N	t	40
13	KULİS KARAVAN	kulis_karavan	thumbnails/arti-mobil-tuvalet-kulis-karavan_mSoVzwO.jpg	<p><br></p><ol class="fa-ul" style="-webkit-font-smoothing: antialiased; margin-right: 0px; margin-bottom: 15px; margin-left: 30px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; list-style: none; color: rgb(255, 255, 255); text-align: justify; background-color: rgb(63, 63, 63);"><li style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px 0px 10px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative;">Oturma grubu</li><li style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px 0px 10px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative;"><span class="fa-li" style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; left: -2em; position: absolute; text-align: center; width: 2em;"><i class="icon-right-dir" style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;"></i></span>Sıcak soğuk klima</li><li style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px 0px 10px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative;"><span class="fa-li" style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; left: -2em; position: absolute; text-align: center; width: 2em;"><i class="icon-right-dir" style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;"></i></span>Tuvalet,duş</li><li style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px 0px 10px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative;"><span class="fa-li" style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; left: -2em; position: absolute; text-align: center; width: 2em;"><i class="icon-right-dir" style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;"></i></span>Sıcak su</li><li style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px 0px 10px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative;"><span class="fa-li" style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; left: -2em; position: absolute; text-align: center; width: 2em;"><i class="icon-right-dir" style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;"></i></span>Buzdolabı</li><li style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px 0px 10px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative;"><span class="fa-li" style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; left: -2em; position: absolute; text-align: center; width: 2em;"><i class="icon-right-dir" style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;"></i></span>Televizyon, radyo</li><li style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px 0px 10px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative;"><span class="fa-li" style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; left: -2em; position: absolute; text-align: center; width: 2em;"><i class="icon-right-dir" style="box-sizing: inherit; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;"></i></span>Makyaj aynası</li></ol>	\N	2024-05-23 10:37:19.187616+00	2024-05-23 10:43:49.578101+00	t	5	2024-07-01 08:00:00+00	2024-07-25 07:00:00+00	t	4500
14	RONİN KARAVAN	ronin_karavan	thumbnails/ce9644-whatsapp-image-2021-09-21_7wJMZTD.jpg	<h4 color:="" font-size:="" line-height:="" open="" style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Montserrat; padding: 0px;">Yat Tipi Tuvalet &amp; Duş</h4><h4 color:="" font-size:="" line-height:="" open="" style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Montserrat; padding: 0px;">Yaşam Aküsü</h4><h4 color:="" font-size:="" line-height:="" open="" style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Montserrat; padding: 0px;">Solar Panel</h4><h4 color:="" font-size:="" line-height:="" open="" style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Montserrat; padding: 0px;">Kalorifer</h4><div class="nicdark_space20" style="font-family: &quot;Open Sans&quot;; font-size: 15px; height: 20px; width: 280px; float: left;"><h4 color:="" font-size:="" line-height:="" open="" style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Montserrat; padding: 0px;">Şarjlı İnvertör</h4><h4 color:="" font-size:="" line-height:="" open="" style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Montserrat; padding: 0px;">Şofben</h4><h4 color:="" font-size:="" line-height:="" open="" style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Montserrat; padding: 0px;">Uydu Anten</h4></div><div class="nicdark_space20" style="font-family: &quot;Open Sans&quot;; font-size: 15px; height: 20px; width: 280px; float: left;"><span style="font-family: Montserrat; font-size: 1.5rem;"><br></span></div><div class="nicdark_space20" style="font-family: &quot;Open Sans&quot;; font-size: 15px; height: 20px; width: 280px; float: left;"><span style="font-family: Montserrat; font-size: 1.5rem;"><br></span></div><div class="nicdark_space20" style="font-family: &quot;Open Sans&quot;; font-size: 15px; height: 20px; width: 280px; float: left;"><span style="font-family: Montserrat; font-size: 1.5rem;"><br></span></div><div class="nicdark_space20" style="font-family: &quot;Open Sans&quot;; font-size: 15px; height: 20px; width: 280px; float: left;"><span style="font-family: Montserrat; font-size: 1.5rem;"><br></span></div><div class="nicdark_space20" style="font-family: &quot;Open Sans&quot;; font-size: 15px; height: 20px; width: 280px; float: left;"><span style="font-family: Montserrat; font-size: 1.5rem;"><br></span></div>	\N	2024-05-23 10:43:22.717502+00	2024-05-23 11:35:37.391349+00	t	5	2024-05-23 11:35:30.628+00	2024-05-24 11:35:30+00	f	3500
\.


--
-- Data for Name: posts_post_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts_post_tags (id, post_id, tag_id) FROM stdin;
14	14	9
15	13	10
\.


--
-- Data for Name: posts_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts_tag (id, name) FROM stdin;
4	car
5	truck
6	Bus
8	caravan
9	ronin-caravan
10	lux-caravan
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
248	2024-05-25 11:07:36.068173+00	251
249	2024-05-25 18:39:00.692615+00	252
250	2024-05-25 18:39:02.453135+00	253
251	2024-05-25 18:39:05.072336+00	254
252	2024-05-25 18:45:01.502801+00	255
253	2024-05-25 18:46:01.461815+00	256
254	2024-05-25 18:46:17.614847+00	257
255	2024-05-25 18:48:39.690184+00	258
256	2024-05-25 18:53:55.650023+00	259
257	2024-05-25 18:56:44.875954+00	260
258	2024-05-25 19:00:01.178073+00	261
259	2024-05-25 19:05:58.547744+00	262
260	2024-05-25 19:06:01.563742+00	263
261	2024-05-25 19:06:11.789659+00	264
262	2024-05-25 19:06:15.43809+00	265
263	2024-05-25 19:07:08.007517+00	266
264	2024-05-25 19:16:51.498593+00	267
265	2024-05-25 19:24:17.612706+00	268
266	2024-05-25 19:33:23.448059+00	269
267	2024-05-25 19:33:30.513592+00	270
268	2024-05-25 19:33:40.709063+00	271
269	2024-05-25 19:33:45.174903+00	272
270	2024-05-25 19:34:32.320086+00	273
271	2024-05-25 19:41:30.292341+00	274
272	2024-05-25 19:47:24.188787+00	275
273	2024-05-25 19:52:01.686595+00	276
274	2024-05-25 19:52:03.644399+00	277
275	2024-05-25 20:04:35.325764+00	278
276	2024-05-25 20:13:09.695222+00	279
277	2024-05-25 20:19:20.294325+00	280
278	2024-05-25 20:25:44.215662+00	281
279	2024-05-25 20:25:45.5164+00	282
280	2024-05-25 20:25:48.012427+00	283
281	2024-05-25 21:20:49.414898+00	284
282	2024-05-25 21:28:38.763145+00	285
283	2024-05-25 21:34:41.084645+00	286
284	2024-05-25 21:55:00.034553+00	287
285	2024-05-25 22:00:23.554909+00	288
286	2024-05-25 22:07:30.497586+00	289
287	2024-05-25 22:12:56.193766+00	290
288	2024-05-25 22:20:58.423506+00	291
289	2024-05-25 22:27:00.564963+00	292
290	2024-05-25 22:52:01.396919+00	293
291	2024-05-25 23:01:19.280919+00	294
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
251	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI0MDA1NSwianRpIjoiYTE2NWI2NTM0MWM2NDA1MmI3MmMyNzYyZjY0ZjdkMGMiLCJ1c2VyX2lkIjo1fQ.otsWpGdDsRcReSpLbknK6Kgmzcx4N-cdjMyr00BBQLc	2024-05-25 11:07:35.9892+00	2024-06-01 11:07:35+00	5	a165b65341c64052b72c2762f64f7d0c
252	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzIzOTg4MCwianRpIjoiM2QwNDYwODRhN2JlNDcyMmFmZDJiYzNiNmZkZGEwZWIiLCJ1c2VyX2lkIjo1fQ.PPvbPDN-tdBoE981CrzBSyfdkJWwMZ20Zt84aNFajEc	\N	2024-06-01 11:04:40+00	\N	3d046084a7be4722afd2bc3b6fdda0eb
253	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2NzE0MCwianRpIjoiOWY2MWExZWM3MzI3NGFhNjg5YTE2ODFhYWU0MmJjMDgiLCJ1c2VyX2lkIjo1fQ.sqf0lXTNiQfUfM_NqNG-JEwDIaDTdb_-jeZz2QceEEo	\N	2024-06-01 18:39:00+00	\N	9f61a1ec73274aa689a1681aae42bc08
254	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2NzE0NSwianRpIjoiMjI2OTk5MzhhMWI4NGNhZjhjYWY5NzBjMWE5NmIwNzMiLCJ1c2VyX2lkIjo1fQ.adrnYpAB7F6Pj2NIyTOsju-_KHFOGioRS5Z2AZlIzqQ	2024-05-25 18:39:05.030332+00	2024-06-01 18:39:05+00	5	22699938a1b84caf8caf970c1a96b073
255	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2NzE0NSwianRpIjoiOGIwM2Y5ZWU3OTg5NGNiMjhhMmNiMDg4NTg5MTcyMDMiLCJ1c2VyX2lkIjo1fQ.tIZyRB1FnRaz4AKMfWPxkDheQeNLt_c8E4mjTBQnrvM	\N	2024-06-01 18:39:05+00	\N	8b03f9ee79894cb28a2cb08858917203
256	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2NzUwMSwianRpIjoiNzMzN2NjMWYyNTVhNDQ5YzlhODI2Njk5ZGIxOTA5NzkiLCJ1c2VyX2lkIjo1fQ.AInfSIWq2dIOLJQGYYNfEM3sfvjt_6I2F4hEqWjifDI	\N	2024-06-01 18:45:01+00	\N	7337cc1f255a449c9a826699db190979
257	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2NzU3NywianRpIjoiYjQxODZmNzAxMGI0NGMwN2EzMmRiYjY3OWFmNjk3N2IiLCJ1c2VyX2lkIjo1fQ.xzUkjhkFo1bHvwPtGy4PCLO1b4CwdBsAeQH30d0vEG0	2024-05-25 18:46:17.574879+00	2024-06-01 18:46:17+00	5	b4186f7010b44c07a32dbb679af6977b
258	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2NzcxOSwianRpIjoiNjM1NjY2NWI4NzQ3NDE2N2I2ZGE2MmY1YjcyYjM5MGUiLCJ1c2VyX2lkIjo1fQ._CPDVLXGQEXXtTjyh7x9t3b__0_Gb-wdZhlbGSrluSI	2024-05-25 18:48:39.596183+00	2024-06-01 18:48:39+00	5	6356665b87474167b6da62f5b72b390e
259	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2NzcxOSwianRpIjoiY2QxNDM0NTE5NzcxNDU0NWE0OTljMzVhNDRmZjM2ZWEiLCJ1c2VyX2lkIjo1fQ.hK6hkRBV4U-AOUZ8sqp83aPRvt7p4C94XVyPSwsWKa8	\N	2024-06-01 18:48:39+00	\N	cd14345197714545a499c35a44ff36ea
260	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2NzU3NywianRpIjoiYWVmN2ZmOTI3M2Q1NGFiMmFiZTdhYmZmMWMyMmU1ZmIiLCJ1c2VyX2lkIjo1fQ.u5b6UBvkr8QASCrRLcqZTGpYqtWWgXSui3K8u_iKgSI	\N	2024-06-01 18:46:17+00	\N	aef7ff9273d54ab2abe7abff1c22e5fb
261	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2ODAzNSwianRpIjoiYTdlNWRlNDUxY2E3NDlmNzlhM2I0MTMzMmIyNjdlYjkiLCJ1c2VyX2lkIjo1fQ.K59JW0b-iy7ph69UkXnC64zYKy6V724C2iOSK9SiclQ	\N	2024-06-01 18:53:55+00	\N	a7e5de451ca749f79a3b41332b267eb9
262	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2ODQwMSwianRpIjoiM2JhYjA0OTkxNDU3NDA5NmE4ZmIzODI1ZTcwODY0MTAiLCJ1c2VyX2lkIjo1fQ.HYFzAmw3E84KDTmnupM8FojJUCnyCeTw-fTRNdnhc94	\N	2024-06-01 19:00:01+00	\N	3bab049914574096a8fb3825e7086410
263	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2ODc1OCwianRpIjoiOTI5MThhYTE2YjZkNDI1NTkwYWU3MjI5MjEzNGFjOTAiLCJ1c2VyX2lkIjo1fQ.ueOCgEdOzEzrOfn_IsCjMsd9q9ewvvPUHtWvEW9VPZc	\N	2024-06-01 19:05:58+00	\N	92918aa16b6d425590ae72292134ac90
264	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI0MDA1NiwianRpIjoiZTI4YzFjNTY3MTc2NDM3MzgwZjY0MmY0N2RmZTE3NzEiLCJ1c2VyX2lkIjo1fQ.Zo6PurufnxxnohYOOf_3JTwPn83NPDDuzYyWc2ARn38	\N	2024-06-01 11:07:36+00	\N	e28c1c567176437380f642f47dfe1771
265	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2ODc3MSwianRpIjoiZTdjNDgxZjEwOTIyNDc3ZGFkZTFlMWFhMTIyYWNhYTkiLCJ1c2VyX2lkIjo1fQ.PVq6WjVugo2_qJo9haMAct9Dp4lGcv3FxY4jAQtqv9Y	\N	2024-06-01 19:06:11+00	\N	e7c481f10922477dade1e1aa122acaa9
266	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2ODgyNywianRpIjoiYjlmNjkyNDVmMzk4NDFlN2E3NTRmMDkwMTdlM2Y5ODAiLCJ1c2VyX2lkIjo1fQ.jTHGgUAbOjMXU5OKzoLjUjeM5gOb2i5wm-T-F-FmeFY	2024-05-25 19:07:07.933516+00	2024-06-01 19:07:07+00	5	b9f69245f39841e7a754f09017e3f980
267	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2OTQxMSwianRpIjoiYTdkYzQyMTdhODE4NGQ1MWIyMzNlZTE4ODllYTU1MDkiLCJ1c2VyX2lkIjo1fQ.XClCc-zxt1PAyrGMyE_hW2a_uzCw2s__oJL5EpI33jM	2024-05-25 19:16:51.398588+00	2024-06-01 19:16:51+00	5	a7dc4217a8184d51b233ee1889ea5509
268	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2OTQxMSwianRpIjoiN2E5MTU2YTEzNGY5NDViM2I4NmIwMTI3NDQ4NDM3NTYiLCJ1c2VyX2lkIjo1fQ.ZDptavXyHi7uU3rhkYQweaJkPchlkwMZYrHWESHgHH0	\N	2024-06-01 19:16:51+00	\N	7a9156a134f945b3b86b012744843756
269	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2OTg1NywianRpIjoiMzVjZThjZDk5ODIwNDVmYzk4ZDI2ODUxZDZkZTI3NTAiLCJ1c2VyX2lkIjo1fQ.Ihym4kWuF2RSA4QcsOvnf5dfVyGs6CpOfjXgDayLCzI	\N	2024-06-01 19:24:17+00	\N	35ce8cd9982045fc98d26851d6de2750
270	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3MDQwMywianRpIjoiNTRjNThkY2JmNzEwNDQwNDgwZThkNTVmN2RjYjNiMmIiLCJ1c2VyX2lkIjo1fQ.yYn-SmPL2wc4mhGEQe5B1IbDQbKuuIIqY70HUh97tTs	\N	2024-06-01 19:33:23+00	\N	54c58dcbf710440480e8d55f7dcb3b2b
271	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI2ODgyNywianRpIjoiOWRkMWFhMzIxMDg1NDAyOGIxZGZjMjQ1ODQzZWIzZjUiLCJ1c2VyX2lkIjo1fQ.yusj--9CqA2hb86F_NaRBufs3GOatQjggpUP1xlKs5Y	\N	2024-06-01 19:07:07+00	\N	9dd1aa3210854028b1dfc245843eb3f5
272	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3MDQyMCwianRpIjoiN2NmODE2MTkxYTA3NDM3YmEzNTEzNDhmOWQ5ZGY4ODEiLCJ1c2VyX2lkIjo1fQ.ujcSaaZN9pXAIEGxQYgInzyh6el00g3WvPbE51anKhA	\N	2024-06-01 19:33:40+00	\N	7cf816191a07437ba351348f9d9df881
273	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3MDQ3MiwianRpIjoiMTAzNzNjMmNmZWQ2NGY5MmFhY2MxZTZjM2NiOTcwNzEiLCJ1c2VyX2lkIjo1fQ.aeERe5ryY6Lz5n6W6WINcJGwoSzFZmBINOGDKfRAaw4	2024-05-25 19:34:32.265741+00	2024-06-01 19:34:32+00	5	10373c2cfed64f92aacc1e6c3cb97071
274	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3MDg5MCwianRpIjoiM2YyYjk1NzI5YmJhNGQxNDllOWY4NzEzODEyMWVmOTAiLCJ1c2VyX2lkIjo1fQ.SltbCAZvZ9VUJZMUzvAfu3MeT0s5E00mHw4a031232U	2024-05-25 19:41:30.239368+00	2024-06-01 19:41:30+00	5	3f2b95729bba4d149e9f87138121ef90
275	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3MDg5MCwianRpIjoiNTlkZTU3NGQ1ZWExNDE4YmI5NGU0Y2RhY2MzYmYxZjciLCJ1c2VyX2lkIjo1fQ.W5Ezbv61S4VnSgfaPIJnRHSHbKAEK1xKr9yJQMMy3cA	\N	2024-06-01 19:41:30+00	\N	59de574d5ea1418bb94e4cdacc3bf1f7
276	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3MTI0NCwianRpIjoiNWE3NTczMzZiMjNjNDdkZGI5ODg0ZTM0ZTY2Mzc4OGUiLCJ1c2VyX2lkIjo1fQ.d7cvr8-6Fw-Pe9nkzcYkZCV1tiwASJ79CsXsuBBjsvI	\N	2024-06-01 19:47:24+00	\N	5a757336b23c47ddb9884e34e663788e
277	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3MTUyMywianRpIjoiZDQzNDJlZWRmNDEzNDE2NzgzZWM1ZGUzNDE0NmJiNDUiLCJ1c2VyX2lkIjo1fQ.FDIBatW0V6bDXSvxYl-FLLP-pyOGC4LNfufkmroVoJA	2024-05-25 19:52:03.602398+00	2024-06-01 19:52:03+00	5	d4342eedf413416783ec5de34146bb45
278	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3MTUyMywianRpIjoiYzY4ZDkzNzU0ZDdhNDY3N2I1YzM1M2EzMjU0OWUwMDAiLCJ1c2VyX2lkIjo1fQ.isBue_SO5Xo116l7DHGMyUgijZM1jLHeZfuvDl3LDMY	\N	2024-06-01 19:52:03+00	\N	c68d93754d7a4677b5c353a32549e000
279	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3MjI3NSwianRpIjoiZTg5ZTY3YjQ4YTNjNDhhYjg2OWM4MWUyYTZiYTlkOGYiLCJ1c2VyX2lkIjo1fQ.dkwsJmL2DgQvCDkP5CuYDuPQ8CIk6Da-etFWHYMYiyg	\N	2024-06-01 20:04:35+00	\N	e89e67b48a3c48ab869c81e2a6ba9d8f
280	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3Mjc4OSwianRpIjoiNDI5YWRiYWE0N2JmNGZhNmEwOWU0MzJmYTc1YzJjYTIiLCJ1c2VyX2lkIjo1fQ.0EtxhyhO8XtsRey17ItQdYcOXHqJX5dbptugJh-3Oqs	\N	2024-06-01 20:13:09+00	\N	429adbaa47bf4fa6a09e432fa75c2ca2
281	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3MzE2MCwianRpIjoiMTBiNWFjYjE5MzFjNDAxODgxMTBmZmJiNDgxMjlhMzgiLCJ1c2VyX2lkIjo1fQ.GWz5qYRM-0OFOLloUFkjcByzu-UIDSqOFsIrfZOyfNM	\N	2024-06-01 20:19:20+00	\N	10b5acb1931c40188110ffbb48129a38
282	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3MzU0NCwianRpIjoiYTcxY2Q2ZDZjNTE4NDJkMThmY2I1NTdlOTI5MGE1NTEiLCJ1c2VyX2lkIjo1fQ.RA6tUJznCAb0EY3GoHchYEKKGaIp9GGhAChNzqUX0Do	\N	2024-06-01 20:25:44+00	\N	a71cd6d6c51842d18fcb557e9290a551
283	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3MzU0NywianRpIjoiZGQ3ZmM1NWRjNDQ5NGE1OTlmNDhiNTBjNTdiMGRhMWIiLCJ1c2VyX2lkIjo1fQ.jmjuVypBmH5unWV8fLUovrNVVdx1JY93sde_H8Y6LSs	2024-05-25 20:25:47.956427+00	2024-06-01 20:25:47+00	5	dd7fc55dc4494a599f48b50c57b0da1b
284	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3MzU0NywianRpIjoiYzQwN2VlMDhkZmZmNDE3YTg4ODQxYzVmYWRjZTRlMWQiLCJ1c2VyX2lkIjo1fQ.jiVoZp5r4U0U5di77_H2Y6EwiPhy76LNL91k9FI7nWY	\N	2024-06-01 20:25:47+00	\N	c407ee08dfff417a88841c5fadce4e1d
285	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3Njg0OSwianRpIjoiOTg2ZjQxNDc5Y2ZiNDllNzg0M2M0ZDJiM2UyNzBkMTUiLCJ1c2VyX2lkIjo1fQ.pM53Tn-IKABkHvH87xxEstTTOrmFrFU9Lp3SrOwOV5A	\N	2024-06-01 21:20:49+00	\N	986f41479cfb49e7843c4d2b3e270d15
286	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3NzMxOCwianRpIjoiNzM2ZDE2M2Q1OTA2NDNiZTk3OWRjYTBmMzI5MmVhM2UiLCJ1c2VyX2lkIjo1fQ.bgYQO0PQ3yd1xKzLXwBgbQdvFnxtC6InCl5o6zeIA4I	\N	2024-06-01 21:28:38+00	\N	736d163d590643be979dca0f3292ea3e
287	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3NzY4MSwianRpIjoiNTM1ZDNmYmQ1OTAwNGZiY2JjZmYyYzRmMmE1NmUzZGEiLCJ1c2VyX2lkIjo1fQ.yhd_9Gb5tb27_ZYiI5XaWj5rl4Dt0r2VZivLEXuNbtA	\N	2024-06-01 21:34:41+00	\N	535d3fbd59004fbcbcff2c4f2a56e3da
288	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3ODg5OSwianRpIjoiZGRlYWY3NjY0YjM1NDMzOGEyMGM5NWY2MGJmMmYyMzMiLCJ1c2VyX2lkIjo1fQ.ssxzSkfv0fJ8pqKNumcdvbKC1noR0GqJn1PPpaLXexY	\N	2024-06-01 21:54:59+00	\N	ddeaf7664b354338a20c95f60bf2f233
289	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3OTIyMywianRpIjoiODhlNDZhMDU2YjA5NDJmMjlhOGI5MTg0Yzg0ODFiZDYiLCJ1c2VyX2lkIjo1fQ._Nxauvq_aP7vPiP3Y_T-6JB1Pj3USxVq6Qki_eQ2Rkk	\N	2024-06-01 22:00:23+00	\N	88e46a056b0942f29a8b9184c8481bd6
290	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3OTY1MCwianRpIjoiMTMzNjczM2Y0YzU0NDAwZjlhNzMwYTkwYWE3ZTEyYzEiLCJ1c2VyX2lkIjo1fQ.bq8R717goeCFr3g3w8lRe7_F3eE48Nyrkaj-xjGsYwU	\N	2024-06-01 22:07:30+00	\N	1336733f4c54400f9a730a90aa7e12c1
291	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI3OTk3NiwianRpIjoiNzQ3M2NlZTVkZmI4NGNjMTliYzA0ZWNlNTMyZjM2ZDMiLCJ1c2VyX2lkIjo1fQ.lnRdgKDf43yPolUM7WloyZSak_S4zSZJSAtu6tbpRoM	\N	2024-06-01 22:12:56+00	\N	7473cee5dfb84cc19bc04ece532f36d3
292	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4MDQ1OCwianRpIjoiM2VjYTcyZGVhNjQwNDRlYzhiZWVkMDRiN2IxYTE4ZDQiLCJ1c2VyX2lkIjo1fQ.vVN4Ec_rJl9XR3jnpbFXOQfWZZUczxWOzSdr7eoCsKs	\N	2024-06-01 22:20:58+00	\N	3eca72dea64044ec8beed04b7b1a18d4
293	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4MDgyMCwianRpIjoiZWYzMDUwY2Q1YWI0NGQ3MGIwNDg4OWI5ZDBjZDRmNzAiLCJ1c2VyX2lkIjo1fQ.Gz2mWgftFUjijK039ZWEtE-moy6ega8UxcHwT9i3cSI	\N	2024-06-01 22:27:00+00	\N	ef3050cd5ab44d70b04889b9d0cd4f70
294	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4MjMyMSwianRpIjoiZGNiNzNkZjgzMmU0NDY3Zjg1MTkwOGNiNjZkZWNlY2EiLCJ1c2VyX2lkIjo1fQ.4DbwyUcBlSGFMe11VEQU3bN7BjyFdD-EmmAq7t3riH4	\N	2024-06-01 22:52:01+00	\N	dcb73df832e4467f851908cb66dececa
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user (id, password, last_login, is_superuser, username, email, first_name, last_name, avatar, title, created_at, is_staff, is_verified, is_active) FROM stdin;
1	pbkdf2_sha256$260000$rb6cHJXeH5YttCIXgJfNss$301ZbnSOXdBVfBGAny+UmdOYCdvboXYN+/1pggLqBHU=	2022-10-11 19:04:13.228449+00	t	Rachel Peters	darkbear0112@gmail.com	Rachel	Peters	avatars/photo_2021-12-16_12-54-40_lCtaA7R.jpg		2022-10-10 12:24:16.97445+00	t	t	t
2	pbkdf2_sha256$260000$78fZIsnOPe1ikzaYQV7e0Z$Aw1h5nIzOpjB0BBcNUqHEWAk/wHb7hkZsjkxQmaeghM=	\N	f	simba	simba@gmail.com	Simba	GOO	avatars/neft_1.PNG	HEHEE	2022-10-11 00:19:31.492226+00	t	t	t
3	pbkdf2_sha256$260000$go8zXx6KMGV0urmueMCWjE$c3skDfSJ2Fe6n1gGqo7CvBUO0tCNwRIltocfh1QXwaI=	\N	f	Egor	egormikhail0112@gmail.com	Egor	Mikhail	avatars/default.png		2022-10-13 11:37:36.652715+00	f	f	t
5	pbkdf2_sha256$260000$SkoUphJUb5FYkXemiFyF8c$/hpsPDmaVv+eK1d91LiAXlMtDB8yJrVgHw5zMwUPnc4=	2024-05-25 22:27:39.698178+00	t	zeynep	zeynep@gmail.com	zeynep	sengul	avatars/default.png		2024-05-22 20:02:47.773295+00	t	t	t
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 2, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 57, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 63, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 43, true);


--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_summernote_attachment_id_seq', 1, false);


--
-- Name: parkingarea_parkingarea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parkingarea_parkingarea_id_seq', 12, true);


--
-- Name: parkingarea_parkingarea_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parkingarea_parkingarea_tags_id_seq', 1, false);


--
-- Name: parkingarea_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parkingarea_tag_id_seq', 1, false);


--
-- Name: posts_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_post_id_seq', 14, true);


--
-- Name: posts_post_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_post_tags_id_seq', 15, true);


--
-- Name: posts_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_tag_id_seq', 10, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 291, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 294, true);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 2, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 5, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 2, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_summernote_attachment django_summernote_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_summernote_attachment
    ADD CONSTRAINT django_summernote_attachment_pkey PRIMARY KEY (id);


--
-- Name: parkingarea_parkingarea_tags parkingarea_parkingarea__parkingarea_id_tag_id_55378a78_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_parkingarea_tags
    ADD CONSTRAINT parkingarea_parkingarea__parkingarea_id_tag_id_55378a78_uniq UNIQUE (parkingarea_id, tag_id);


--
-- Name: parkingarea_parkingarea parkingarea_parkingarea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_parkingarea
    ADD CONSTRAINT parkingarea_parkingarea_pkey PRIMARY KEY (id);


--
-- Name: parkingarea_parkingarea parkingarea_parkingarea_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_parkingarea
    ADD CONSTRAINT parkingarea_parkingarea_slug_key UNIQUE (slug);


--
-- Name: parkingarea_parkingarea_tags parkingarea_parkingarea_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_parkingarea_tags
    ADD CONSTRAINT parkingarea_parkingarea_tags_pkey PRIMARY KEY (id);


--
-- Name: parkingarea_parkingarea parkingarea_parkingarea_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_parkingarea
    ADD CONSTRAINT parkingarea_parkingarea_title_key UNIQUE (title);


--
-- Name: parkingarea_tag parkingarea_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_tag
    ADD CONSTRAINT parkingarea_tag_name_key UNIQUE (name);


--
-- Name: parkingarea_tag parkingarea_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_tag
    ADD CONSTRAINT parkingarea_tag_pkey PRIMARY KEY (id);


--
-- Name: posts_post posts_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_pkey PRIMARY KEY (id);


--
-- Name: posts_post posts_post_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_slug_key UNIQUE (slug);


--
-- Name: posts_post_tags posts_post_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_post_tags
    ADD CONSTRAINT posts_post_tags_pkey PRIMARY KEY (id);


--
-- Name: posts_post_tags posts_post_tags_post_id_tag_id_9b9d69ec_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_post_tags
    ADD CONSTRAINT posts_post_tags_post_id_tag_id_9b9d69ec_uniq UNIQUE (post_id, tag_id);


--
-- Name: posts_post posts_post_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_title_key UNIQUE (title);


--
-- Name: posts_tag posts_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_tag
    ADD CONSTRAINT posts_tag_name_key UNIQUE (name);


--
-- Name: posts_tag posts_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_tag
    ADD CONSTRAINT posts_tag_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: users_user users_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: parkingarea_parkingarea_author_id_458e446b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parkingarea_parkingarea_author_id_458e446b ON public.parkingarea_parkingarea USING btree (author_id);


--
-- Name: parkingarea_parkingarea_slug_89e8be4c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parkingarea_parkingarea_slug_89e8be4c_like ON public.parkingarea_parkingarea USING btree (slug varchar_pattern_ops);


--
-- Name: parkingarea_parkingarea_tags_parkingarea_id_d8f8f534; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parkingarea_parkingarea_tags_parkingarea_id_d8f8f534 ON public.parkingarea_parkingarea_tags USING btree (parkingarea_id);


--
-- Name: parkingarea_parkingarea_tags_tag_id_40009af1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parkingarea_parkingarea_tags_tag_id_40009af1 ON public.parkingarea_parkingarea_tags USING btree (tag_id);


--
-- Name: parkingarea_parkingarea_title_0b55e0db_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parkingarea_parkingarea_title_0b55e0db_like ON public.parkingarea_parkingarea USING btree (title varchar_pattern_ops);


--
-- Name: parkingarea_tag_name_72577bb1_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parkingarea_tag_name_72577bb1_like ON public.parkingarea_tag USING btree (name varchar_pattern_ops);


--
-- Name: posts_post_author_id_fe5487bf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_post_author_id_fe5487bf ON public.posts_post USING btree (author_id);


--
-- Name: posts_post_slug_6e9097e5_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_post_slug_6e9097e5_like ON public.posts_post USING btree (slug varchar_pattern_ops);


--
-- Name: posts_post_tags_post_id_1f164920; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_post_tags_post_id_1f164920 ON public.posts_post_tags USING btree (post_id);


--
-- Name: posts_post_tags_tag_id_0743d52e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_post_tags_tag_id_0743d52e ON public.posts_post_tags USING btree (tag_id);


--
-- Name: posts_post_title_32726515_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_post_title_32726515_like ON public.posts_post USING btree (title varchar_pattern_ops);


--
-- Name: posts_tag_name_70364ab3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_tag_name_70364ab3_like ON public.posts_tag USING btree (name varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: users_user_email_243f6e77_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: users_user_username_06e46fe6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: parkingarea_parkingarea_tags parkingarea_parkinga_parkingarea_id_d8f8f534_fk_parkingar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_parkingarea_tags
    ADD CONSTRAINT parkingarea_parkinga_parkingarea_id_d8f8f534_fk_parkingar FOREIGN KEY (parkingarea_id) REFERENCES public.parkingarea_parkingarea(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: parkingarea_parkingarea_tags parkingarea_parkinga_tag_id_40009af1_fk_parkingar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_parkingarea_tags
    ADD CONSTRAINT parkingarea_parkinga_tag_id_40009af1_fk_parkingar FOREIGN KEY (tag_id) REFERENCES public.parkingarea_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: parkingarea_parkingarea parkingarea_parkingarea_author_id_458e446b_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_parkingarea
    ADD CONSTRAINT parkingarea_parkingarea_author_id_458e446b_fk_users_user_id FOREIGN KEY (author_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_post posts_post_author_id_fe5487bf_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_author_id_fe5487bf_fk_users_user_id FOREIGN KEY (author_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_post_tags posts_post_tags_post_id_1f164920_fk_posts_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_post_tags
    ADD CONSTRAINT posts_post_tags_post_id_1f164920_fk_posts_post_id FOREIGN KEY (post_id) REFERENCES public.posts_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_post_tags posts_post_tags_tag_id_0743d52e_fk_posts_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts_post_tags
    ADD CONSTRAINT posts_post_tags_tag_id_0743d52e_fk_posts_tag_id FOREIGN KEY (tag_id) REFERENCES public.posts_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_users_use; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_users_use FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

