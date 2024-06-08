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
-- Name: parkingarea_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parkingarea_comment (
    id bigint NOT NULL,
    text text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    parking_area_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.parkingarea_comment OWNER TO postgres;

--
-- Name: parkingarea_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parkingarea_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.parkingarea_comment_id_seq OWNER TO postgres;

--
-- Name: parkingarea_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parkingarea_comment_id_seq OWNED BY public.parkingarea_comment.id;


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
    rental_start timestamp with time zone,
    rental_end timestamp with time zone,
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
    thumbnail character varying(100),
    description text,
    created_at timestamp(6) with time zone NOT NULL,
    edited_at timestamp(6) with time zone NOT NULL,
    is_public boolean NOT NULL,
    author_id bigint NOT NULL,
    rental_start timestamp(6) with time zone,
    rental_end timestamp(6) with time zone,
    available boolean NOT NULL,
    price integer DEFAULT 0 NOT NULL,
    read_time integer
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
-- Name: parkingarea_comment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_comment ALTER COLUMN id SET DEFAULT nextval('public.parkingarea_comment_id_seq'::regclass);


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
58	Can add comment	16	add_comment
59	Can change comment	16	change_comment
60	Can delete comment	16	delete_comment
61	Can view comment	16	view_comment
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
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
64	2024-05-25 23:17:07.966611+00	1	1. elektrik	1	[{"added": {}}]	14	5
65	2024-05-26 19:54:26.884473+00	17	17. drgsrg - zeynep - zeynep@gmail.com	3		15	5
66	2024-05-26 19:54:26.888487+00	16	16. wer - zeynep - zeynep@gmail.com	3		15	5
67	2024-05-26 19:54:26.890508+00	15	15. res - zeynep - zeynep@gmail.com	3		15	5
68	2024-05-26 19:54:26.892532+00	14	14. test - zeynep - zeynep@gmail.com	3		15	5
69	2024-05-26 19:54:26.895521+00	13	13. wefw - zeynep - zeynep@gmail.com	3		15	5
70	2024-05-26 19:54:26.897535+00	12	12. dfvd - zeynep - zeynep@gmail.com	3		15	5
71	2024-05-26 19:54:26.900531+00	11	11. wehefbwjre - zeynep - zeynep@gmail.com	3		15	5
72	2024-05-26 19:54:26.902539+00	9	9. rtehrthr - zeynep - zeynep@gmail.com	3		15	5
73	2024-05-26 19:54:56.091321+00	18	18. test3 - zeynep - zeynep@gmail.com	3		10	5
74	2024-05-26 19:54:56.09333+00	17	17. test2 - zeynep - zeynep@gmail.com	3		10	5
75	2024-05-26 19:54:56.095329+00	16	16. test - zeynep - zeynep@gmail.com	3		10	5
76	2024-05-26 19:54:56.098333+00	15	15. wkejw - zeynep - zeynep@gmail.com	3		10	5
77	2024-05-26 19:54:56.101338+00	14	14. RONİN KARAVAN - zeynep - zeynep@gmail.com	3		10	5
78	2024-05-26 19:54:56.103339+00	13	13. KULİS KARAVAN - zeynep - zeynep@gmail.com	3		10	5
79	2024-05-26 19:54:56.106331+00	2	2. blockchain - Rachel Peters - darkbear0112@gmail.com	3		10	5
80	2024-05-26 19:55:18.191753+00	3	Egor - egormikhail0112@gmail.com	3		9	5
81	2024-05-26 19:55:18.195763+00	1	Rachel Peters - darkbear0112@gmail.com	3		9	5
82	2024-05-26 19:55:18.198757+00	2	simba - simba@gmail.com	3		9	5
83	2024-05-26 20:40:40.570959+00	19	19. test - zeynep - zeynep@gmail.com	3		10	5
84	2024-05-28 13:38:52.966383+00	24	24. ajkbdka - zeynep - zeynep@gmail.com	3		15	5
85	2024-06-06 17:10:15.197247+00	1	Comment by zeynep - zeynep@gmail.com on 22. test5 - zeynep - zeynep@gmail.com	1	[{"added": {}}]	16	5
86	2024-06-08 11:40:29.104647+00	22	22. test5 - zeynep - zeynep@gmail.com	2	[{"changed": {"fields": ["Tags", "Rental start", "Rental end"]}}]	15	5
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
16	parkingarea	comment
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
44	posts	0003_auto_20240526_0344	2024-05-26 00:45:21.014047+00
45	posts	0004_auto_20240526_0350	2024-05-26 00:50:59.101711+00
78	posts	0005_auto_20240526_1801	2024-05-26 15:01:30.277407+00
79	posts	0006_remove_post_read_time	2024-05-26 16:03:08.887778+00
80	posts	0007_post_read_time	2024-05-26 16:13:42.798185+00
89	parkingarea	0002_comment	2024-06-08 16:07:48.828598+00
90	parkingarea	0003_delete_comment	2024-06-08 16:07:48.836177+00
91	parkingarea	0004_comment	2024-06-08 16:07:48.880416+00
92	parkingarea	0005_delete_comment	2024-06-08 16:07:48.888417+00
93	parkingarea	0006_comment	2024-06-08 16:07:48.93229+00
94	parkingarea	0007_alter_comment_user	2024-06-08 16:07:48.949291+00
95	parkingarea	0008_delete_comment	2024-06-08 16:07:48.95829+00
96	parkingarea	0009_comment	2024-06-08 16:07:48.997733+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
5ntpc8knzjfpg7e4z0cckxu5cgnkci98	.eJxVjMEOwiAQRP-FsyEsW0Lr0bvfQHZhkaqhSWlPjf9um_Sgmdu8N7OpQOtSwtpkDmNSV-XU5bdjii-pB0hPqo9Jx6ku88j6UPRJm75PSd630_07KNTKvo6DzeB6I5j2oDWZrfGI3pCgzwQ8oCUARxhFHDFA10nPPnryQk59vtY_N-I:1sAwZb:7XnVmO65O4A2AuKohU1X8kjOJ-yZ0F5Z92luEAR8yks	2024-06-08 18:56:55.247344+00
2a91640k7g5wpc96xdg5fuleiab3ofcj	.eJxVjMEOwiAQRP-FsyEsW0Lr0bvfQHZhkaqhSWlPjf9um_Sgmdu8N7OpQOtSwtpkDmNSV-XU5bdjii-pB0hPqo9Jx6ku88j6UPRJm75PSd630_07KNTKvo6DzeB6I5j2oDWZrfGI3pCgzwQ8oCUARxhFHDFA10nPPnryQk59vtY_N-I:1sAzrX:2GHTvSIuJCdPiQBLLu0JKwP0kSiePgu54YJADuZwF5A	2024-06-08 22:27:39.70118+00
mgrei0caz0messn0o6n4sethzlz1z3h9	.eJxVjMEOwiAQRP-FsyEsW0Lr0bvfQHZhkaqhSWlPjf9um_Sgmdu8N7OpQOtSwtpkDmNSV-XU5bdjii-pB0hPqo9Jx6ku88j6UPRJm75PSd630_07KNTKvo6DzeB6I5j2oDWZrfGI3pCgzwQ8oCUARxhFHDFA10nPPnryQk59vtY_N-I:1sB0cw:54iUhI7rwg6-er3OVI0oha0CIyENxVjF3juZ8Cv-UiM	2024-06-08 23:16:38.857358+00
\.


--
-- Data for Name: django_summernote_attachment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_summernote_attachment (id, name, file, uploaded) FROM stdin;
\.


--
-- Data for Name: parkingarea_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parkingarea_comment (id, text, created_at, parking_area_id, user_id) FROM stdin;
3	reyd	2024-06-08 16:45:44.31609+00	22	5
4	t678gytug	2024-06-08 16:47:54.911378+00	22	5
5	r5tgfufhj	2024-06-08 16:48:05.844149+00	22	5
6	w3rswer	2024-06-08 16:48:12.071307+00	22	5
7	rtyrfturftydrytd	2024-06-08 16:48:23.636254+00	22	5
8	edrtsedt	2024-06-08 16:48:25.633853+00	22	5
9	setsetd	2024-06-08 16:48:27.220778+00	22	5
10	setdrt	2024-06-08 16:48:28.979618+00	22	5
\.


--
-- Data for Name: parkingarea_parkingarea; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parkingarea_parkingarea (id, title, slug, thumbnail, description, created_at, edited_at, is_public, rental_start, rental_end, price, available, contact, address, author_id) FROM stdin;
18	test8	test8	thumbnails/iveco-karavan-phonix_2_ZVcDyMR.jpg	test8	2024-05-27 18:44:25.463872+00	2024-05-27 18:44:25.463872+00	t	\N	\N	18781	t	05458962312	kjskd	5
19	ygjh	bnvm	thumbnails/masuk-camping-cesmekoy-3-yeni-12_kjHa4vO.png	lkkl	2024-05-27 18:47:37.123962+00	2024-05-27 18:47:37.123962+00	t	\N	\N	513	t	2465	hjvhj	5
20	aaaa	aaaa	thumbnails/Car_Camping_h2LLTGB.jpg	aaaa	2024-05-27 18:53:58.15219+00	2024-05-27 18:53:58.15219+00	f	\N	\N	2000	f	aaaa	aaaa	5
21	rrr	rrr	thumbnails/ce9644-whatsapp-image-2021-09-21_rRc7fvd.jpg	rrr	2024-05-27 20:16:15.678805+00	2024-05-27 20:16:15.678805+00	t	\N	\N	2000	t	rrr	41.06475806866103,28.89380526505559	5
23	test0	test0	thumbnails/ce9644-whatsapp-image-2021-09-21_7t0yJWt.jpg	test0	2024-05-28 12:16:19.582688+00	2024-05-28 12:16:19.582688+00	t	\N	\N	35135	t	56435	40.18669536261166,32.872690543450744	5
22	test5	test5	thumbnails/arti-mobil-tuvalet-kulis-karavan_J9BCGOi.jpg	elektrik	2024-05-28 09:53:34.342313+00	2024-06-08 11:40:29.09723+00	t	2024-06-20 17:00:00+00	2024-06-29 18:00:00+00	4562	t	05458795612	40.93648964125649,29.6223141434346	5
\.


--
-- Data for Name: parkingarea_parkingarea_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parkingarea_parkingarea_tags (id, parkingarea_id, tag_id) FROM stdin;
1	22	1
\.


--
-- Data for Name: parkingarea_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parkingarea_tag (id, name) FROM stdin;
1	elektrik
\.


--
-- Data for Name: posts_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts_post (id, title, slug, thumbnail, description, created_at, edited_at, is_public, author_id, rental_start, rental_end, available, price, read_time) FROM stdin;
\.


--
-- Data for Name: posts_post_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts_post_tags (id, post_id, tag_id) FROM stdin;
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
292	2024-05-25 23:39:26.926696+00	295
293	2024-05-25 23:46:48.106147+00	296
294	2024-05-26 00:11:12.121823+00	297
295	2024-05-26 00:11:15.504821+00	298
296	2024-05-26 00:11:30.148271+00	299
297	2024-05-26 00:13:25.352341+00	300
298	2024-05-26 00:18:45.553782+00	301
299	2024-05-26 00:30:56.858738+00	302
300	2024-05-26 00:36:08.037696+00	303
301	2024-05-26 00:41:37.124269+00	304
302	2024-05-26 00:47:04.326345+00	305
303	2024-05-26 14:08:58.370765+00	306
304	2024-05-26 14:14:02.776925+00	307
305	2024-05-26 14:29:58.774842+00	308
306	2024-05-26 14:35:41.124433+00	309
307	2024-05-26 14:41:13.702252+00	310
308	2024-05-26 14:41:15.481763+00	311
309	2024-05-26 14:41:18.259362+00	312
310	2024-05-26 15:01:49.754191+00	313
311	2024-05-26 15:07:04.45593+00	314
312	2024-05-26 15:12:13.17055+00	315
313	2024-05-26 15:18:01.972526+00	316
314	2024-05-26 15:57:59.112399+00	317
315	2024-05-26 16:03:25.629304+00	318
316	2024-05-26 16:07:41.139731+00	319
317	2024-05-26 16:07:44.838291+00	320
318	2024-05-26 16:14:50.813237+00	321
319	2024-05-26 16:53:21.954829+00	322
320	2024-05-26 17:06:31.220157+00	323
321	2024-05-26 19:55:27.266224+00	324
322	2024-05-26 19:55:32.14429+00	325
323	2024-05-26 19:55:43.244038+00	326
324	2024-05-26 20:13:57.973224+00	327
325	2024-05-26 20:28:10.031898+00	328
326	2024-05-26 20:36:37.820749+00	329
327	2024-05-27 14:03:32.134178+00	330
328	2024-05-27 18:43:13.383477+00	331
329	2024-05-27 18:48:36.47977+00	332
330	2024-05-27 18:53:58.116675+00	333
331	2024-05-27 18:59:09.410511+00	334
332	2024-05-27 20:15:52.275167+00	335
333	2024-05-28 09:48:48.109096+00	336
334	2024-05-28 09:54:08.549022+00	337
335	2024-05-28 10:15:28.511159+00	338
336	2024-05-28 10:28:25.39884+00	339
337	2024-05-28 10:35:16.316134+00	340
338	2024-05-28 10:42:57.424162+00	341
339	2024-05-28 11:20:22.270029+00	342
340	2024-05-28 12:07:40.496989+00	343
341	2024-05-28 12:16:19.453534+00	344
342	2024-05-28 12:21:49.388549+00	345
343	2024-05-28 13:18:42.645977+00	346
344	2024-05-28 13:27:11.892651+00	347
345	2024-05-28 13:36:06.270701+00	348
346	2024-05-28 13:43:47.909085+00	349
347	2024-05-28 13:48:57.475453+00	350
348	2024-05-28 13:54:05.048619+00	351
349	2024-05-28 20:31:50.218356+00	352
350	2024-05-29 10:02:23.223351+00	353
351	2024-05-29 10:11:50.6627+00	354
352	2024-05-29 10:26:53.201582+00	355
353	2024-05-29 10:32:38.793468+00	356
354	2024-05-29 10:34:49.375461+00	357
355	2024-05-29 10:35:18.375903+00	358
356	2024-05-29 12:01:54.694475+00	359
357	2024-05-29 12:02:28.251052+00	360
358	2024-05-29 12:02:31.204413+00	361
359	2024-05-29 12:39:21.161869+00	362
360	2024-05-29 12:52:19.002524+00	363
361	2024-05-29 12:58:32.555977+00	364
362	2024-05-29 13:10:42.667954+00	365
363	2024-05-29 13:16:06.58768+00	366
364	2024-05-29 13:21:22.832015+00	367
365	2024-05-29 13:50:59.64167+00	368
366	2024-05-29 14:09:13.973203+00	369
367	2024-05-29 14:16:24.703184+00	370
368	2024-05-29 14:21:32.726122+00	371
369	2024-05-29 14:29:33.529034+00	372
370	2024-05-29 14:34:55.825099+00	373
371	2024-05-29 14:45:07.085642+00	374
372	2024-05-29 19:04:37.61692+00	375
373	2024-05-29 19:13:42.283798+00	376
374	2024-05-29 19:21:11.153837+00	377
375	2024-05-29 19:26:31.770573+00	378
376	2024-05-29 19:33:54.188579+00	379
377	2024-05-29 19:39:12.657852+00	380
378	2024-05-29 19:45:54.013871+00	381
379	2024-05-29 19:51:26.593431+00	382
380	2024-05-29 19:57:36.184861+00	383
381	2024-05-29 20:05:48.584465+00	384
382	2024-05-29 20:10:49.155419+00	385
383	2024-05-29 20:16:55.86412+00	386
384	2024-05-29 20:22:04.826986+00	387
385	2024-05-29 20:30:13.221399+00	388
386	2024-05-29 20:35:31.940734+00	389
387	2024-05-29 20:40:33.822203+00	390
388	2024-05-29 20:45:33.156448+00	391
389	2024-05-29 20:51:13.226183+00	392
390	2024-05-29 20:52:40.557454+00	393
391	2024-05-29 20:52:45.675094+00	394
392	2024-05-30 07:56:03.190565+00	395
393	2024-06-06 15:45:28.353503+00	397
394	2024-06-06 16:59:51.945524+00	398
395	2024-06-06 17:07:36.963577+00	399
396	2024-06-06 17:14:07.355872+00	400
397	2024-06-06 17:31:03.214752+00	401
398	2024-06-06 17:54:56.674747+00	402
399	2024-06-06 18:14:10.619489+00	403
400	2024-06-06 18:19:31.265801+00	404
401	2024-06-06 18:19:39.170996+00	405
402	2024-06-06 18:20:12.993826+00	406
403	2024-06-06 18:28:46.535787+00	407
404	2024-06-06 18:48:39.439782+00	408
405	2024-06-06 18:50:29.837801+00	409
406	2024-06-07 10:12:28.179297+00	410
407	2024-06-07 10:19:32.342373+00	411
408	2024-06-07 11:24:12.195042+00	412
409	2024-06-07 11:29:33.057572+00	413
410	2024-06-07 12:32:50.351929+00	414
411	2024-06-07 12:39:07.712545+00	415
412	2024-06-07 12:57:01.354638+00	416
413	2024-06-07 13:04:18.882275+00	417
414	2024-06-08 09:50:41.463582+00	418
415	2024-06-08 09:57:10.321124+00	419
416	2024-06-08 10:04:29.004431+00	420
417	2024-06-08 11:07:02.496962+00	421
418	2024-06-08 11:39:18.275452+00	422
419	2024-06-08 13:39:10.616657+00	423
420	2024-06-08 13:51:36.417459+00	424
421	2024-06-08 14:02:13.182628+00	425
422	2024-06-08 15:53:39.928939+00	426
423	2024-06-08 15:59:01.252571+00	427
424	2024-06-08 16:23:27.790001+00	428
425	2024-06-08 16:29:02.808822+00	429
426	2024-06-08 16:35:21.404328+00	430
427	2024-06-08 16:45:40.706869+00	431
428	2024-06-08 17:16:30.006941+00	432
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
295	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4NTE2NiwianRpIjoiOTIyMzMwMmVmYjRlNGMyMTg5ODgyNmU5YzE1MGMwMzQiLCJ1c2VyX2lkIjo1fQ.rcdeqfBdng1O88wCI8M-L6WHhlBj-rxPXTf6iNuKfUU	2024-05-25 23:39:26.879695+00	2024-06-01 23:39:26+00	5	9223302efb4e4c21898826e9c150c034
296	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4Mjg3OSwianRpIjoiMzljODJiOGY2MTg0NDVjNzkyNGI0MDU2NWFlZWY0ZTAiLCJ1c2VyX2lkIjo1fQ.Zaqu9k6KZbe_45K-LaBdl-dpjouo8nH_KkDuAd9gB08	\N	2024-06-01 23:01:19+00	\N	39c82b8f618445c7924b40565aeef4e0
297	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4NTYwOCwianRpIjoiZGM4NWE4NTQwNzU4NGZjZDk5MGRmMTI3NGQ4NGFkYTUiLCJ1c2VyX2lkIjo1fQ.QzGxlFpnDHqnGcSh3bEsp5sKE7DaTfpqRugDzWnYVP0	\N	2024-06-01 23:46:48+00	\N	dc85a85407584fcd990df1274d84ada5
298	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4NzA3MiwianRpIjoiYzI1OTU1YmEzYmE2NDA1Yjk1MGNmYTRhZDI3M2QwNjEiLCJ1c2VyX2lkIjo1fQ.ypapc41dhdWxLnM870S9vmij3gA9ewrWxtgeiFT_9JU	\N	2024-06-02 00:11:12+00	\N	c25955ba3ba6405b950cfa4ad273d061
299	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4NzA5MCwianRpIjoiYTU3NDdmNTM4ZmVmNDAyMWExNDEzY2ViNDBiZGM3MTgiLCJ1c2VyX2lkIjo1fQ.3lym2y1hyq2E9a-mfR-rTmDwn9x65LoVcV-tFWcmbiU	2024-05-26 00:11:30.10027+00	2024-06-02 00:11:30+00	5	a5747f538fef4021a1413ceb40bdc718
300	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4NTE2NiwianRpIjoiMDQ4N2E2ZDUwNmFlNDIyZWFkZGEyMzI1NWY2NTQ1MDUiLCJ1c2VyX2lkIjo1fQ.ASh7Uc1s7mP0nf1PLLYvB4qC_7TNFCWCXFL6tjli3Xw	\N	2024-06-01 23:39:26+00	\N	0487a6d506ae422eadda23255f654505
301	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4NzIwNSwianRpIjoiMzIzMjY1NTRlYzI3NDI3YTg0ZTM5NjFlNjI3NmIxZDciLCJ1c2VyX2lkIjo1fQ.k1r1hz8J6-6A-KYnQdOs8f4HQnWHjY4UvhlMP9UQFlU	\N	2024-06-02 00:13:25+00	\N	32326554ec27427a84e3961e6276b1d7
302	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4NzUyNSwianRpIjoiNzRkMjczNDc5NGI4NDJlMThlODBiMDQ3ZTY5YmRlNGEiLCJ1c2VyX2lkIjo1fQ.f1lBCcztlXA18_ZM1iIXhpxdve9ZsEF_k4gSs2FzPdo	\N	2024-06-02 00:18:45+00	\N	74d2734794b842e18e80b047e69bde4a
303	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4ODI1NiwianRpIjoiZTY4YWYwNWZmODAzNDFiZDg0ZGE5ZGQ5YmU0MjY0ZDAiLCJ1c2VyX2lkIjo1fQ.n1_W9h_4t_HkkKY1xGHtEN_Z267RBPCUCrjCyzDShPI	\N	2024-06-02 00:30:56+00	\N	e68af05ff80341bd84da9dd9be4264d0
304	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4NzA5MCwianRpIjoiMTIxMzY1NTdmOTJiNDgzOTk4YzQyYjg1ZGIwNDg0OWUiLCJ1c2VyX2lkIjo1fQ.A74bb8mMIak6KBROqNhiGc3H1uFltHIRK3XPfduThus	\N	2024-06-02 00:11:30+00	\N	12136557f92b483998c42b85db04849e
305	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4ODg5NywianRpIjoiMjVmNjIyODcyYWZlNDRjMTgyYWIzZDEyZDI5Mjc1ZjAiLCJ1c2VyX2lkIjo1fQ.UQKEUkDvfFFJKRy4_FZxZLHRKrSbvUava9dUpeedj1c	\N	2024-06-02 00:41:37+00	\N	25f622872afe44c182ab3d12d29275f0
306	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4ODU2OCwianRpIjoiYTEyZGZiMDZkYmQyNDQ2ZWIwNmY4MGI0ZTI2ZDZkMDIiLCJ1c2VyX2lkIjo1fQ.IErE-zHKytl2TfR_WHvgxjOYwFMFjZ7eyxjjzJYyzrA	\N	2024-06-02 00:36:08+00	\N	a12dfb06dbd2446eb06f80b4e26d6d02
307	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzMzNzMzOCwianRpIjoiZTM5ZDdkNjI0NjkwNGU2ZjlmMDJlMzQ3MDhjNGY4YTAiLCJ1c2VyX2lkIjo1fQ.7r1_FqExIkzCd-MubTSVzSnY4WIGKgK45pe4d6l9Dr0	\N	2024-06-02 14:08:58+00	\N	e39d7d6246904e6f9f02e34708c4f8a0
308	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzI4OTIyNCwianRpIjoiYjgyYWJjYTYwOGEwNDBhMTkxYTFlNjk5YmE3MWVkMWQiLCJ1c2VyX2lkIjo1fQ.ayJPXAADSZ2dQrys1zsHUQUSwNrEhJYA5JT-8W-LoXI	\N	2024-06-02 00:47:04+00	\N	b82abca608a040a191a1e699ba71ed1d
309	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzMzODU5OCwianRpIjoiMGFjMmY4MjU2OTQ3NGE1NThmYTU2OTdmYjM1ZmNjMTciLCJ1c2VyX2lkIjo1fQ.El8iqOPShI7xNGpgNV8PMPCTGTFcan8SyI3043apAdE	\N	2024-06-02 14:29:58+00	\N	0ac2f82569474a558fa5697fb35fcc17
310	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzMzODk0MSwianRpIjoiZmRmMjE1NDg3OGRlNDhhNmEwZDM1MzQyMzEyNmJmNWQiLCJ1c2VyX2lkIjo1fQ.f-Z9_qPtwr115_K1HPL1PVvYmTJ4uT74m5KAwS3_2l4	\N	2024-06-02 14:35:41+00	\N	fdf2154878de48a6a0d353423126bf5d
311	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzMzOTI3MywianRpIjoiZmY2ZjBkZDBkOTVmNGQ0OWJkMjUyZDYxMDM0YWMxNjQiLCJ1c2VyX2lkIjo1fQ.EmTmMIr2HTklP3TzfJK6ShiGhAtX4sCVnwcj86SyPDw	\N	2024-06-02 14:41:13+00	\N	ff6f0dd0d95f4d49bd252d61034ac164
312	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzMzOTI3OCwianRpIjoiMjRjMWJiNzc1YWU2NDA2MThkYzExNWUwMDA1NmU3NWIiLCJ1c2VyX2lkIjo1fQ.-J3u7jz5zHI0VHu6Djhpc1ne_11XXQD6F179Vougyqc	2024-05-26 14:41:18.175107+00	2024-06-02 14:41:18+00	5	24c1bb775ae640618dc115e00056e75b
313	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzMzOTI3OCwianRpIjoiOTZkZDVjM2QxN2E0NDM3ODgyNjY2YWZmZjE0OTU2ODQiLCJ1c2VyX2lkIjo1fQ.mHkWby5nL-c1dGZFS1D9feer6Z7nslBtxlbtTDcl6Z0	\N	2024-06-02 14:41:18+00	\N	96dd5c3d17a4437882666afff1495684
314	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM0MDUwOSwianRpIjoiZmNjNTYwMTVlZjk1NDZiN2ExMDgxOWNkNmY3ZDk2OGMiLCJ1c2VyX2lkIjo1fQ.L1sAvl0ZBJVZduOH-129g8g3iKiB1yD08MjBHCfy0Hc	\N	2024-06-02 15:01:49+00	\N	fcc56015ef9546b7a10819cd6f7d968c
315	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM0MDgyNCwianRpIjoiNDJjNDc1YTA5NjI1NDQzMmE0MjgxOTgwN2Y1MjkxZTgiLCJ1c2VyX2lkIjo1fQ.ZJuoCw1iD1SbVk_vZTMR6Kgw3p9tzV32Uk3o9CR1zKI	\N	2024-06-02 15:07:04+00	\N	42c475a096254432a42819807f5291e8
316	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM0MTEzMywianRpIjoiNDYwOTEyMDUyZGNiNDAyOGJkMDAyMDBiZWQyMmMwOTEiLCJ1c2VyX2lkIjo1fQ.pI0BHi5P7mMJbYOOqn3JmYw9lg9-w42jcno5FtDEexE	\N	2024-06-02 15:12:13+00	\N	460912052dcb4028bd00200bed22c091
317	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM0MTQ4MSwianRpIjoiMmQ1YjkxODc5MDdhNGI0N2EwOWY4NjY0OTQ2NDY3ZjciLCJ1c2VyX2lkIjo1fQ.sB6MWsJGJLLrtgOTX0HMe4f-ePNjG9bZIo0zpNyLbP0	\N	2024-06-02 15:18:01+00	\N	2d5b9187907a4b47a09f8664946467f7
318	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM0Mzg3OSwianRpIjoiZGQ5MmU1ODdjNTNiNDEwYWFhMjUyYTBhOTg5MjMwNTkiLCJ1c2VyX2lkIjo1fQ.-k-5TViEdSI-Ci7ve8C05V673R2nR9Hc9tKqxfQrO_c	\N	2024-06-02 15:57:59+00	\N	dd92e587c53b410aaa252a0a98923059
319	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM0NDIwNSwianRpIjoiMGY3MDhjYWFlNWU5NGQwODk1N2M4ODdmNDUxNjYyMjkiLCJ1c2VyX2lkIjo1fQ.11Y6AW7_2NycPQNEwK50c91WbUoW-eG8g2FXDo99ccU	\N	2024-06-02 16:03:25+00	\N	0f708caae5e94d08957c887f45166229
320	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM0NDQ2NCwianRpIjoiZTYwMGExZmU4MjYxNGU4NDhmYjlmZjdjMTBjNGVmNzkiLCJ1c2VyX2lkIjo1fQ.Ls-XyEJPIzQ3VZ8z36uS7OwtExCf4VsgsVso3PzRUgs	2024-05-26 16:07:44.772123+00	2024-06-02 16:07:44+00	5	e600a1fe82614e848fb9ff7c10c4ef79
321	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM0NDQ2NCwianRpIjoiZDM4NTQzNDhjYmU0NGIyYmJjZWM0ZTBhOGEzNzNkMzMiLCJ1c2VyX2lkIjo1fQ.ZxPBpcVnP2mqINvYx-C4f2MmqYEH2I-l9S4a56pjtHM	\N	2024-06-02 16:07:44+00	\N	d3854348cbe44b2bbcec4e0a8a373d33
322	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM0NDg5MCwianRpIjoiY2MzMTdhZmQ5Mzc5NDU1Nzg1Nzg3MjllNDk1ODI2MDQiLCJ1c2VyX2lkIjo1fQ.-vvjANXn4BHApKKsNZeHIt7PNbp2JNMmhQFnKf4SibA	\N	2024-06-02 16:14:50+00	\N	cc317afd937945578578729e49582604
323	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM0NzIwMSwianRpIjoiNGRhMGFkNjIzM2E2NDhiYThkNDk4ZjA4ZGQ3YTgxMmIiLCJ1c2VyX2lkIjo1fQ.EF2-55oZU0rSl_tdLEwTMlLUK0EjS4v6X1tUAw_7Y9Y	\N	2024-06-02 16:53:21+00	\N	4da0ad6233a648ba8d498f08dd7a812b
324	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM0Nzk5MSwianRpIjoiYjc1YzAwMTMwNjRjNDE1ZGE3ZTBlOThiYjM4YzNmNjQiLCJ1c2VyX2lkIjo1fQ.MGPz3pYqOfBPZJlfiwRZFkNcnd_tbCBb9ljB6OSXOf4	\N	2024-06-02 17:06:31+00	\N	b75c0013064c415da7e0e98bb38c3f64
325	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM1ODEyNywianRpIjoiY2I2NmY0OGY5YjM2NDk4N2JmYmJhNjQyOTc1YzE4NzAiLCJ1c2VyX2lkIjo1fQ.C2JAtaNJZV5ZQsCfQngcpfqOGtmRQupUSyO1HRlxKik	\N	2024-06-02 19:55:27+00	\N	cb66f48f9b364987bfbba642975c1870
326	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM1ODE0MywianRpIjoiZTY1ZGQyZDg2MzU0NDY0Mjk1NWYyMDc1ZDk4N2UzNWMiLCJ1c2VyX2lkIjo1fQ.uGsnSf-7UjBuSVQ8JipZL97ktP-0HQYo2sm3-C9dSyU	2024-05-26 19:55:43.198385+00	2024-06-02 19:55:43+00	5	e65dd2d863544642955f2075d987e35c
327	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM1ODE0MywianRpIjoiNDM2Y2ZlMzI4MDk0NDZjYzk0MmJkYmZmNmYxNzM0MzIiLCJ1c2VyX2lkIjo1fQ._c2RlzaCQG77VRIcwe6hhd5nNQmbxHtbJ1MpiEExP7M	\N	2024-06-02 19:55:43+00	\N	436cfe32809446cc942bdbff6f173432
328	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM1OTIzNywianRpIjoiZWQyYjg3NDk3MDI1NDA0M2FiOThkNzBhMTkzYjBhZjYiLCJ1c2VyX2lkIjo1fQ.uy3rEbZooPPcQjQElekuLMInemFMmV93P5r-jFvScQ8	\N	2024-06-02 20:13:57+00	\N	ed2b874970254043ab98d70a193b0af6
329	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM2MDA4OSwianRpIjoiNzM1YmNiYzNiN2ZjNDFhNjk0MzZiZDc0YjFhYjM1ZjUiLCJ1c2VyX2lkIjo1fQ.M0xklE3WXLLGxVCyb0nYreAcnSs5hyIQPeG-Og3w_FE	\N	2024-06-02 20:28:09+00	\N	735bcbc3b7fc41a69436bd74b1ab35f5
330	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzM2MDU5NywianRpIjoiMDFhMTU4YTM1NmI1NGNjMzhjZWYwNzQ3NzkwNWU2ZTciLCJ1c2VyX2lkIjo1fQ.Yhce7JlgBFFplxYZGcNx3IYCprxfWIgRVMIENBPaqJI	\N	2024-06-02 20:36:37+00	\N	01a158a356b54cc38cef07477905e6e7
331	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzQyMzQxMiwianRpIjoiNDc0OGE4ZmY4NDM4NDBjYTgwODQ4MWE4NWZlNzY4MGEiLCJ1c2VyX2lkIjo1fQ.ckrhEv3IoZY-zZbsF2K8ons7mi8-dqBpsaGxorpyHfA	\N	2024-06-03 14:03:32+00	\N	4748a8ff843840ca808481a85fe7680a
332	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzQ0MDE5MywianRpIjoiMmZlNjU1MTkwYTlmNDkwZWI4MGE2NDBlNmE4MDYwNWQiLCJ1c2VyX2lkIjo1fQ.rdkjOnvbLO9eF49D3XHcBe91_b0C5aUGPJnmIy2xd7M	\N	2024-06-03 18:43:13+00	\N	2fe655190a9f490eb80a640e6a80605d
333	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzQ0MDUxNiwianRpIjoiZTZiMjU0NTFkZTE1NGRlZjk2NTFkMmM1Mzg2YzgwYmIiLCJ1c2VyX2lkIjo1fQ.HNBCgX5-xpFjp5DXLbqk7CMMkXqlL5Tmy0az5oPQ7Cs	\N	2024-06-03 18:48:36+00	\N	e6b25451de154def9651d2c5386c80bb
334	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzQ0MDgzOCwianRpIjoiMGNiNDJjYjkyOWIyNDE3ZDhhMGUwM2Q0ZDIzMWQ2YmMiLCJ1c2VyX2lkIjo1fQ.plgFeJTfWh2Mmg4RCMVMaGfrzHSJ-eCeRYx9QdV2lfM	\N	2024-06-03 18:53:58+00	\N	0cb42cb929b2417d8a0e03d4d231d6bc
335	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzQ0MTE0OSwianRpIjoiYjA3ZGUzMDUxNTlhNGE2NWFlYzk4MDBkOTJiOWM5OTMiLCJ1c2VyX2lkIjo1fQ.I66Xtt5JWgnWwtAQHCtiNRvNa2WiT0_SPY9bGIYdgh8	\N	2024-06-03 18:59:09+00	\N	b07de305159a4a65aec9800d92b9c993
336	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzQ0NTc1MiwianRpIjoiMTBlYmEwZWRlMjI1NGE5NTg1MzNiMjJmYThmZjc3YmEiLCJ1c2VyX2lkIjo1fQ.hBQ-qfTgWt6lR4Q4CHDfRuaYpikZzDv6nmpYkw2IRiU	\N	2024-06-03 20:15:52+00	\N	10eba0ede2254a958533b22fa8ff77ba
337	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzQ5NDUyOCwianRpIjoiZGJhMzkyNmY0ZTUwNGNlMjk5MjIyNzk2NDdhNTljNGMiLCJ1c2VyX2lkIjo1fQ.9Sje4mwBHa9PDZo69g92R5qkRiNxlmEH-1JGOoj9RHg	\N	2024-06-04 09:48:48+00	\N	dba3926f4e504ce29922279647a59c4c
338	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzQ5NDg0OCwianRpIjoiNGYwMjVjNjI0ZDk3NDJkMGExNmI4MmFlMDUzNzhlN2UiLCJ1c2VyX2lkIjo1fQ.MfmIyBJ12Otpt6HThdhLFDmWDrza4W3RDaIUClmlsxI	\N	2024-06-04 09:54:08+00	\N	4f025c624d9742d0a16b82ae05378e7e
339	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzQ5NjEyOCwianRpIjoiMWFjZDgyNDM1YjRkNDk3Y2E0ZDJkZWJlZDEzYTZkYTIiLCJ1c2VyX2lkIjo1fQ.kJEa0Lci84SdoH5mC5OZuw5fjM9myvhizbp9fGZ0Lro	\N	2024-06-04 10:15:28+00	\N	1acd82435b4d497ca4d2debed13a6da2
340	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzQ5NjkwNSwianRpIjoiMWQ5YjNhMTM1MTYxNDMxMmI0ZGVkOWI4Njg0ZTQwOTEiLCJ1c2VyX2lkIjo1fQ.MFNosWjN4x6KiZtqJwQsjkQYGItpRGCknrCWaI0zKdk	\N	2024-06-04 10:28:25+00	\N	1d9b3a1351614312b4ded9b8684e4091
341	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzQ5NzMxNiwianRpIjoiYmM1YWIxNTlhOGZhNDVkYThkZWM2NzAyNzE2NjQyOTgiLCJ1c2VyX2lkIjo1fQ.LJ0YRpDfdBPt95PV3fop7bxPsWvmjD6WtkRramxUE1A	\N	2024-06-04 10:35:16+00	\N	bc5ab159a8fa45da8dec670271664298
342	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzQ5Nzc3NywianRpIjoiNThjY2VjMzgyMWYzNGM1N2E2NTdjZmIzZmExYzM1NmYiLCJ1c2VyX2lkIjo1fQ.wnK3rhPpSow4e1wkFHctB_tbu6sK5yITGpmga0YIh1E	\N	2024-06-04 10:42:57+00	\N	58ccec3821f34c57a657cfb3fa1c356f
343	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzUwMDAyMiwianRpIjoiNGJhN2FlZmVmZDllNGU1MGJlN2ZhNmEwMDUwZDYwMmMiLCJ1c2VyX2lkIjo1fQ.QrrNBdSSV9_swx20KuLChFjDTiHhdMrIiLruMvjUP4A	\N	2024-06-04 11:20:22+00	\N	4ba7aefefd9e4e50be7fa6a0050d602c
344	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzUwMjg2MCwianRpIjoiMjg2OTMwMzQzYWE2NDFiYjk4ZTU4ZDFhODM1M2NhN2QiLCJ1c2VyX2lkIjo1fQ.tXDJ2hVyMU2FIFikgMEmhgkYeF644D0wxrbhxaezchY	\N	2024-06-04 12:07:40+00	\N	286930343aa641bb98e58d1a8353ca7d
345	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzUwMzM3OSwianRpIjoiMDQ5MGUwMTI1M2I5NDgyMmFmMmRmZDg5MjJjZmQ0NzQiLCJ1c2VyX2lkIjo1fQ.SypBYLY4V-3UkTOV1gpfvLStn13QmSjx0fkwBl3uH5w	\N	2024-06-04 12:16:19+00	\N	0490e01253b94822af2dfd8922cfd474
346	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzUwMzcwOSwianRpIjoiZDUwYzhlNDg1OWQ0NGM1N2JjYzhlOWIyOGZmMjlmY2MiLCJ1c2VyX2lkIjo1fQ.qX4ybAboaSlAh96fjDtaXNX4BBxM7_AiK-9gm2pPnuM	\N	2024-06-04 12:21:49+00	\N	d50c8e4859d44c57bcc8e9b28ff29fcc
347	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzUwNzEyMiwianRpIjoiNTk0YTc5OWJmOGMxNDBkZjkyM2FlMDc5NTc4ZTVhNzgiLCJ1c2VyX2lkIjo1fQ.cIJDGDB0nb1t8Ak_KFliEm5bwpNcH0OtscW5c8i8nCI	\N	2024-06-04 13:18:42+00	\N	594a799bf8c140df923ae079578e5a78
348	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzUwNzYzMSwianRpIjoiZmY1MjE2MjRmMDU5NDVmYjg0MWYwYjBhZjcxMGY1OGEiLCJ1c2VyX2lkIjo1fQ.F67TrZQ49zZmfWcYhShtaC_VHNDy578IInV1CE5aOJk	\N	2024-06-04 13:27:11+00	\N	ff521624f05945fb841f0b0af710f58a
349	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzUwODE2NiwianRpIjoiNTcwZGVhYTU4OTRmNDE4MGEyMDNiM2ZkMzRjZjNjY2YiLCJ1c2VyX2lkIjo1fQ.sViWhUl4XRJKAe3MBKznJcMNUpB5MJRC6z6YsOsnHiY	\N	2024-06-04 13:36:06+00	\N	570deaa5894f4180a203b3fd34cf3ccf
350	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzUwODYyNywianRpIjoiMDAxZDQ2OGUzNjFjNDUzMmI5YmQyZmVkZTg3ZmNhZTMiLCJ1c2VyX2lkIjo1fQ.-wHdQJCa6iy6KpJPNDJMnKgz_Q4qt-MbtHxwBiuNmIU	\N	2024-06-04 13:43:47+00	\N	001d468e361c4532b9bd2fede87fcae3
351	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzUwODkzNywianRpIjoiMTlhOGY3MTA3MzM3NDk5OThmNzk2ODhlMmJhYTM1NjgiLCJ1c2VyX2lkIjo1fQ.mjvVdnEyyVXqXjI8i11ToD6Rzwr0kFAD56F6BXUpbnU	\N	2024-06-04 13:48:57+00	\N	19a8f710733749998f79688e2baa3568
352	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzUwOTI0NSwianRpIjoiNDk2Njc2ODFmNjU0NDVjZGE0NWY3MDliMWQ5M2VhM2EiLCJ1c2VyX2lkIjo1fQ.BP_QqLgovj_ybUMbZzqkTD1jxKmoLjIpOzHHWixScnc	\N	2024-06-04 13:54:05+00	\N	49667681f65445cda45f709b1d93ea3a
353	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzUzMzExMCwianRpIjoiYmU3ZjVjYzc2YjJkNGMwMGI4ZTlhMjAyMWIyODM1YWYiLCJ1c2VyX2lkIjo1fQ.GT5bnTw5Kbh6WYQFqQgK0jlpfGIR143LAmjTiIsFTZc	\N	2024-06-04 20:31:50+00	\N	be7f5cc76b2d4c00b8e9a2021b2835af
354	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU4MTc0MywianRpIjoiNjQyNWYxZWViMjQwNDhkZDk2ZWZiZGRjNTdmMDYxNGEiLCJ1c2VyX2lkIjo1fQ.jd1Vy3K6a4y6J_RwWyJqNzEE8C1AY5Gk9UvshyVYGy0	\N	2024-06-05 10:02:23+00	\N	6425f1eeb24048dd96efbddc57f0614a
355	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU4MjMxMCwianRpIjoiYTgzYWQzYWRlMTcwNDBmY2E2ZGI0OTlhZTk0ZTBmZGEiLCJ1c2VyX2lkIjo1fQ.KNj-mFBwFQNX7M44GejFT5sNl26Jwi2Zw6JbJEaOyVs	\N	2024-06-05 10:11:50+00	\N	a83ad3ade17040fca6db499ae94e0fda
356	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU4MzIxMywianRpIjoiODI2MzQ2NTQ4ODM1NGIzOWIxOTExMjc5ZmYxNjUyZjMiLCJ1c2VyX2lkIjo1fQ.mlteJQG5DUbg1nNC0Zl5Lcux44AqV5k2noZNtADUjmI	\N	2024-06-05 10:26:53+00	\N	8263465488354b39b1911279ff1652f3
357	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU4MzU1OCwianRpIjoiNTgxZTZkZmFmODA3NGRiZjk0MTJkZTdjZGQwNDA5ZWYiLCJ1c2VyX2lkIjo1fQ.N3Ld5uaZwUylRsocGdfFiSpXkm0LnkkHlgeFjAKc58o	\N	2024-06-05 10:32:38+00	\N	581e6dfaf8074dbf9412de7cdd0409ef
358	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU4MzcxOCwianRpIjoiOGQyYzBiYzZlN2M5NDBlNmFhODU0NTdhNzgzYzQxZGQiLCJ1c2VyX2lkIjo1fQ.V7SSVqnOedb8oV3oOq-fILp8_TxMIu0m0QaR0UMQ4wk	2024-05-29 10:35:18.324205+00	2024-06-05 10:35:18+00	5	8d2c0bc6e7c940e6aa85457a783c41dd
359	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU4MzcxOCwianRpIjoiNDU4ZThkNDJmYmE0NGQ0ZjhkYjdlYjEyNzRkODc3M2IiLCJ1c2VyX2lkIjo1fQ.oIxkVBovcuyTXUfnWstOSot4UujjXJ_p3eS0L9ScStk	\N	2024-06-05 10:35:18+00	\N	458e8d42fba44d4f8db7eb1274d8773b
360	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU4ODkxNCwianRpIjoiOWY3ZmRmNDlkMDBiNDVlYzgyMGE0ZDU0NTk0YjJjNmQiLCJ1c2VyX2lkIjo1fQ.nwz63LA7iJQ4m7_wRvpGD4mA5ObXkxRJn-dLp5xM7kw	\N	2024-06-05 12:01:54+00	\N	9f7fdf49d00b45ec820a4d54594b2c6d
361	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU4ODk1MSwianRpIjoiZWVkNjVhYmU0NDYyNDYxNGI0ZGVhYjg1NWUwNzAwNTYiLCJ1c2VyX2lkIjo1fQ.T0M66Sa-B8ydz9Xg-nech-R5zoL6TGE0UsZS1cDMpAU	2024-05-29 12:02:31.161428+00	2024-06-05 12:02:31+00	5	eed65abe44624614b4deab855e070056
362	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU4ODk1MSwianRpIjoiN2E3ZTZlZDc0ZGJkNDZiODhkMjQ4MTA1YjlkZTM2N2MiLCJ1c2VyX2lkIjo1fQ.zjOurse-L0cR7XWv7JHZog9_mjwTWk--q-3ON85p7ko	\N	2024-06-05 12:02:31+00	\N	7a7e6ed74dbd46b88d248105b9de367c
363	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU5MTE2MSwianRpIjoiNWUxZmUwOGM4ZjA1NGE0MDllMzI3ZmU5YzU0NDNhMzUiLCJ1c2VyX2lkIjo1fQ.f9sUbzXqGMTBKia5qWc1j1tV4WrSJMzwD4KJwrq3U7w	\N	2024-06-05 12:39:21+00	\N	5e1fe08c8f054a409e327fe9c5443a35
364	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU5MTkzOCwianRpIjoiN2I5N2JmYzcwM2IxNDJjNDgzYTk2YzJlODQ4YWZmYTIiLCJ1c2VyX2lkIjo1fQ.joAYh06dpVKQwKzCMxrg3y6UTX82asHgqoeq_Tz2eZg	\N	2024-06-05 12:52:18+00	\N	7b97bfc703b142c483a96c2e848affa2
365	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU5MjMxMiwianRpIjoiMmJmMmQ4Njg2N2M4NDk0MzliYTI2OTQ0ZjdjNzc2YjkiLCJ1c2VyX2lkIjo1fQ.f1YoqFrS31ForXW3gPoqxiWISrw4A8bFv_Nj-BKPp1M	\N	2024-06-05 12:58:32+00	\N	2bf2d86867c849439ba26944f7c776b9
366	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU5MzA0MiwianRpIjoiMzNkNTIxNmM1OTAxNDY5NGE0MGJhZjI2NDBlMjQ4YTQiLCJ1c2VyX2lkIjo1fQ.TNm0C6_pN-qfFqpj1II4BQdefDtGtCkiUr-j0vIcK2w	\N	2024-06-05 13:10:42+00	\N	33d5216c59014694a40baf2640e248a4
367	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU5MzM2NiwianRpIjoiZmZiMjY3MTlhOTA3NGFlMmE3MzU3M2E4NjcwNTg3YjEiLCJ1c2VyX2lkIjo1fQ.9Fca5emKGdoObNyFHaQz95bAkTAzSmtWUiFWaqJnwOI	\N	2024-06-05 13:16:06+00	\N	ffb26719a9074ae2a73573a8670587b1
368	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU5MzY4MiwianRpIjoiMTdiOTYxMmI0NDgwNDdkOGE0Y2I5ODdhZjg5MjlhZmQiLCJ1c2VyX2lkIjo1fQ.sSGs2t6OhdXMXax85HpggI0mlbBx77MP0_kUuP9845c	\N	2024-06-05 13:21:22+00	\N	17b9612b448047d8a4cb987af8929afd
369	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU5NTQ1OSwianRpIjoiZmFlMjkxOTFhYTFhNDIyN2FjNzhhZGU3ZGM3YjIyNGQiLCJ1c2VyX2lkIjo1fQ.4x0eOFYWSwSvpwdTf6CgkJHgM5Q0t-lbxipSFNBQPfQ	\N	2024-06-05 13:50:59+00	\N	fae29191aa1a4227ac78ade7dc7b224d
370	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU5NjU1MywianRpIjoiNWU4ODJmMDhkNzYzNDc1MWI3MGUxZTQwZWJhMDI4ZDEiLCJ1c2VyX2lkIjo1fQ.yL6DDd2x5BTA7j568RlZSh1Hb90-VgGxMKt0f8lMTZo	\N	2024-06-05 14:09:13+00	\N	5e882f08d7634751b70e1e40eba028d1
371	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU5Njk4NCwianRpIjoiNmJiNzljMjI2ZDI4NDIwZjljZmZlN2NmOTA4MWI2NDQiLCJ1c2VyX2lkIjo1fQ.xhOC0bMsHbS0vL2gN_GyF-Y913ci6TsB4bMTk74p2oc	\N	2024-06-05 14:16:24+00	\N	6bb79c226d28420f9cffe7cf9081b644
372	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU5NzI5MiwianRpIjoiOTYzYmM4YjhlM2Y1NGNjZjllYjQzNjBhYjQyY2FmYTMiLCJ1c2VyX2lkIjo1fQ.qebA6AR2lJkwhQUhgWvE9vt6IB5GJEJ19xFDibAP0kM	\N	2024-06-05 14:21:32+00	\N	963bc8b8e3f54ccf9eb4360ab42cafa3
373	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU5Nzc3MywianRpIjoiMjRkMjNlOWVhZGE1NDAzOWFiZDEwNDY5MjM0ZWU2MmEiLCJ1c2VyX2lkIjo1fQ.PjPB0LRf6Btz_Wowx1JqiwO_H9UX-UorNtl45wT9cak	\N	2024-06-05 14:29:33+00	\N	24d23e9eada54039abd10469234ee62a
374	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU5ODA5NSwianRpIjoiMDlmODM0ZGYwYjZmNDY0MjllZjBkZGMxZjQ0MWRkZDYiLCJ1c2VyX2lkIjo1fQ.vFXobE8Fov2ruobyjntaVsryEFURy1IINwEcUKCECYY	\N	2024-06-05 14:34:55+00	\N	09f834df0b6f46429ef0ddc1f441ddd6
375	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzU5ODcwNywianRpIjoiNjViNmY1YjMzOThjNDQ5ZDhjMGUxZmZlNmJiYThlYjMiLCJ1c2VyX2lkIjo1fQ.3aEuE5LtfhrAfbU7ybbtjosa5DsCL3LyyKjLh0Wk47M	\N	2024-06-05 14:45:07+00	\N	65b6f5b3398c449d8c0e1ffe6bba8eb3
376	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxNDI3NywianRpIjoiY2MzMWIyNzQ0ZDQ3NDA1ZjhiMjgxMDNiNmU2M2E4OGUiLCJ1c2VyX2lkIjo1fQ.F_yNs8fDhSD7jDm_eZdnbPu1BKKQzjXp-mtG7g1m2jM	\N	2024-06-05 19:04:37+00	\N	cc31b2744d47405f8b28103b6e63a88e
377	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxNDgyMiwianRpIjoiMmQzYTIwYWJiMjRiNDE2ZWJlZjMyY2Y4YTczMzk0YTkiLCJ1c2VyX2lkIjo1fQ.yVdkH6aS6RoOBdTfo6cdBLw1itPm--Zcb2L2bcRDfc8	\N	2024-06-05 19:13:42+00	\N	2d3a20abb24b416ebef32cf8a73394a9
378	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxNTI3MSwianRpIjoiMzAzMTFkZTc3NWU1NDA5ZmIyOTNhZmRiOWE5YTA1NDMiLCJ1c2VyX2lkIjo1fQ.hxKrJ4k_itS3t4N4e9n3nGTlpklkISE2EZQcr9_qpD0	\N	2024-06-05 19:21:11+00	\N	30311de775e5409fb293afdb9a9a0543
379	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxNTU5MSwianRpIjoiZGExYzRhY2IxNjIxNDViMDkxZWIyMWEyMWU3MmY5MTEiLCJ1c2VyX2lkIjo1fQ.ovKEprxHs3qiu3IgLxtboCNLAswzVA0LqXB-zqv-bFc	\N	2024-06-05 19:26:31+00	\N	da1c4acb162145b091eb21a21e72f911
380	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxNjAzNCwianRpIjoiZDZjYTc0OGI1YWJmNGY4M2E4NjVjOWYwYTJhY2RmMmQiLCJ1c2VyX2lkIjo1fQ.GtD7sx-C6ZOyPNJszIHA2mcrh9TeitPVM-Jeg5rF6Ks	\N	2024-06-05 19:33:54+00	\N	d6ca748b5abf4f83a865c9f0a2acdf2d
381	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxNjM1MiwianRpIjoiOTgwZWY3ODM0MDBkNGZjMWE1ZGIyMmQzNTE5YWMwOGQiLCJ1c2VyX2lkIjo1fQ.OG6rn6tTgxqb67xFkfrV_iyQayyTZxzYFASA1ylEegk	\N	2024-06-05 19:39:12+00	\N	980ef783400d4fc1a5db22d3519ac08d
382	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxNjc1MywianRpIjoiMGUzOGVmY2VkMDAzNDIzY2EyODliOWFjZDZmZTI1YTMiLCJ1c2VyX2lkIjo1fQ.DEXfDqvog4nDwTqvM3-x6rWd5V94VNXKAVNz8HvagcI	\N	2024-06-05 19:45:53+00	\N	0e38efced003423ca289b9acd6fe25a3
383	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxNzA4NiwianRpIjoiYWIzNWE2YzczYzUwNDI0MDg3OThiZjAwNjc5OThjMGEiLCJ1c2VyX2lkIjo1fQ.xAon70h9fORhp33gIyUNmN8b4VNwERUWaAEkvK_GByY	\N	2024-06-05 19:51:26+00	\N	ab35a6c73c5042408798bf0067998c0a
384	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxNzQ1NiwianRpIjoiNTgyYmRlZmI4NGY2NGE0ZDliMTgxODY0OTYxYzU0OGEiLCJ1c2VyX2lkIjo1fQ.JwN5v1FPCl-SD3jnp7XtIyL9yjvXIhx7qTUH_4RzkJ8	\N	2024-06-05 19:57:36+00	\N	582bdefb84f64a4d9b181864961c548a
385	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxNzk0OCwianRpIjoiYTNlM2NjMTFhZWJkNDM3Zjk4M2YxZGU2NmVjNzI5NWMiLCJ1c2VyX2lkIjo1fQ.UBBfjZ5zuaonbcWVlEqcipojVAZ3WiloQOeUtWB2r3s	\N	2024-06-05 20:05:48+00	\N	a3e3cc11aebd437f983f1de66ec7295c
386	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxODI0OSwianRpIjoiMTA0OWRlYjY5NTFkNDRjYmI2ZjFlN2Q0N2QxODNjMGMiLCJ1c2VyX2lkIjo1fQ.QCs6RBqlkIVDBgyaF__5NEg5CJzNh8Cv4DSVP4J6Cpc	\N	2024-06-05 20:10:49+00	\N	1049deb6951d44cbb6f1e7d47d183c0c
387	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxODYxNSwianRpIjoiZTEwM2FmY2U1OWFmNDFmNGI0NTJjZmQ1NTBjNDg4NTQiLCJ1c2VyX2lkIjo1fQ.opwLSUbCJiOf7GsbI4FNd5DNgw397vUwEQS2P8f01C4	\N	2024-06-05 20:16:55+00	\N	e103afce59af41f4b452cfd550c48854
388	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxODkyNCwianRpIjoiZjMwYTNiMGVhZjc4NGIwOWIwNjU3Y2E4YjlmMjYzOGMiLCJ1c2VyX2lkIjo1fQ.5Rmg6nHOyCjACj2BhYwjhzBL9IQbRbRosp4tB1rZhOE	\N	2024-06-05 20:22:04+00	\N	f30a3b0eaf784b09b0657ca8b9f2638c
389	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxOTQxMywianRpIjoiN2ZiYTgzYjBmYmRkNDdjZjhiOWYxOWRiODU0YWU2ODQiLCJ1c2VyX2lkIjo1fQ.m6QOC3v2s8fxIUB_tp7R_al5uqtK_DD0TCXX9TakICs	\N	2024-06-05 20:30:13+00	\N	7fba83b0fbdd47cf8b9f19db854ae684
390	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYxOTczMSwianRpIjoiZGYwN2EwYjg0YmNkNDcwNDk5Y2YwNDU2MjE2NzYwMWYiLCJ1c2VyX2lkIjo1fQ.ZgpmsRM9jsUMtTL8uqT4NIkoXvwZY7v3qMZvCNmFNq8	\N	2024-06-05 20:35:31+00	\N	df07a0b84bcd470499cf04562167601f
391	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYyMDAzMywianRpIjoiZjU2MTc3Yzk2MmQzNGZhNGExYWJiMjZhN2ZiZWM4YmMiLCJ1c2VyX2lkIjo1fQ.c3aVdpePuf3rQI08oSyqXI-0wovk3exw_4sdHKAZWo0	\N	2024-06-05 20:40:33+00	\N	f56177c962d34fa4a1abb26a7fbec8bc
392	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYyMDMzMywianRpIjoiN2IxOGMxZGIwMDUwNDI0ZGE0MzNkZjVhMGZjMTU0ZjMiLCJ1c2VyX2lkIjo1fQ.Yj4hNi_r5A6__8UuOqdKAJc9JDDs-uuj1WjXC_IMmTM	\N	2024-06-05 20:45:33+00	\N	7b18c1db0050424da433df5a0fc154f3
393	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYyMDY3MywianRpIjoiMTJlN2IzODk2OTUxNGVmZGI1ZjRjZDljYmE5NmJiMDMiLCJ1c2VyX2lkIjo1fQ.G8CbYGziw60sSXHuhv8OI2yTKYXQZ35aSjB2zVTvfOM	\N	2024-06-05 20:51:13+00	\N	12e7b38969514efdb5f4cd9cba96bb03
394	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYyMDc2NSwianRpIjoiNmJjMzQ3NmQ5MzVlNDBiNDhlZDNkYjczODc1ZTFhZGIiLCJ1c2VyX2lkIjo1fQ.ElFEqfanFQIoR6DJdEcU0mS_-juD8eBwyppsO2UcW58	2024-05-29 20:52:45.618121+00	2024-06-05 20:52:45+00	5	6bc3476d935e40b48ed3db73875e1adb
395	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxNzYyMDc2NSwianRpIjoiNWYxZTI3MzMxYTAzNDgxMWFkZTU0YjQ2NmNhODY3M2EiLCJ1c2VyX2lkIjo1fQ.R1x3D9TeOvCzhJQNza7o8rhM8yh6CQXYqMoZR2T8wKY	\N	2024-06-05 20:52:45+00	\N	5f1e27331a034811ade54b466ca8673a
396	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODI5MzA1NiwianRpIjoiMDcyOWVhNjJmOGI2NDg1NDljM2FjMmQ0OTE0NDQxNzciLCJ1c2VyX2lkIjo1fQ.TeZT4biXbvzme16FwdlXrWYNMDivY3OzBjsBQXYYYhk	2024-06-06 15:37:36.497325+00	2024-06-13 15:37:36+00	5	0729ea62f8b648549c3ac2d491444177
397	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODI5MzEwOSwianRpIjoiNDkzMjcwOTI0OWY4NGExOWI4ZTY4ZDU5YTlmMjFlNDEiLCJ1c2VyX2lkIjo1fQ.hYiQlmsHJkep6a_KcaZGPo2HfHAmuSQi8DPqMRR4UKo	2024-06-06 15:38:29.297573+00	2024-06-13 15:38:29+00	5	4932709249f84a19b8e68d59a9f21e41
398	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODI5MzUyOCwianRpIjoiYmU5NmY4MWJiOGI3NDYzNzgzOTA0ZTg4YTFmN2RjNDciLCJ1c2VyX2lkIjo1fQ.bwOMiQG2eNV9vl_QNXJBAnhy9iZrBAPe17FuJXdjsmY	\N	2024-06-13 15:45:28+00	\N	be96f81bb8b7463783904e88a1f7dc47
399	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODI5Nzk5MSwianRpIjoiMjA0Zjg2MjdhNzgyNGYxNGI5MDVhMzI2YjY4MzdhY2EiLCJ1c2VyX2lkIjo1fQ.gLQin85YEHCscjgQhoDDKyLdvLf8inucmDUTl9x4iZA	\N	2024-06-13 16:59:51+00	\N	204f8627a7824f14b905a326b6837aca
400	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODI5ODQ1NiwianRpIjoiODQ0MzQxZTQ0OTM2NDkwNmFmMTk1NzkxNTg3NjA1MmYiLCJ1c2VyX2lkIjo1fQ.0-MDJBaSxG3mEhFtGOrL3-15x72fXi4C3MpZcKtx8KI	\N	2024-06-13 17:07:36+00	\N	844341e449364906af1957915876052f
401	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODI5ODg0NywianRpIjoiMTg5OTFkNWQxODA5NDQ4ZWJiZWZkYjg2ZWM1MzJjNzEiLCJ1c2VyX2lkIjo1fQ.QMyy_PZ22gdMJ1eFzISt7isCghCKXEjwVMoHfdAz-j0	\N	2024-06-13 17:14:07+00	\N	18991d5d1809448ebbefdb86ec532c71
402	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODI5OTg2MywianRpIjoiNTAxMmI3ZjI5MzBlNDg4Mzg0NzFhNzI1ZDg5ZWYzM2YiLCJ1c2VyX2lkIjo1fQ.UvB1Kectw_0yygVgKL61miv3cv65cFXki5-rTqICYxo	\N	2024-06-13 17:31:03+00	\N	5012b7f2930e48838471a725d89ef33f
403	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODMwMTI5NiwianRpIjoiZDg3MzMxMTUzNTQxNDc0ZmFhZjk1NWM4ZTk0MWEwNGIiLCJ1c2VyX2lkIjo1fQ.26Kw4fGsYLNOPUzBeIzM9_wlRxrAgN1CMjw7Hhhj720	\N	2024-06-13 17:54:56+00	\N	d87331153541474faaf955c8e941a04b
404	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODMwMjQ1MCwianRpIjoiMjhkYTFlNjJlMjA0NDljMTk4NWYxOTlmMTJkZmNjMTAiLCJ1c2VyX2lkIjo1fQ.HBklLhVEdzmBJNewLpjLDQqKaIfz2TSM4IcFwJVraiQ	\N	2024-06-13 18:14:10+00	\N	28da1e62e20449c1985f199f12dfcc10
405	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODMwMjc3MSwianRpIjoiOTQxYzExNDk3MjhkNDRjOTg3NDUzOGQwNTNkZDZlOGEiLCJ1c2VyX2lkIjo1fQ.u77RGtYTnjfnsG2ze3-mLVn3UAG2uEc8Ffqb5jeJxV0	\N	2024-06-13 18:19:31+00	\N	941c1149728d44c9874538d053dd6e8a
406	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODMwMjgxMiwianRpIjoiNTFhYjdlYjk2ZjIwNDRhZDhjZmVjNmJlYmUzNTdmMzIiLCJ1c2VyX2lkIjo1fQ.U9Wusp6i5atU8psnhcZc59IJpf6HbckXcbKikaYuDQ4	2024-06-06 18:20:12.933858+00	2024-06-13 18:20:12+00	5	51ab7eb96f2044ad8cfec6bebe357f32
407	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODMwMjgxMiwianRpIjoiOTliM2NlYmRmNjI5NGYyZWIzNDJmMzc3MTU4YTBlMTUiLCJ1c2VyX2lkIjo1fQ.liSmlZMrV94kSLOqpXwFQhyAdKvMiibdO7Fwdc-Oj2g	\N	2024-06-13 18:20:12+00	\N	99b3cebdf6294f2eb342f377158a0e15
408	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODMwMzMyNiwianRpIjoiOTM5MzA4N2E0MmE4NDhiZTkxNWMwZjBhZWM1OTllMGQiLCJ1c2VyX2lkIjo1fQ.K4nkzXRGNw0CjEhg2NYiCgPI4JBhXGfVVqBp880adPY	\N	2024-06-13 18:28:46+00	\N	9393087a42a848be915c0f0aec599e0d
409	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODMwNDUxOSwianRpIjoiMjRhMTI5ZTIwZTNiNGRlMDljZWJjOGNiYTI4OTI4ZGYiLCJ1c2VyX2lkIjo1fQ.lTZExdcogbJSfk7aqWlQrB4e1jS_q8YABDFy1EIC94s	\N	2024-06-13 18:48:39+00	\N	24a129e20e3b4de09cebc8cba28928df
410	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODMwNDYyOSwianRpIjoiNmY4MDViMGNmMjkxNDY4M2IxYjYyNWI0ZTc0Y2FkMjYiLCJ1c2VyX2lkIjo1fQ.V6LmZBUbkb20l5qtPyfCiF22f2CjtPjRVMUJAvIyZ80	\N	2024-06-13 18:50:29+00	\N	6f805b0cf2914683b1b625b4e74cad26
411	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODM1OTk0OCwianRpIjoiNTJlN2U0YzZmNDAyNGE4OTliMjRmYTMzYjQ4N2E0Y2YiLCJ1c2VyX2lkIjo1fQ.a5aqkql5WEFQBZ6N8ngNjou7gC4HIZ96pVOnnbJazRw	\N	2024-06-14 10:12:28+00	\N	52e7e4c6f4024a899b24fa33b487a4cf
412	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODM2MDM3MiwianRpIjoiYTNkMDUzYmU5NzM0NDA3OWExNDQ3M2UyZTc0M2YwZWMiLCJ1c2VyX2lkIjo1fQ.XPqEfygXA1hfSXcCgyKpmRFTx_tkhzM27TOBZRz4JM4	\N	2024-06-14 10:19:32+00	\N	a3d053be97344079a14473e2e743f0ec
413	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODM2NDI1MiwianRpIjoiZDY5NDkxN2NkNDg5NDE1OTg4YWNkMjU1NjhiNDM4YWUiLCJ1c2VyX2lkIjo1fQ.dApIVlZfR-mTTSwvtkxpuvVdogPgqNeih2wr1OqBwww	\N	2024-06-14 11:24:12+00	\N	d694917cd489415988acd25568b438ae
414	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODM2NDU3MywianRpIjoiM2ViYmNkODk4MzI1NDk0Y2E1MTI5MDI4MDkwYWM5Y2EiLCJ1c2VyX2lkIjo1fQ.mWqJchS6Ywsz-tytCf9gmyB_cbUU6wf55EMmOHhMzZc	\N	2024-06-14 11:29:33+00	\N	3ebbcd898325494ca5129028090ac9ca
415	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODM2ODM3MCwianRpIjoiNWU0YzcxNzBmNzAxNDVmMThhYzhmY2E4ZWNkYzZhNDEiLCJ1c2VyX2lkIjo1fQ.S1US6jdlqJutrqLtiXgoqcuPwfA8Ks8E_1jt32ptFkA	\N	2024-06-14 12:32:50+00	\N	5e4c7170f70145f18ac8fca8ecdc6a41
416	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODM2ODc0NywianRpIjoiNGFjMzgxNjJhNjJmNDIzZDkxNjhmOWY5ZjFmY2I1NTUiLCJ1c2VyX2lkIjo1fQ.3oiXNZfFGxDP_ctHXzjelMDMo9EvXt_Ik3D2YuLTGxw	\N	2024-06-14 12:39:07+00	\N	4ac38162a62f423d9168f9f9f1fcb555
417	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODM2OTgyMSwianRpIjoiMTc1NDAyZGU1Yzc4NDBmOGJkNDA5YzNkZGVjZmM1YTMiLCJ1c2VyX2lkIjo1fQ.zmSFxEYnw01Sj1z-rg6nlcUhjNw7k6Hj4v5GjfDjfA4	\N	2024-06-14 12:57:01+00	\N	175402de5c7840f8bd409c3ddecfc5a3
418	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODM3MDI1OCwianRpIjoiMzkwNDE0MjhjMGUxNGFkZTkyMDAzNzJiOThhNGM5ODkiLCJ1c2VyX2lkIjo1fQ.eWBOqbDYHZS4ltXYXDgZWXVg6uqJ00sE4SsfbBdzbuU	\N	2024-06-14 13:04:18+00	\N	39041428c0e14ade9200372b98a4c989
419	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0NTA0MSwianRpIjoiMDE0ZjMxYjc0NTZjNDQzNzgzY2UyMDFhNzQwMjNmNWUiLCJ1c2VyX2lkIjo1fQ.k-caLRfuEG1uFnbcC-D-J66Tjps4OQdyPOpW8vqxv1A	\N	2024-06-15 09:50:41+00	\N	014f31b7456c443783ce201a74023f5e
420	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0NTQzMCwianRpIjoiNTk1N2ViMDdmMjllNDYyZDlhNjVkMWZlNGU3YTljNmUiLCJ1c2VyX2lkIjo1fQ.f0aVizLRrW8Bhwuw3421i4OC4-zB7iBnIU71WzQnUEM	\N	2024-06-15 09:57:10+00	\N	5957eb07f29e462d9a65d1fe4e7a9c6e
421	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0NTg2OCwianRpIjoiM2Q2YzNkYTlmZDRjNDU4MGI5ZTMzZTM4YjU5N2QyY2IiLCJ1c2VyX2lkIjo1fQ.BVscFl9C3NCE1OL5pPHIh-EvAxxs5T9QH_anbuFennw	\N	2024-06-15 10:04:28+00	\N	3d6c3da9fd4c4580b9e33e38b597d2cb
422	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0OTYyMiwianRpIjoiZTY5MThiODI0ZDU5NDZmZjhjMjlhNzE1OTRjYjM3NmQiLCJ1c2VyX2lkIjo1fQ.yTGyXVgYHghr9IOAFUVk3S71BHAPIhXLiwKlQba8xLg	\N	2024-06-15 11:07:02+00	\N	e6918b824d5946ff8c29a71594cb376d
423	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ1MTU1OCwianRpIjoiZjcyYWQ1YmI0MjFjNDljNjk3MzgwNjg2MjE0YWM3Y2IiLCJ1c2VyX2lkIjo1fQ.RyWsoSuTxNdFDjz68wgy2AYiyGNV4KdpY7_-aR5l2rE	\N	2024-06-15 11:39:18+00	\N	f72ad5bb421c49c697380686214ac7cb
424	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ1ODc1MCwianRpIjoiNjUwMzE4ZmUyYmI4NDM5OGE1MWNmMGVjZTg4ZGUxMDYiLCJ1c2VyX2lkIjo1fQ.-ZV0wju4WgW_jYd_hhOhLPT8g6ndmqv5d3acfPq5Z60	\N	2024-06-15 13:39:10+00	\N	650318fe2bb84398a51cf0ece88de106
425	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ1OTQ5NiwianRpIjoiNWEyNjljMzUzMGQ2NDc0ZmI0YzA5YTQ3ZjE0YTM0YTUiLCJ1c2VyX2lkIjo1fQ.98l3BjyZCtQQ8cdQiXtXw6EK_zpPo1O9zX1dG-ScJNc	\N	2024-06-15 13:51:36+00	\N	5a269c3530d6474fb4c09a47f14a34a5
426	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ2MDEzMywianRpIjoiOGIyOWYzMWQzYzFjNDA1YTlkODQ4NjZjMjQ5ZGRhZmQiLCJ1c2VyX2lkIjo1fQ.bwORiYBIJcqX8TRLQUgQsy1aexqjTRjQCw-TUhkpk0c	\N	2024-06-15 14:02:13+00	\N	8b29f31d3c1c405a9d84866c249ddafd
427	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ2NjgxOSwianRpIjoiNGFiYzlmN2JkZWZhNGI2MGFkMDNhNTA5ZDMwOWQxZTMiLCJ1c2VyX2lkIjo1fQ.SWNRlSKqeTpjhhdB58YB2VrS8KmFuMkjXC-RMhKje8A	\N	2024-06-15 15:53:39+00	\N	4abc9f7bdefa4b60ad03a509d309d1e3
428	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ2NzE0MSwianRpIjoiMWU1MDQ4ZmRjMzkzNDI4Mjg1NmQ5N2IxZDk2Yzc5OTAiLCJ1c2VyX2lkIjo1fQ.3Mi-2szx1d8-6dWRqcTdYQ22F00Lgk8kgV6HyRx2lIs	\N	2024-06-15 15:59:01+00	\N	1e5048fdc3934282856d97b1d96c7990
429	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ2ODYwNywianRpIjoiMmU4NjQxNGU0MWNmNDUzYzkwNzczNDc5YzVlMjZhMGMiLCJ1c2VyX2lkIjo1fQ.cNJxkDDmrmdZKzYoESoNu7B7O3gRBqcsuS1rY4xof0A	\N	2024-06-15 16:23:27+00	\N	2e86414e41cf453c90773479c5e26a0c
430	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ2ODk0MiwianRpIjoiZThhZjA3ZjViODliNDM3NTlmYWFlNjVjNzJiZmIyNWMiLCJ1c2VyX2lkIjo1fQ.p4otVUVQD_b_4B2D0RAc7peUN86m0IbJ7z4TIvILkmY	\N	2024-06-15 16:29:02+00	\N	e8af07f5b89b43759faae65c72bfb25c
431	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ2OTMyMSwianRpIjoiODY3M2Y4MjY0ZGFjNGQ2MWIyNmM1NzgwOWU0NWE4OWIiLCJ1c2VyX2lkIjo1fQ.40CgpnfMIb1bWToVDZI0UWzWD9XWcc6NyJBDjZVAXmM	\N	2024-06-15 16:35:21+00	\N	8673f8264dac4d61b26c57809e45a89b
432	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ2OTk0MCwianRpIjoiYTVlZDRlZmZhNDBhNGFiMjg4YTAwZGI4OGRjZjg4OWUiLCJ1c2VyX2lkIjo1fQ.QNQ355XHXWV5UQ9zwX1GQZG8IufkmceK-zzkqpDQ1w4	\N	2024-06-15 16:45:40+00	\N	a5ed4effa40a4ab288a00db88dcf889e
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user (id, password, last_login, is_superuser, username, email, first_name, last_name, avatar, title, created_at, is_staff, is_verified, is_active) FROM stdin;
5	pbkdf2_sha256$260000$SkoUphJUb5FYkXemiFyF8c$/hpsPDmaVv+eK1d91LiAXlMtDB8yJrVgHw5zMwUPnc4=	2024-05-25 23:16:38.853358+00	t	zeynep	zeynep@gmail.com	zeynep	sengul	avatars/default.png		2024-05-22 20:02:47.773295+00	t	t	t
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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 61, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 86, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 96, true);


--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_summernote_attachment_id_seq', 1, false);


--
-- Name: parkingarea_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parkingarea_comment_id_seq', 10, true);


--
-- Name: parkingarea_parkingarea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parkingarea_parkingarea_id_seq', 24, true);


--
-- Name: parkingarea_parkingarea_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parkingarea_parkingarea_tags_id_seq', 1, true);


--
-- Name: parkingarea_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parkingarea_tag_id_seq', 1, true);


--
-- Name: posts_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_post_id_seq', 19, true);


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

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 428, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 432, true);


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
-- Name: parkingarea_comment parkingarea_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_comment
    ADD CONSTRAINT parkingarea_comment_pkey PRIMARY KEY (id);


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
-- Name: parkingarea_comment_parking_area_id_62fac0d9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parkingarea_comment_parking_area_id_62fac0d9 ON public.parkingarea_comment USING btree (parking_area_id);


--
-- Name: parkingarea_comment_user_id_3c1f59c6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parkingarea_comment_user_id_3c1f59c6 ON public.parkingarea_comment USING btree (user_id);


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
-- Name: parkingarea_comment parkingarea_comment_parking_area_id_62fac0d9_fk_parkingar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_comment
    ADD CONSTRAINT parkingarea_comment_parking_area_id_62fac0d9_fk_parkingar FOREIGN KEY (parking_area_id) REFERENCES public.parkingarea_parkingarea(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: parkingarea_comment parkingarea_comment_user_id_3c1f59c6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parkingarea_comment
    ADD CONSTRAINT parkingarea_comment_user_id_3c1f59c6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


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

