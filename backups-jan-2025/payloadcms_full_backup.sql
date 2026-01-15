--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5 (Debian 17.5-1.pgdg120+1)
-- Dumped by pg_dump version 17.5 (Debian 17.5-1.pgdg120+1)

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

--
-- Name: enum__case_studies_v_version_status; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum__case_studies_v_version_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum__case_studies_v_version_status OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum__pages_v_blocks_archive_populate_by; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum__pages_v_blocks_archive_populate_by AS ENUM (
    'collection',
    'selection'
);


ALTER TYPE public.enum__pages_v_blocks_archive_populate_by OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum__pages_v_blocks_archive_relation_to; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum__pages_v_blocks_archive_relation_to AS ENUM (
    'posts'
);


ALTER TYPE public.enum__pages_v_blocks_archive_relation_to OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum__pages_v_blocks_content_columns_link_appearance; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum__pages_v_blocks_content_columns_link_appearance OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum__pages_v_blocks_content_columns_link_type; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum__pages_v_blocks_content_columns_link_type OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum__pages_v_blocks_content_columns_size; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum__pages_v_blocks_content_columns_size AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


ALTER TYPE public.enum__pages_v_blocks_content_columns_size OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum__pages_v_blocks_cta_links_link_appearance; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum__pages_v_blocks_cta_links_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum__pages_v_blocks_cta_links_link_appearance OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum__pages_v_blocks_cta_links_link_type; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum__pages_v_blocks_cta_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum__pages_v_blocks_cta_links_link_type OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum__pages_v_version_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum__pages_v_version_hero_links_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum__pages_v_version_hero_links_link_appearance OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum__pages_v_version_hero_links_link_type; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum__pages_v_version_hero_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum__pages_v_version_hero_links_link_type OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum__pages_v_version_hero_type; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum__pages_v_version_hero_type AS ENUM (
    'none',
    'highImpact',
    'mediumImpact',
    'lowImpact'
);


ALTER TYPE public.enum__pages_v_version_hero_type OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum__pages_v_version_status; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum__pages_v_version_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum__pages_v_version_status OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum__posts_v_version_status; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum__posts_v_version_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum__posts_v_version_status OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_case_studies_status; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_case_studies_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum_case_studies_status OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_footer_nav_items_link_type; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_footer_nav_items_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_footer_nav_items_link_type OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_forms_confirmation_type; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_forms_confirmation_type AS ENUM (
    'message',
    'redirect'
);


ALTER TYPE public.enum_forms_confirmation_type OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_header_nav_items_link_type; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_header_nav_items_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_header_nav_items_link_type OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_pages_blocks_archive_populate_by; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_pages_blocks_archive_populate_by AS ENUM (
    'collection',
    'selection'
);


ALTER TYPE public.enum_pages_blocks_archive_populate_by OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_pages_blocks_archive_relation_to; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_pages_blocks_archive_relation_to AS ENUM (
    'posts'
);


ALTER TYPE public.enum_pages_blocks_archive_relation_to OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_pages_blocks_content_columns_link_appearance; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_pages_blocks_content_columns_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum_pages_blocks_content_columns_link_appearance OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_pages_blocks_content_columns_link_type; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_pages_blocks_content_columns_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_pages_blocks_content_columns_link_type OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_pages_blocks_content_columns_size; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_pages_blocks_content_columns_size AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


ALTER TYPE public.enum_pages_blocks_content_columns_size OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_pages_blocks_cta_links_link_appearance; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_pages_blocks_cta_links_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum_pages_blocks_cta_links_link_appearance OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_pages_blocks_cta_links_link_type; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_pages_blocks_cta_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_pages_blocks_cta_links_link_type OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_pages_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_pages_hero_links_link_appearance AS ENUM (
    'default',
    'outline'
);


ALTER TYPE public.enum_pages_hero_links_link_appearance OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_pages_hero_links_link_type; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_pages_hero_links_link_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_pages_hero_links_link_type OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_pages_hero_type; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_pages_hero_type AS ENUM (
    'none',
    'highImpact',
    'mediumImpact',
    'lowImpact'
);


ALTER TYPE public.enum_pages_hero_type OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_pages_status; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_pages_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum_pages_status OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_payload_jobs_log_state; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_payload_jobs_log_state AS ENUM (
    'failed',
    'succeeded'
);


ALTER TYPE public.enum_payload_jobs_log_state OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_payload_jobs_log_task_slug; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_payload_jobs_log_task_slug AS ENUM (
    'inline',
    'schedulePublish'
);


ALTER TYPE public.enum_payload_jobs_log_task_slug OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_payload_jobs_task_slug; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_payload_jobs_task_slug AS ENUM (
    'inline',
    'schedulePublish'
);


ALTER TYPE public.enum_payload_jobs_task_slug OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_posts_status; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_posts_status AS ENUM (
    'draft',
    'published'
);


ALTER TYPE public.enum_posts_status OWNER TO "payloadcms-052225blue-user";

--
-- Name: enum_redirects_to_type; Type: TYPE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TYPE public.enum_redirects_to_type AS ENUM (
    'reference',
    'custom'
);


ALTER TYPE public.enum_redirects_to_type OWNER TO "payloadcms-052225blue-user";

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _case_studies_v; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._case_studies_v (
    id integer NOT NULL,
    parent_id integer,
    version_title character varying,
    version_summary character varying,
    version_client character varying,
    version_featured_image_id integer,
    version_content jsonb,
    version_meta_title character varying,
    version_meta_image_id integer,
    version_meta_description character varying,
    version_published_at timestamp(3) with time zone,
    version_slug character varying,
    version_slug_lock boolean DEFAULT true,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__case_studies_v_version_status DEFAULT 'draft'::public.enum__case_studies_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean
);


ALTER TABLE public._case_studies_v OWNER TO "payloadcms-052225blue-user";

--
-- Name: _case_studies_v_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._case_studies_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._case_studies_v_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _case_studies_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._case_studies_v_id_seq OWNED BY public._case_studies_v.id;


--
-- Name: _case_studies_v_rels; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._case_studies_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    case_studies_id integer,
    categories_id integer,
    users_id integer
);


ALTER TABLE public._case_studies_v_rels OWNER TO "payloadcms-052225blue-user";

--
-- Name: _case_studies_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._case_studies_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._case_studies_v_rels_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _case_studies_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._case_studies_v_rels_id_seq OWNED BY public._case_studies_v_rels.id;


--
-- Name: _case_studies_v_version_populated_authors; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._case_studies_v_version_populated_authors (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    name character varying
);


ALTER TABLE public._case_studies_v_version_populated_authors OWNER TO "payloadcms-052225blue-user";

--
-- Name: _case_studies_v_version_populated_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._case_studies_v_version_populated_authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._case_studies_v_version_populated_authors_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _case_studies_v_version_populated_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._case_studies_v_version_populated_authors_id_seq OWNED BY public._case_studies_v_version_populated_authors.id;


--
-- Name: _pages_v; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._pages_v (
    id integer NOT NULL,
    parent_id integer,
    version_title character varying,
    version_hero_type public.enum__pages_v_version_hero_type DEFAULT 'lowImpact'::public.enum__pages_v_version_hero_type,
    version_hero_rich_text jsonb,
    version_hero_media_id integer,
    version_meta_title character varying,
    version_meta_image_id integer,
    version_meta_description character varying,
    version_published_at timestamp(3) with time zone,
    version_slug character varying,
    version_slug_lock boolean DEFAULT true,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__pages_v_version_status DEFAULT 'draft'::public.enum__pages_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean
);


ALTER TABLE public._pages_v OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_archive; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._pages_v_blocks_archive (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    intro_content jsonb,
    populate_by public.enum__pages_v_blocks_archive_populate_by DEFAULT 'collection'::public.enum__pages_v_blocks_archive_populate_by,
    relation_to public.enum__pages_v_blocks_archive_relation_to DEFAULT 'posts'::public.enum__pages_v_blocks_archive_relation_to,
    "limit" numeric DEFAULT 10,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_archive OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._pages_v_blocks_archive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_archive_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._pages_v_blocks_archive_id_seq OWNED BY public._pages_v_blocks_archive.id;


--
-- Name: _pages_v_blocks_content; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._pages_v_blocks_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_content OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_content_columns; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._pages_v_blocks_content_columns (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    size public.enum__pages_v_blocks_content_columns_size DEFAULT 'oneThird'::public.enum__pages_v_blocks_content_columns_size,
    rich_text jsonb,
    enable_link boolean,
    link_type public.enum__pages_v_blocks_content_columns_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_content_columns_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_blocks_content_columns_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_content_columns_link_appearance,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_content_columns OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._pages_v_blocks_content_columns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_content_columns_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._pages_v_blocks_content_columns_id_seq OWNED BY public._pages_v_blocks_content_columns.id;


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._pages_v_blocks_content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_content_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._pages_v_blocks_content_id_seq OWNED BY public._pages_v_blocks_content.id;


--
-- Name: _pages_v_blocks_cta; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._pages_v_blocks_cta (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    rich_text jsonb,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_cta OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._pages_v_blocks_cta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_cta_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._pages_v_blocks_cta_id_seq OWNED BY public._pages_v_blocks_cta.id;


--
-- Name: _pages_v_blocks_cta_links; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._pages_v_blocks_cta_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    link_type public.enum__pages_v_blocks_cta_links_link_type DEFAULT 'reference'::public.enum__pages_v_blocks_cta_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_blocks_cta_links_link_appearance DEFAULT 'default'::public.enum__pages_v_blocks_cta_links_link_appearance,
    _uuid character varying
);


ALTER TABLE public._pages_v_blocks_cta_links OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._pages_v_blocks_cta_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_cta_links_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._pages_v_blocks_cta_links_id_seq OWNED BY public._pages_v_blocks_cta_links.id;


--
-- Name: _pages_v_blocks_form_block; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._pages_v_blocks_form_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    form_id integer,
    enable_intro boolean,
    intro_content jsonb,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_form_block OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._pages_v_blocks_form_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_form_block_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._pages_v_blocks_form_block_id_seq OWNED BY public._pages_v_blocks_form_block.id;


--
-- Name: _pages_v_blocks_media_block; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._pages_v_blocks_media_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id integer NOT NULL,
    media_id integer,
    _uuid character varying,
    block_name character varying
);


ALTER TABLE public._pages_v_blocks_media_block OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._pages_v_blocks_media_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_blocks_media_block_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._pages_v_blocks_media_block_id_seq OWNED BY public._pages_v_blocks_media_block.id;


--
-- Name: _pages_v_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._pages_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._pages_v_id_seq OWNED BY public._pages_v.id;


--
-- Name: _pages_v_rels; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._pages_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    categories_id integer
);


ALTER TABLE public._pages_v_rels OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._pages_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_rels_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._pages_v_rels_id_seq OWNED BY public._pages_v_rels.id;


--
-- Name: _pages_v_version_hero_links; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._pages_v_version_hero_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    link_type public.enum__pages_v_version_hero_links_link_type DEFAULT 'reference'::public.enum__pages_v_version_hero_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum__pages_v_version_hero_links_link_appearance DEFAULT 'default'::public.enum__pages_v_version_hero_links_link_appearance,
    _uuid character varying
);


ALTER TABLE public._pages_v_version_hero_links OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._pages_v_version_hero_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._pages_v_version_hero_links_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._pages_v_version_hero_links_id_seq OWNED BY public._pages_v_version_hero_links.id;


--
-- Name: _posts_v; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._posts_v (
    id integer NOT NULL,
    parent_id integer,
    version_title character varying,
    version_hero_image_id integer,
    version_content jsonb,
    version_meta_title character varying,
    version_meta_image_id integer,
    version_meta_description character varying,
    version_published_at timestamp(3) with time zone,
    version_slug character varying,
    version_slug_lock boolean DEFAULT true,
    version_updated_at timestamp(3) with time zone,
    version_created_at timestamp(3) with time zone,
    version__status public.enum__posts_v_version_status DEFAULT 'draft'::public.enum__posts_v_version_status,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    latest boolean,
    autosave boolean
);


ALTER TABLE public._posts_v OWNER TO "payloadcms-052225blue-user";

--
-- Name: _posts_v_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._posts_v_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._posts_v_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _posts_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._posts_v_id_seq OWNED BY public._posts_v.id;


--
-- Name: _posts_v_rels; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._posts_v_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    posts_id integer,
    categories_id integer,
    users_id integer
);


ALTER TABLE public._posts_v_rels OWNER TO "payloadcms-052225blue-user";

--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._posts_v_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._posts_v_rels_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._posts_v_rels_id_seq OWNED BY public._posts_v_rels.id;


--
-- Name: _posts_v_version_populated_authors; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public._posts_v_version_populated_authors (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id integer NOT NULL,
    _uuid character varying,
    name character varying
);


ALTER TABLE public._posts_v_version_populated_authors OWNER TO "payloadcms-052225blue-user";

--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public._posts_v_version_populated_authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public._posts_v_version_populated_authors_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public._posts_v_version_populated_authors_id_seq OWNED BY public._posts_v_version_populated_authors.id;


--
-- Name: case_studies; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.case_studies (
    id integer NOT NULL,
    title character varying,
    summary character varying,
    client character varying,
    featured_image_id integer,
    content jsonb,
    meta_title character varying,
    meta_image_id integer,
    meta_description character varying,
    published_at timestamp(3) with time zone,
    slug character varying,
    slug_lock boolean DEFAULT true,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_case_studies_status DEFAULT 'draft'::public.enum_case_studies_status
);


ALTER TABLE public.case_studies OWNER TO "payloadcms-052225blue-user";

--
-- Name: case_studies_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.case_studies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.case_studies_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: case_studies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.case_studies_id_seq OWNED BY public.case_studies.id;


--
-- Name: case_studies_populated_authors; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.case_studies_populated_authors (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    name character varying
);


ALTER TABLE public.case_studies_populated_authors OWNER TO "payloadcms-052225blue-user";

--
-- Name: case_studies_rels; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.case_studies_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    case_studies_id integer,
    categories_id integer,
    users_id integer
);


ALTER TABLE public.case_studies_rels OWNER TO "payloadcms-052225blue-user";

--
-- Name: case_studies_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.case_studies_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.case_studies_rels_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: case_studies_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.case_studies_rels_id_seq OWNED BY public.case_studies_rels.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    title character varying NOT NULL,
    slug character varying,
    slug_lock boolean DEFAULT true,
    parent_id integer,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.categories OWNER TO "payloadcms-052225blue-user";

--
-- Name: categories_breadcrumbs; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.categories_breadcrumbs (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    doc_id integer,
    url character varying,
    label character varying
);


ALTER TABLE public.categories_breadcrumbs OWNER TO "payloadcms-052225blue-user";

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: footer; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.footer (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


ALTER TABLE public.footer OWNER TO "payloadcms-052225blue-user";

--
-- Name: footer_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.footer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.footer_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: footer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.footer_id_seq OWNED BY public.footer.id;


--
-- Name: footer_nav_items; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.footer_nav_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_footer_nav_items_link_type DEFAULT 'reference'::public.enum_footer_nav_items_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


ALTER TABLE public.footer_nav_items OWNER TO "payloadcms-052225blue-user";

--
-- Name: footer_rels; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.footer_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


ALTER TABLE public.footer_rels OWNER TO "payloadcms-052225blue-user";

--
-- Name: footer_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.footer_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.footer_rels_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: footer_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.footer_rels_id_seq OWNED BY public.footer_rels.id;


--
-- Name: form_submissions; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.form_submissions (
    id integer NOT NULL,
    form_id integer NOT NULL,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.form_submissions OWNER TO "payloadcms-052225blue-user";

--
-- Name: form_submissions_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.form_submissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.form_submissions_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: form_submissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.form_submissions_id_seq OWNED BY public.form_submissions.id;


--
-- Name: form_submissions_submission_data; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.form_submissions_submission_data (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    field character varying NOT NULL,
    value character varying NOT NULL
);


ALTER TABLE public.form_submissions_submission_data OWNER TO "payloadcms-052225blue-user";

--
-- Name: forms; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.forms (
    id integer NOT NULL,
    title character varying NOT NULL,
    submit_button_label character varying,
    confirmation_type public.enum_forms_confirmation_type DEFAULT 'message'::public.enum_forms_confirmation_type,
    confirmation_message jsonb,
    redirect_url character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.forms OWNER TO "payloadcms-052225blue-user";

--
-- Name: forms_blocks_checkbox; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.forms_blocks_checkbox (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    default_value boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_checkbox OWNER TO "payloadcms-052225blue-user";

--
-- Name: forms_blocks_country; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.forms_blocks_country (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_country OWNER TO "payloadcms-052225blue-user";

--
-- Name: forms_blocks_email; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.forms_blocks_email (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_email OWNER TO "payloadcms-052225blue-user";

--
-- Name: forms_blocks_message; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.forms_blocks_message (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    message jsonb,
    block_name character varying
);


ALTER TABLE public.forms_blocks_message OWNER TO "payloadcms-052225blue-user";

--
-- Name: forms_blocks_number; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.forms_blocks_number (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value numeric,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_number OWNER TO "payloadcms-052225blue-user";

--
-- Name: forms_blocks_select; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.forms_blocks_select (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    placeholder character varying,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_select OWNER TO "payloadcms-052225blue-user";

--
-- Name: forms_blocks_select_options; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.forms_blocks_select_options (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    label character varying NOT NULL,
    value character varying NOT NULL
);


ALTER TABLE public.forms_blocks_select_options OWNER TO "payloadcms-052225blue-user";

--
-- Name: forms_blocks_state; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.forms_blocks_state (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_state OWNER TO "payloadcms-052225blue-user";

--
-- Name: forms_blocks_text; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.forms_blocks_text (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_text OWNER TO "payloadcms-052225blue-user";

--
-- Name: forms_blocks_textarea; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.forms_blocks_textarea (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    name character varying NOT NULL,
    label character varying,
    width numeric,
    default_value character varying,
    required boolean,
    block_name character varying
);


ALTER TABLE public.forms_blocks_textarea OWNER TO "payloadcms-052225blue-user";

--
-- Name: forms_emails; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.forms_emails (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    email_to character varying,
    cc character varying,
    bcc character varying,
    reply_to character varying,
    email_from character varying,
    subject character varying DEFAULT 'You''''ve received a new message.'::character varying NOT NULL,
    message jsonb
);


ALTER TABLE public.forms_emails OWNER TO "payloadcms-052225blue-user";

--
-- Name: forms_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.forms_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.forms_id_seq OWNED BY public.forms.id;


--
-- Name: header; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.header (
    id integer NOT NULL,
    updated_at timestamp(3) with time zone,
    created_at timestamp(3) with time zone
);


ALTER TABLE public.header OWNER TO "payloadcms-052225blue-user";

--
-- Name: header_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.header_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.header_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: header_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.header_id_seq OWNED BY public.header.id;


--
-- Name: header_nav_items; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.header_nav_items (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_header_nav_items_link_type DEFAULT 'reference'::public.enum_header_nav_items_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying NOT NULL
);


ALTER TABLE public.header_nav_items OWNER TO "payloadcms-052225blue-user";

--
-- Name: header_rels; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.header_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


ALTER TABLE public.header_rels OWNER TO "payloadcms-052225blue-user";

--
-- Name: header_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.header_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.header_rels_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: header_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.header_rels_id_seq OWNED BY public.header_rels.id;


--
-- Name: media; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.media (
    id integer NOT NULL,
    alt character varying,
    caption jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    url character varying,
    thumbnail_u_r_l character varying,
    filename character varying,
    mime_type character varying,
    filesize numeric,
    width numeric,
    height numeric,
    focal_x numeric,
    focal_y numeric,
    sizes_thumbnail_url character varying,
    sizes_thumbnail_width numeric,
    sizes_thumbnail_height numeric,
    sizes_thumbnail_mime_type character varying,
    sizes_thumbnail_filesize numeric,
    sizes_thumbnail_filename character varying,
    sizes_square_url character varying,
    sizes_square_width numeric,
    sizes_square_height numeric,
    sizes_square_mime_type character varying,
    sizes_square_filesize numeric,
    sizes_square_filename character varying,
    sizes_small_url character varying,
    sizes_small_width numeric,
    sizes_small_height numeric,
    sizes_small_mime_type character varying,
    sizes_small_filesize numeric,
    sizes_small_filename character varying,
    sizes_medium_url character varying,
    sizes_medium_width numeric,
    sizes_medium_height numeric,
    sizes_medium_mime_type character varying,
    sizes_medium_filesize numeric,
    sizes_medium_filename character varying,
    sizes_large_url character varying,
    sizes_large_width numeric,
    sizes_large_height numeric,
    sizes_large_mime_type character varying,
    sizes_large_filesize numeric,
    sizes_large_filename character varying,
    sizes_xlarge_url character varying,
    sizes_xlarge_width numeric,
    sizes_xlarge_height numeric,
    sizes_xlarge_mime_type character varying,
    sizes_xlarge_filesize numeric,
    sizes_xlarge_filename character varying,
    sizes_og_url character varying,
    sizes_og_width numeric,
    sizes_og_height numeric,
    sizes_og_mime_type character varying,
    sizes_og_filesize numeric,
    sizes_og_filename character varying
);


ALTER TABLE public.media OWNER TO "payloadcms-052225blue-user";

--
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.media_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    title character varying,
    hero_type public.enum_pages_hero_type DEFAULT 'lowImpact'::public.enum_pages_hero_type,
    hero_rich_text jsonb,
    hero_media_id integer,
    meta_title character varying,
    meta_image_id integer,
    meta_description character varying,
    published_at timestamp(3) with time zone,
    slug character varying,
    slug_lock boolean DEFAULT true,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_pages_status DEFAULT 'draft'::public.enum_pages_status
);


ALTER TABLE public.pages OWNER TO "payloadcms-052225blue-user";

--
-- Name: pages_blocks_archive; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.pages_blocks_archive (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    intro_content jsonb,
    populate_by public.enum_pages_blocks_archive_populate_by DEFAULT 'collection'::public.enum_pages_blocks_archive_populate_by,
    relation_to public.enum_pages_blocks_archive_relation_to DEFAULT 'posts'::public.enum_pages_blocks_archive_relation_to,
    "limit" numeric DEFAULT 10,
    block_name character varying
);


ALTER TABLE public.pages_blocks_archive OWNER TO "payloadcms-052225blue-user";

--
-- Name: pages_blocks_content; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.pages_blocks_content (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    block_name character varying
);


ALTER TABLE public.pages_blocks_content OWNER TO "payloadcms-052225blue-user";

--
-- Name: pages_blocks_content_columns; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.pages_blocks_content_columns (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    size public.enum_pages_blocks_content_columns_size DEFAULT 'oneThird'::public.enum_pages_blocks_content_columns_size,
    rich_text jsonb,
    enable_link boolean,
    link_type public.enum_pages_blocks_content_columns_link_type DEFAULT 'reference'::public.enum_pages_blocks_content_columns_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_blocks_content_columns_link_appearance DEFAULT 'default'::public.enum_pages_blocks_content_columns_link_appearance
);


ALTER TABLE public.pages_blocks_content_columns OWNER TO "payloadcms-052225blue-user";

--
-- Name: pages_blocks_cta; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.pages_blocks_cta (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    rich_text jsonb,
    block_name character varying
);


ALTER TABLE public.pages_blocks_cta OWNER TO "payloadcms-052225blue-user";

--
-- Name: pages_blocks_cta_links; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.pages_blocks_cta_links (
    _order integer NOT NULL,
    _parent_id character varying NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_pages_blocks_cta_links_link_type DEFAULT 'reference'::public.enum_pages_blocks_cta_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_blocks_cta_links_link_appearance DEFAULT 'default'::public.enum_pages_blocks_cta_links_link_appearance
);


ALTER TABLE public.pages_blocks_cta_links OWNER TO "payloadcms-052225blue-user";

--
-- Name: pages_blocks_form_block; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.pages_blocks_form_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    form_id integer,
    enable_intro boolean,
    intro_content jsonb,
    block_name character varying
);


ALTER TABLE public.pages_blocks_form_block OWNER TO "payloadcms-052225blue-user";

--
-- Name: pages_blocks_media_block; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.pages_blocks_media_block (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    _path text NOT NULL,
    id character varying NOT NULL,
    media_id integer,
    block_name character varying
);


ALTER TABLE public.pages_blocks_media_block OWNER TO "payloadcms-052225blue-user";

--
-- Name: pages_hero_links; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.pages_hero_links (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    link_type public.enum_pages_hero_links_link_type DEFAULT 'reference'::public.enum_pages_hero_links_link_type,
    link_new_tab boolean,
    link_url character varying,
    link_label character varying,
    link_appearance public.enum_pages_hero_links_link_appearance DEFAULT 'default'::public.enum_pages_hero_links_link_appearance
);


ALTER TABLE public.pages_hero_links OWNER TO "payloadcms-052225blue-user";

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: pages_rels; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.pages_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    categories_id integer
);


ALTER TABLE public.pages_rels OWNER TO "payloadcms-052225blue-user";

--
-- Name: pages_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.pages_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_rels_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: pages_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.pages_rels_id_seq OWNED BY public.pages_rels.id;


--
-- Name: payload_jobs; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.payload_jobs (
    id integer NOT NULL,
    input jsonb,
    completed_at timestamp(3) with time zone,
    total_tried numeric DEFAULT 0,
    has_error boolean DEFAULT false,
    error jsonb,
    task_slug public.enum_payload_jobs_task_slug,
    queue character varying DEFAULT 'default'::character varying,
    wait_until timestamp(3) with time zone,
    processing boolean DEFAULT false,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_jobs OWNER TO "payloadcms-052225blue-user";

--
-- Name: payload_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.payload_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_jobs_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: payload_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.payload_jobs_id_seq OWNED BY public.payload_jobs.id;


--
-- Name: payload_jobs_log; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.payload_jobs_log (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    executed_at timestamp(3) with time zone NOT NULL,
    completed_at timestamp(3) with time zone NOT NULL,
    task_slug public.enum_payload_jobs_log_task_slug NOT NULL,
    task_i_d character varying NOT NULL,
    input jsonb,
    output jsonb,
    state public.enum_payload_jobs_log_state NOT NULL,
    error jsonb
);


ALTER TABLE public.payload_jobs_log OWNER TO "payloadcms-052225blue-user";

--
-- Name: payload_locked_documents; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.payload_locked_documents (
    id integer NOT NULL,
    global_slug character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_locked_documents OWNER TO "payloadcms-052225blue-user";

--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.payload_locked_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_locked_documents_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.payload_locked_documents_id_seq OWNED BY public.payload_locked_documents.id;


--
-- Name: payload_locked_documents_rels; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.payload_locked_documents_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer,
    media_id integer,
    categories_id integer,
    users_id integer,
    redirects_id integer,
    forms_id integer,
    form_submissions_id integer,
    search_id integer,
    payload_jobs_id integer,
    case_studies_id integer
);


ALTER TABLE public.payload_locked_documents_rels OWNER TO "payloadcms-052225blue-user";

--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.payload_locked_documents_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_locked_documents_rels_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.payload_locked_documents_rels_id_seq OWNED BY public.payload_locked_documents_rels.id;


--
-- Name: payload_migrations; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.payload_migrations (
    id integer NOT NULL,
    name character varying,
    batch numeric,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_migrations OWNER TO "payloadcms-052225blue-user";

--
-- Name: payload_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.payload_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_migrations_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: payload_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.payload_migrations_id_seq OWNED BY public.payload_migrations.id;


--
-- Name: payload_preferences; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.payload_preferences (
    id integer NOT NULL,
    key character varying,
    value jsonb,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.payload_preferences OWNER TO "payloadcms-052225blue-user";

--
-- Name: payload_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.payload_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_preferences_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: payload_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.payload_preferences_id_seq OWNED BY public.payload_preferences.id;


--
-- Name: payload_preferences_rels; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.payload_preferences_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    users_id integer
);


ALTER TABLE public.payload_preferences_rels OWNER TO "payloadcms-052225blue-user";

--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.payload_preferences_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payload_preferences_rels_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.payload_preferences_rels_id_seq OWNED BY public.payload_preferences_rels.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying,
    hero_image_id integer,
    content jsonb,
    meta_title character varying,
    meta_image_id integer,
    meta_description character varying,
    published_at timestamp(3) with time zone,
    slug character varying,
    slug_lock boolean DEFAULT true,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    _status public.enum_posts_status DEFAULT 'draft'::public.enum_posts_status
);


ALTER TABLE public.posts OWNER TO "payloadcms-052225blue-user";

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: posts_populated_authors; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.posts_populated_authors (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    name character varying
);


ALTER TABLE public.posts_populated_authors OWNER TO "payloadcms-052225blue-user";

--
-- Name: posts_rels; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.posts_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    posts_id integer,
    categories_id integer,
    users_id integer
);


ALTER TABLE public.posts_rels OWNER TO "payloadcms-052225blue-user";

--
-- Name: posts_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.posts_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_rels_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: posts_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.posts_rels_id_seq OWNED BY public.posts_rels.id;


--
-- Name: redirects; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.redirects (
    id integer NOT NULL,
    "from" character varying NOT NULL,
    to_type public.enum_redirects_to_type DEFAULT 'reference'::public.enum_redirects_to_type,
    to_url character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.redirects OWNER TO "payloadcms-052225blue-user";

--
-- Name: redirects_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.redirects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.redirects_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: redirects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.redirects_id_seq OWNED BY public.redirects.id;


--
-- Name: redirects_rels; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.redirects_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    pages_id integer,
    posts_id integer
);


ALTER TABLE public.redirects_rels OWNER TO "payloadcms-052225blue-user";

--
-- Name: redirects_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.redirects_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.redirects_rels_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: redirects_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.redirects_rels_id_seq OWNED BY public.redirects_rels.id;


--
-- Name: search; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.search (
    id integer NOT NULL,
    title character varying,
    priority numeric,
    slug character varying,
    meta_title character varying,
    meta_description character varying,
    meta_image_id integer,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.search OWNER TO "payloadcms-052225blue-user";

--
-- Name: search_categories; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.search_categories (
    _order integer NOT NULL,
    _parent_id integer NOT NULL,
    id character varying NOT NULL,
    relation_to character varying,
    title character varying
);


ALTER TABLE public.search_categories OWNER TO "payloadcms-052225blue-user";

--
-- Name: search_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.search_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.search_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: search_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.search_id_seq OWNED BY public.search.id;


--
-- Name: search_rels; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.search_rels (
    id integer NOT NULL,
    "order" integer,
    parent_id integer NOT NULL,
    path character varying NOT NULL,
    posts_id integer
);


ALTER TABLE public.search_rels OWNER TO "payloadcms-052225blue-user";

--
-- Name: search_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.search_rels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.search_rels_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: search_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.search_rels_id_seq OWNED BY public.search_rels.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying,
    updated_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    created_at timestamp(3) with time zone DEFAULT now() NOT NULL,
    email character varying NOT NULL,
    reset_password_token character varying,
    reset_password_expiration timestamp(3) with time zone,
    salt character varying,
    hash character varying,
    login_attempts numeric DEFAULT 0,
    lock_until timestamp(3) with time zone
);


ALTER TABLE public.users OWNER TO "payloadcms-052225blue-user";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO "payloadcms-052225blue-user";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: _case_studies_v id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._case_studies_v ALTER COLUMN id SET DEFAULT nextval('public._case_studies_v_id_seq'::regclass);


--
-- Name: _case_studies_v_rels id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._case_studies_v_rels ALTER COLUMN id SET DEFAULT nextval('public._case_studies_v_rels_id_seq'::regclass);


--
-- Name: _case_studies_v_version_populated_authors id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._case_studies_v_version_populated_authors ALTER COLUMN id SET DEFAULT nextval('public._case_studies_v_version_populated_authors_id_seq'::regclass);


--
-- Name: _pages_v id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v ALTER COLUMN id SET DEFAULT nextval('public._pages_v_id_seq'::regclass);


--
-- Name: _pages_v_blocks_archive id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_archive ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_archive_id_seq'::regclass);


--
-- Name: _pages_v_blocks_content id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_content ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_content_id_seq'::regclass);


--
-- Name: _pages_v_blocks_content_columns id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_content_columns_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_cta ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_id_seq'::regclass);


--
-- Name: _pages_v_blocks_cta_links id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_cta_links_id_seq'::regclass);


--
-- Name: _pages_v_blocks_form_block id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_form_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_form_block_id_seq'::regclass);


--
-- Name: _pages_v_blocks_media_block id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_media_block ALTER COLUMN id SET DEFAULT nextval('public._pages_v_blocks_media_block_id_seq'::regclass);


--
-- Name: _pages_v_rels id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_rels ALTER COLUMN id SET DEFAULT nextval('public._pages_v_rels_id_seq'::regclass);


--
-- Name: _pages_v_version_hero_links id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_version_hero_links ALTER COLUMN id SET DEFAULT nextval('public._pages_v_version_hero_links_id_seq'::regclass);


--
-- Name: _posts_v id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._posts_v ALTER COLUMN id SET DEFAULT nextval('public._posts_v_id_seq'::regclass);


--
-- Name: _posts_v_rels id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._posts_v_rels ALTER COLUMN id SET DEFAULT nextval('public._posts_v_rels_id_seq'::regclass);


--
-- Name: _posts_v_version_populated_authors id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._posts_v_version_populated_authors ALTER COLUMN id SET DEFAULT nextval('public._posts_v_version_populated_authors_id_seq'::regclass);


--
-- Name: case_studies id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.case_studies ALTER COLUMN id SET DEFAULT nextval('public.case_studies_id_seq'::regclass);


--
-- Name: case_studies_rels id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.case_studies_rels ALTER COLUMN id SET DEFAULT nextval('public.case_studies_rels_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: footer id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.footer ALTER COLUMN id SET DEFAULT nextval('public.footer_id_seq'::regclass);


--
-- Name: footer_rels id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.footer_rels ALTER COLUMN id SET DEFAULT nextval('public.footer_rels_id_seq'::regclass);


--
-- Name: form_submissions id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.form_submissions ALTER COLUMN id SET DEFAULT nextval('public.form_submissions_id_seq'::regclass);


--
-- Name: forms id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms ALTER COLUMN id SET DEFAULT nextval('public.forms_id_seq'::regclass);


--
-- Name: header id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.header ALTER COLUMN id SET DEFAULT nextval('public.header_id_seq'::regclass);


--
-- Name: header_rels id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.header_rels ALTER COLUMN id SET DEFAULT nextval('public.header_rels_id_seq'::regclass);


--
-- Name: media id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_rels id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_rels ALTER COLUMN id SET DEFAULT nextval('public.pages_rels_id_seq'::regclass);


--
-- Name: payload_jobs id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_jobs ALTER COLUMN id SET DEFAULT nextval('public.payload_jobs_id_seq'::regclass);


--
-- Name: payload_locked_documents id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_id_seq'::regclass);


--
-- Name: payload_locked_documents_rels id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_locked_documents_rels_id_seq'::regclass);


--
-- Name: payload_migrations id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_migrations ALTER COLUMN id SET DEFAULT nextval('public.payload_migrations_id_seq'::regclass);


--
-- Name: payload_preferences id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_preferences ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_id_seq'::regclass);


--
-- Name: payload_preferences_rels id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_preferences_rels ALTER COLUMN id SET DEFAULT nextval('public.payload_preferences_rels_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: posts_rels id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.posts_rels ALTER COLUMN id SET DEFAULT nextval('public.posts_rels_id_seq'::regclass);


--
-- Name: redirects id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.redirects ALTER COLUMN id SET DEFAULT nextval('public.redirects_id_seq'::regclass);


--
-- Name: redirects_rels id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.redirects_rels ALTER COLUMN id SET DEFAULT nextval('public.redirects_rels_id_seq'::regclass);


--
-- Name: search id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.search ALTER COLUMN id SET DEFAULT nextval('public.search_id_seq'::regclass);


--
-- Name: search_rels id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.search_rels ALTER COLUMN id SET DEFAULT nextval('public.search_rels_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: _case_studies_v; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._case_studies_v (id, parent_id, version_title, version_summary, version_client, version_featured_image_id, version_content, version_meta_title, version_meta_image_id, version_meta_description, version_published_at, version_slug, version_slug_lock, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave) FROM stdin;
3	1	Test case study content	Test case study content	Test case study content	22	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Test case study content", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	Test case study content | Payload Website Template	22	Test case study content Test case study content	2025-05-29 17:58:21.934+00	test-case-study-content	t	2025-05-29 17:58:21.938+00	2025-05-29 17:57:35.114+00	published	2025-05-29 17:58:21.947+00	2025-05-29 17:58:21.948+00	t	f
1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2025-05-29 17:57:35.119+00	2025-05-29 17:57:35.114+00	draft	2025-05-29 17:57:35.14+00	2025-05-29 17:57:35.141+00	f	f
2	1	Test case study content	Test case study content	Test case study content	22	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Test case study content", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	Test case study content | Payload Website Template	22	Test case study content Test case study content	\N	test-case-study-content	t	2025-05-29 17:58:20.526+00	2025-05-29 17:57:35.114+00	draft	2025-05-29 17:57:35.861+00	2025-05-29 17:58:20.528+00	f	t
4	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2025-11-24 18:06:21.988+00	2025-11-24 18:06:21.987+00	draft	2025-11-24 18:06:22.003+00	2025-11-24 18:06:22.003+00	f	f
5	2	\N	\N	\N	\N	\N	\N	\N	\N	\N		t	2025-11-24 18:06:22.8+00	2025-11-24 18:06:21.987+00	draft	2025-11-24 18:06:22.452+00	2025-11-24 18:06:22.804+00	t	t
\.


--
-- Data for Name: _case_studies_v_rels; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._case_studies_v_rels (id, "order", parent_id, path, case_studies_id, categories_id, users_id) FROM stdin;
\.


--
-- Data for Name: _case_studies_v_version_populated_authors; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._case_studies_v_version_populated_authors (_order, _parent_id, id, _uuid, name) FROM stdin;
\.


--
-- Data for Name: _pages_v; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._pages_v (id, parent_id, version_title, version_hero_type, version_hero_rich_text, version_hero_media_id, version_meta_title, version_meta_image_id, version_meta_description, version_published_at, version_slug, version_slug_lock, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave) FROM stdin;
1	2	Contact	none	\N	\N	\N	\N	\N	\N	contact	t	2025-05-23 18:56:57.682+00	2025-05-23 18:56:57.664+00	published	2025-05-23 18:56:57.697+00	2025-05-23 18:56:57.698+00	t	f
33	3	\N	lowImpact	\N	\N	\N	\N	\N	\N	\N	t	2025-11-24 18:06:17.743+00	2025-11-24 18:06:17.741+00	draft	2025-11-24 18:06:17.76+00	2025-11-24 18:06:17.764+00	f	f
26	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-08-18 21:10:45.358+00	2025-05-23 18:56:57.663+00	published	2025-08-18 21:10:45.398+00	2025-08-18 21:10:45.399+00	f	f
13	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating DevOps processes & Cloud Infrastructure, and working across the Full Stack on Web Applications (User Interface, Business Logic, Databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-28 19:04:58.801+00	2025-05-23 18:56:57.663+00	draft	2025-05-28 19:04:04.682+00	2025-05-28 19:04:58.806+00	f	t
34	3	\N	lowImpact	\N	\N	\N	\N	\N	2025-11-24 18:06:18.587+00		t	2025-11-24 18:06:18.588+00	2025-11-24 18:06:17.741+00	draft	2025-11-24 18:06:18.247+00	2025-11-24 18:06:18.596+00	t	t
4	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded NodeJS developer with experience in Enterprise Application API Integration, Web Application Development, and Business Consulting with corporate and small business executives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	4	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-23 19:01:52.222+00	2025-05-23 18:56:57.663+00	published	2025-05-23 19:01:52.264+00	2025-05-23 19:01:52.265+00	f	f
30	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-08-18 21:11:38.717+00	2025-05-23 18:56:57.663+00	published	2025-08-18 21:11:38.742+00	2025-08-18 21:11:38.742+00	f	f
28	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-08-18 21:11:07.967+00	2025-05-23 18:56:57.663+00	published	2025-08-18 21:11:07.988+00	2025-08-18 21:11:07.988+00	f	f
6	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded NodeJS developer with experience in Enterprise Application API Integration, Web Application Development, and Business Consulting with corporate and small business executives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-23 19:57:09.249+00	2025-05-23 18:56:57.663+00	published	2025-05-23 19:57:09.271+00	2025-05-23 19:57:09.272+00	f	f
29	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-08-18 21:11:36.823+00	2025-05-23 18:56:57.663+00	draft	2025-08-18 21:11:32.334+00	2025-08-18 21:11:36.828+00	f	t
14	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating DevOps processes & Cloud Infrastructure, and working across the Full Stack on Web Applications (User Interface, Business Logic, Databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-28 19:05:00.441+00	2025-05-23 18:56:57.663+00	published	2025-05-28 19:05:00.462+00	2025-05-28 19:05:00.463+00	f	f
24	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-08-18 21:10:08.827+00	2025-05-23 18:56:57.663+00	published	2025-08-18 21:10:08.846+00	2025-08-18 21:10:08.846+00	f	f
25	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-08-18 21:10:37.184+00	2025-05-23 18:56:57.663+00	draft	2025-08-18 21:10:16.445+00	2025-08-18 21:10:37.191+00	f	t
8	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded NodeJS developer with experience in Enterprise Application API Integration, Web Application Development, and Business Consulting with corporate and small business executives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-23 19:57:40.241+00	2025-05-23 18:56:57.663+00	published	2025-05-23 19:57:40.277+00	2025-05-23 19:57:40.277+00	f	f
9	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded NodeJS developer with experience in Enterprise Application API Integration, Web Application Development, and Business Consulting with corporate and small business executives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-23 20:01:35.117+00	2025-05-23 18:56:57.663+00	draft	2025-05-23 20:01:29.421+00	2025-05-23 20:01:35.129+00	f	t
3	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded NodeJS developer with experience in Enterprise Application API Integration, Web Application Development, and Business Consulting with corporate and small business executives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	4	Full Stack & DevOps Projects	2025-05-23 19:01:48.698+00	home	t	2025-05-23 19:01:48.698+00	2025-05-23 18:56:57.663+00	draft	2025-05-23 18:59:10.177+00	2025-05-23 19:01:48.711+00	f	t
15	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devOps processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-29 15:44:49.846+00	2025-05-23 18:56:57.663+00	draft	2025-05-29 15:44:25.774+00	2025-05-29 15:44:49.856+00	f	t
19	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-30 04:32:52.041+00	2025-05-23 18:56:57.663+00	draft	2025-05-30 04:32:50.491+00	2025-05-30 04:32:52.053+00	f	t
7	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded NodeJS developer with experience in Enterprise Application API Integration, Web Application Development, and Business Consulting with corporate and small business executives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-23 19:57:39.747+00	2025-05-23 18:56:57.663+00	draft	2025-05-23 19:57:39.355+00	2025-05-23 19:57:39.753+00	f	t
21	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-08-18 21:09:50.807+00	2025-05-23 18:56:57.663+00	draft	2025-08-18 21:05:52.916+00	2025-08-18 21:09:50.827+00	f	t
11	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating DevOps processes & Cloud Infrastructure, and working across the Full Stack on Web Applications (User Interface, Business Logic, Databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-28 19:03:41.73+00	2025-05-23 18:56:57.663+00	draft	2025-05-28 19:00:18.026+00	2025-05-28 19:03:41.735+00	f	t
32	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-08-18 21:11:59.026+00	2025-05-23 18:56:57.663+00	published	2025-08-18 21:11:59.041+00	2025-08-18 21:11:59.042+00	t	f
16	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devOps processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-29 15:44:52.174+00	2025-05-23 18:56:57.663+00	published	2025-05-29 15:44:52.191+00	2025-05-29 15:44:52.191+00	f	f
31	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-08-18 21:11:55.304+00	2025-05-23 18:56:57.663+00	draft	2025-08-18 21:11:40.758+00	2025-08-18 21:11:55.309+00	f	t
23	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-08-18 21:09:59.97+00	2025-05-23 18:56:57.663+00	draft	2025-08-18 21:09:59.596+00	2025-08-18 21:09:59.975+00	f	t
20	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-30 04:32:52.677+00	2025-05-23 18:56:57.663+00	published	2025-05-30 04:32:52.709+00	2025-05-30 04:32:52.713+00	f	f
17	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devOps processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-29 19:35:58.431+00	2025-05-23 18:56:57.663+00	draft	2025-05-29 19:35:37.346+00	2025-05-29 19:35:58.448+00	f	t
5	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded NodeJS developer with experience in Enterprise Application API Integration, Web Application Development, and Business Consulting with corporate and small business executives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-23 19:57:08.453+00	2025-05-23 18:56:57.663+00	draft	2025-05-23 19:56:19.48+00	2025-05-23 19:57:08.458+00	f	t
12	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating DevOps processes & Cloud Infrastructure, and working across the Full Stack on Web Applications (User Interface, Business Logic, Databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-28 19:03:43.399+00	2025-05-23 18:56:57.663+00	published	2025-05-28 19:03:43.426+00	2025-05-28 19:03:43.427+00	f	f
22	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-08-18 21:09:53.069+00	2025-05-23 18:56:57.663+00	published	2025-08-18 21:09:53.086+00	2025-08-18 21:09:53.087+00	f	f
10	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded NodeJS developer with experience in Enterprise Application API Integration, Web Application Development, and Business Consulting with corporate and small business executives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-23 20:01:40.032+00	2025-05-23 18:56:57.663+00	published	2025-05-23 20:01:40.082+00	2025-05-23 20:01:40.091+00	f	f
18	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devOps processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-05-29 19:36:00.255+00	2025-05-23 18:56:57.663+00	published	2025-05-29 19:36:00.28+00	2025-05-29 19:36:00.281+00	f	f
27	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-08-18 21:11:06.617+00	2025-05-23 18:56:57.663+00	draft	2025-08-18 21:11:05.778+00	2025-08-18 21:11:06.632+00	f	t
2	1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Payload Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Visit the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " to begin managing this site's content. The code for this template is completely open-source and can be found ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "on our Github", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ". ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	4	Payload Website Template	4	An open-source website built with Payload and Next.js.	\N	home	t	2025-05-23 18:56:57.677+00	2025-05-23 18:56:57.663+00	published	2025-05-23 18:56:57.734+00	2025-05-23 18:56:57.735+00	f	f
\.


--
-- Data for Name: _pages_v_blocks_archive; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._pages_v_blocks_archive (_order, _parent_id, _path, id, intro_content, populate_by, relation_to, "limit", _uuid, block_name) FROM stdin;
3	2	version.layout	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Recent posts", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The posts below are displayed in an \\"Archive\\" layout building block which is an extremely powerful way to display documents on a page. It can be auto-populated by collection or by category, or posts can be individually selected. Pagination controls will automatically appear if the number of results exceeds the number of items per page.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Archive Block
2	19	version.layout	678	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	20	version.layout	679	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
1	5	version.layout	150	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
1	6	version.layout	151	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	29	version.layout	1243	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	30	version.layout	1244	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	9	version.layout	160	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	10	version.layout	161	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	15	version.layout	611	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	16	version.layout	612	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	13	version.layout	582	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	14	version.layout	583	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	25	version.layout	1231	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	26	version.layout	1232	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	31	version.layout	1278	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	32	version.layout	1279	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	21	version.layout	1192	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	17	version.layout	674	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	18	version.layout	675	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	22	version.layout	1193	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	23	version.layout	1195	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	24	version.layout	1196	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	7	version.layout	153	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	8	version.layout	154	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	27	version.layout	1235	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	28	version.layout	1236	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	11	version.layout	445	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
2	12	version.layout	446	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Portfolio
3	3	version.layout	98	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Archive Block
3	4	version.layout	99	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	6830c4f9f6a5ed0122b086b2	Archive Block
\.


--
-- Data for Name: _pages_v_blocks_content; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._pages_v_blocks_content (_order, _parent_id, _path, id, _uuid, block_name) FROM stdin;
1	2	version.layout	1	6830c4f9f6a5ed0122b086b0	Content Block
3	19	version.layout	678	6830c4f9f6a5ed0122b086b0	Services List
3	20	version.layout	679	6830c4f9f6a5ed0122b086b0	Services List
3	11	version.layout	445	6830c4f9f6a5ed0122b086b0	Services List
3	12	version.layout	446	6830c4f9f6a5ed0122b086b0	Services List
3	15	version.layout	611	6830c4f9f6a5ed0122b086b0	Services List
3	16	version.layout	612	6830c4f9f6a5ed0122b086b0	Services List
3	25	version.layout	1231	6830c4f9f6a5ed0122b086b0	Services List
3	26	version.layout	1232	6830c4f9f6a5ed0122b086b0	Services List
3	27	version.layout	1235	6830c4f9f6a5ed0122b086b0	Services List
3	28	version.layout	1236	6830c4f9f6a5ed0122b086b0	Services List
3	5	version.layout	150	6830c4f9f6a5ed0122b086b0	Services List
3	6	version.layout	151	6830c4f9f6a5ed0122b086b0	Services List
3	7	version.layout	153	6830c4f9f6a5ed0122b086b0	Services List
3	8	version.layout	154	6830c4f9f6a5ed0122b086b0	Services List
3	29	version.layout	1243	6830c4f9f6a5ed0122b086b0	Services List
3	30	version.layout	1244	6830c4f9f6a5ed0122b086b0	Services List
3	9	version.layout	160	6830c4f9f6a5ed0122b086b0	Services List
3	10	version.layout	161	6830c4f9f6a5ed0122b086b0	Services List
3	13	version.layout	582	6830c4f9f6a5ed0122b086b0	Services List
3	14	version.layout	583	6830c4f9f6a5ed0122b086b0	Services List
3	21	version.layout	1192	6830c4f9f6a5ed0122b086b0	Services List
3	22	version.layout	1193	6830c4f9f6a5ed0122b086b0	Services List
3	23	version.layout	1195	6830c4f9f6a5ed0122b086b0	Services List
3	24	version.layout	1196	6830c4f9f6a5ed0122b086b0	Services List
2	3	version.layout	98	6830c4f9f6a5ed0122b086b0	Content Block
2	4	version.layout	99	6830c4f9f6a5ed0122b086b0	Content Block
3	31	version.layout	1278	6830c4f9f6a5ed0122b086b0	Services List
3	17	version.layout	674	6830c4f9f6a5ed0122b086b0	Services List
3	18	version.layout	675	6830c4f9f6a5ed0122b086b0	Services List
3	32	version.layout	1279	6830c4f9f6a5ed0122b086b0	Services List
\.


--
-- Data for Name: _pages_v_blocks_content_columns; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._pages_v_blocks_content_columns (_order, _parent_id, id, size, rich_text, enable_link, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
1	1	1	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core features", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	1	2	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Manage this site's pages and posts from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	1	3	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Using versions, drafts, and preview, editors can review and share their changes before publishing them.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	1	4	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Page Builder", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom page builder allows you to create unique page, post, and project layouts for any type of content.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	1	5	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "SEO", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Editors have complete control over SEO data and site content directly from the ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	1	6	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dark Mode", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Users will experience this site in their preferred color scheme and each block can be inverted.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	153	913	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	153	914	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	153	915	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	153	916	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	153	917	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	153	918	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	154	919	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	154	920	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	154	921	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	154	922	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	154	923	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	154	924	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	678	4063	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	678	4064	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	678	4065	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	678	4066	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	678	4067	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	678	4068	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	679	4069	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	679	4070	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	679	4071	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	679	4072	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	679	4073	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	679	4074	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	445	2665	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	445	2666	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	445	2667	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	445	2668	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	445	2669	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
1	160	955	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	160	956	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	160	957	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	160	958	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	160	959	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	160	960	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	161	961	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	161	962	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	161	963	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	161	964	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	161	965	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	161	966	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
6	445	2670	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	446	2671	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	446	2672	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	446	2673	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	446	2674	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	446	2675	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	446	2676	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	1243	7453	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Feel free to view this project's code at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://github.com/pmeaney/payloadcms-052225blue", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://github.com/pmeaney/payloadcms-052225blue", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	1243	7454	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	1243	7455	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create Web Applications from scratch using Javascript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services. To host the app's data I design & grow a SQL database.  And typically I host on Linux.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	1243	7456	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	1243	7457	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "These days I shy away from UI Design & Writing CSS/SCSS, unless it's for a personal project", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": ", as I prefer to specialize in Backend & DevOps systems.  I'm moving away from Web Frontend-- where my career began when I originally shifted into IT from Digital Marketing-- and moving towards DevOps & Security.  And, for personal projects-- Robotics & LiDAR.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	1243	7458	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	1244	7459	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Feel free to view this project's code at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://github.com/pmeaney/payloadcms-052225blue", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://github.com/pmeaney/payloadcms-052225blue", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	1244	7460	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	1244	7461	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create Web Applications from scratch using Javascript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services. To host the app's data I design & grow a SQL database.  And typically I host on Linux.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	1244	7462	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	1244	7463	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "These days I shy away from UI Design & Writing CSS/SCSS, unless it's for a personal project", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": ", as I prefer to specialize in Backend & DevOps systems.  I'm moving away from Web Frontend-- where my career began when I originally shifted into IT from Digital Marketing-- and moving towards DevOps & Security.  And, for personal projects-- Robotics & LiDAR.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	1244	7464	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	611	3661	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	611	3662	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	611	3663	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	611	3664	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	611	3665	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	611	3666	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	612	3667	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	612	3668	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	612	3669	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	612	3670	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	612	3671	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	612	3672	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	150	895	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	150	896	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	150	897	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	150	898	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	150	899	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	150	900	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	151	901	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	151	902	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	151	903	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	151	904	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	151	905	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	151	906	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	98	583	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	98	584	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	98	585	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	98	586	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	98	587	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	98	588	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	99	589	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	99	590	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	99	591	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	99	592	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	99	593	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	99	594	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	1231	7381	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website.  Feel free to view this project's code at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://github.com/pmeaney/payloadcms-052225blue", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://github.com/pmeaney/payloadcms-052225blue", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	1231	7382	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	1231	7383	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create Web Applications from scratch using Javascript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services. To host the app's data I design & grow a SQL database.  And typically I host on Linux.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	1231	7384	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	1231	7385	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "These days I shy away from UI Design & Writing CSS/SCSS, unless it's for a personal project", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": ", as I prefer to specialize in Backend & DevOps systems.  I'm moving away from Web Frontend-- where my career began when I originally shifted away from Digital Marketingh-- and moving towards DevOps & Security.  And, for personal projects-- Robotics & LiDAR.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	1231	7386	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	1232	7387	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website.  Feel free to view this project's code at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://github.com/pmeaney/payloadcms-052225blue", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://github.com/pmeaney/payloadcms-052225blue", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	1232	7388	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	1232	7389	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create Web Applications from scratch using Javascript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services. To host the app's data I design & grow a SQL database.  And typically I host on Linux.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	1232	7390	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	1232	7391	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "These days I shy away from UI Design & Writing CSS/SCSS, unless it's for a personal project", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": ", as I prefer to specialize in Backend & DevOps systems.  I'm moving away from Web Frontend-- where my career began when I originally shifted away from Digital Marketingh-- and moving towards DevOps & Security.  And, for personal projects-- Robotics & LiDAR.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	1232	7392	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	1235	7405	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Feel free to view this project's code at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://github.com/pmeaney/payloadcms-052225blue", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://github.com/pmeaney/payloadcms-052225blue", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	1235	7406	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
1	582	3487	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	582	3488	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	582	3489	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	582	3490	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	582	3491	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	582	3492	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	583	3493	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	583	3494	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	583	3495	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	583	3496	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	583	3497	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	583	3498	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
3	1235	7407	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create Web Applications from scratch using Javascript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services. To host the app's data I design & grow a SQL database.  And typically I host on Linux.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	1235	7408	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	1235	7409	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "These days I shy away from UI Design & Writing CSS/SCSS, unless it's for a personal project", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": ", as I prefer to specialize in Backend & DevOps systems.  I'm moving away from Web Frontend-- where my career began when I originally shifted away from Digital Marketingh-- and moving towards DevOps & Security.  And, for personal projects-- Robotics & LiDAR.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	1235	7410	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	1236	7411	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Feel free to view this project's code at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://github.com/pmeaney/payloadcms-052225blue", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://github.com/pmeaney/payloadcms-052225blue", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	1236	7412	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	1236	7413	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create Web Applications from scratch using Javascript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services. To host the app's data I design & grow a SQL database.  And typically I host on Linux.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	1236	7414	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	1236	7415	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "These days I shy away from UI Design & Writing CSS/SCSS, unless it's for a personal project", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": ", as I prefer to specialize in Backend & DevOps systems.  I'm moving away from Web Frontend-- where my career began when I originally shifted away from Digital Marketingh-- and moving towards DevOps & Security.  And, for personal projects-- Robotics & LiDAR.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	1236	7416	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	674	4039	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	674	4040	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	674	4041	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	674	4042	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	674	4043	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	674	4044	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	675	4045	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	675	4046	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	675	4047	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I created Web Applications from scratch using Javacript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	675	4048	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	675	4049	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	675	4050	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	1278	7663	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Feel free to view this project's code at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://github.com/pmeaney/payloadcms-052225blue", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://github.com/pmeaney/payloadcms-052225blue", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	1278	7664	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	1278	7665	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create Web Applications from scratch using Javascript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services. To host the app's data I design & grow a SQL database.  And typically I host on Linux.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	1278	7666	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	1278	7667	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "These days I shy away from UI Design & Writing CSS/SCSS, unless it's for a personal project", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": ", as I prefer to specialize in Backend & DevOps systems.  I'm moving away from Web Frontend-- where my careers began when I originally shifted into Software Engineering from Digital Marketing.  These days I am moving towards specializing in DevOps & Security.  And, for personal projects-- Robotics & LiDAR.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	1278	7668	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	1279	7669	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Feel free to view this project's code at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://github.com/pmeaney/payloadcms-052225blue", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://github.com/pmeaney/payloadcms-052225blue", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	1279	7670	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	1279	7671	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create Web Applications from scratch using Javascript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services. To host the app's data I design & grow a SQL database.  And typically I host on Linux.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	1279	7672	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	1279	7673	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "These days I shy away from UI Design & Writing CSS/SCSS, unless it's for a personal project", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": ", as I prefer to specialize in Backend & DevOps systems.  I'm moving away from Web Frontend-- where my careers began when I originally shifted into Software Engineering from Digital Marketing.  These days I am moving towards specializing in DevOps & Security.  And, for personal projects-- Robotics & LiDAR.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	1279	7674	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	1192	7147	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	1192	7148	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	1192	7149	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create Web Applications from scratch using Javascript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services. To host the app's data I design & grow a SQL database.  And typically I host on Linux.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	1192	7150	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	1192	7151	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "These days I shy away from UI Design & Writing CSS/SCSS, unless it's for a personal project", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": ", as I prefer to specialize in Backend & DevOps systems.  I'm moving away from Web Frontend-- where my career began when I originally shifted away from Digital Marketingh-- and moving towards DevOps & Security.  And, for personal projects-- Robotics & LiDAR.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	1192	7152	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	1193	7153	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	1193	7154	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	1193	7155	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create Web Applications from scratch using Javascript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services. To host the app's data I design & grow a SQL database.  And typically I host on Linux.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	1193	7156	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	1193	7157	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "These days I shy away from UI Design & Writing CSS/SCSS, unless it's for a personal project", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": ", as I prefer to specialize in Backend & DevOps systems.  I'm moving away from Web Frontend-- where my career began when I originally shifted away from Digital Marketingh-- and moving towards DevOps & Security.  And, for personal projects-- Robotics & LiDAR.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	1193	7158	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "MarTech & General Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	1195	7165	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	1195	7166	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	1195	7167	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create Web Applications from scratch using Javascript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services. To host the app's data I design & grow a SQL database.  And typically I host on Linux.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	1195	7168	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	1195	7169	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "These days I shy away from UI Design & Writing CSS/SCSS, unless it's for a personal project", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": ", as I prefer to specialize in Backend & DevOps systems.  I'm moving away from Web Frontend-- where my career began when I originally shifted away from Digital Marketingh-- and moving towards DevOps & Security.  And, for personal projects-- Robotics & LiDAR.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	1195	7170	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
1	1196	7171	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086aa
2	1196	7172	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ab
3	1196	7173	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create Web Applications from scratch using Javascript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services. To host the app's data I design & grow a SQL database.  And typically I host on Linux.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ac
4	1196	7174	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ad
5	1196	7175	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "These days I shy away from UI Design & Writing CSS/SCSS, unless it's for a personal project", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": ", as I prefer to specialize in Backend & DevOps systems.  I'm moving away from Web Frontend-- where my career began when I originally shifted away from Digital Marketingh-- and moving towards DevOps & Security.  And, for personal projects-- Robotics & LiDAR.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086ae
6	1196	7176	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default	6830c4f9f6a5ed0122b086af
\.


--
-- Data for Name: _pages_v_blocks_cta; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._pages_v_blocks_cta (_order, _parent_id, _path, id, rich_text, _uuid, block_name) FROM stdin;
4	2	version.layout	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a call to action", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is a custom layout building block ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "configured in the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA
1	11	version.layout	445	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	12	version.layout	446	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	13	version.layout	582	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	14	version.layout	583	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	23	version.layout	1195	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	7	version.layout	153	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env, in terms of database schema, content data, and media files. (That version is a fresh copy, prior to me going in and customizing aspects of the layout & db schema.). To deploy, you simply need a Linux server, then to clone the project, setup a Gitub Repo, add 5 deployment secrets (e.g. env vars & ssh credentials for the CICD task runner to connect to your server), and then the project is ready to go live.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Took a break after getting this thing deployed & setup.  Soon I'll return, recreate it as 2 smaller servers for blue-green deployment.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	8	version.layout	154	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env, in terms of database schema, content data, and media files. (That version is a fresh copy, prior to me going in and customizing aspects of the layout & db schema.). To deploy, you simply need a Linux server, then to clone the project, setup a Gitub Repo, add 5 deployment secrets (e.g. env vars & ssh credentials for the CICD task runner to connect to your server), and then the project is ready to go live.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Took a break after getting this thing deployed & setup.  Soon I'll return, recreate it as 2 smaller servers for blue-green deployment.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
2	5	version.layout	150	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env, in terms of database schema, content data, and media files. (That version is a fresh copy, prior to me going in and customizing aspects of the layout & db schema.). To deploy, you simply need a Linux server, then to clone the project, setup a Gitub Repo, add 5 deployment secrets (e.g. env vars & ssh credentials for the CICD task runner to connect to your server), and then the project is ready to go live.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Took a break after getting this thing deployed & setup.  Soon I'll return, recreate it as 2 smaller servers for blue-green deployment.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
2	6	version.layout	151	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env, in terms of database schema, content data, and media files. (That version is a fresh copy, prior to me going in and customizing aspects of the layout & db schema.). To deploy, you simply need a Linux server, then to clone the project, setup a Gitub Repo, add 5 deployment secrets (e.g. env vars & ssh credentials for the CICD task runner to connect to your server), and then the project is ready to go live.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Took a break after getting this thing deployed & setup.  Soon I'll return, recreate it as 2 smaller servers for blue-green deployment.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	3	version.layout	98	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env, in terms of database schema, content data, and media files. (That version is a fresh copy, prior to me going in and customizing aspects of the layout & db schema.). To deploy, you simply need a Linux server, then to clone the project, setup a Gitub Repo, add 5 deployment secrets (e.g. env vars & ssh credentials for the CICD task runner to connect to your server), and then the project is ready to go live.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Took a break after getting this thing deployed & setup.  Soon I'll return, recreate it as 2 smaller servers for blue-green deployment.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA
1	4	version.layout	99	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env, in terms of database schema, content data, and media files. (That version is a fresh copy, prior to me going in and customizing aspects of the layout & db schema.). To deploy, you simply need a Linux server, then to clone the project, setup a Gitub Repo, add 5 deployment secrets (e.g. env vars & ssh credentials for the CICD task runner to connect to your server), and then the project is ready to go live.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Took a break after getting this thing deployed & setup.  Soon I'll return, recreate it as 2 smaller servers for blue-green deployment.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA
1	19	version.layout	678	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	9	version.layout	160	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	10	version.layout	161	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	15	version.layout	611	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	16	version.layout	612	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	20	version.layout	679	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	17	version.layout	674	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	18	version.layout	675	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	21	version.layout	1192	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	22	version.layout	1193	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	24	version.layout	1196	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	25	version.layout	1231	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	26	version.layout	1232	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	27	version.layout	1235	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	28	version.layout	1236	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	29	version.layout	1243	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	30	version.layout	1244	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	31	version.layout	1278	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
1	32	version.layout	1279	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b4	CTA About Construction
\.


--
-- Data for Name: _pages_v_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._pages_v_blocks_cta_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
1	1	1	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086b3
\.


--
-- Data for Name: _pages_v_blocks_form_block; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._pages_v_blocks_form_block (_order, _parent_id, _path, id, form_id, enable_intro, intro_content, _uuid, block_name) FROM stdin;
1	1	version.layout	1	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Example contact form:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	6830c4f9f6a5ed0122b086b5	\N
\.


--
-- Data for Name: _pages_v_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._pages_v_blocks_media_block (_order, _parent_id, _path, id, media_id, _uuid, block_name) FROM stdin;
2	2	version.layout	1	3	6830c4f9f6a5ed0122b086b1	Media Block
\.


--
-- Data for Name: _pages_v_rels; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._pages_v_rels (id, "order", parent_id, path, pages_id, posts_id, categories_id) FROM stdin;
\.


--
-- Data for Name: _pages_v_version_hero_links; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._pages_v_version_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance, _uuid) FROM stdin;
1	2	1	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	2	2	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	7	305	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	7	306	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	8	307	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	8	308	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	19	1355	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	19	1356	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	20	1357	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	20	1358	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	9	319	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	9	320	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	10	321	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	10	322	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	29	2485	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	29	2486	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	30	2487	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	30	2488	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	11	889	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	11	890	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	12	891	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	12	892	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	15	1221	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	15	1222	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	16	1223	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	16	1224	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	25	2461	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	25	2462	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	26	2463	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	26	2464	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	27	2469	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	27	2470	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	28	2471	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	28	2472	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	5	299	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	5	300	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	6	301	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	6	302	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	31	2555	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	31	2556	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	3	195	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	3	196	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	4	197	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	4	198	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	32	2557	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	32	2558	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	13	1163	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	13	1164	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	14	1165	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	14	1166	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	21	2383	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	21	2384	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	22	2385	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	22	2386	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	23	2389	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	23	2390	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	24	2391	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	24	2392	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	17	1347	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	17	1348	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
1	18	1349	custom	\N	/posts	All posts	default	6830c4f9f6a5ed0122b086a8
2	18	1350	custom	\N	/contact	Contact	outline	6830c4f9f6a5ed0122b086a9
\.


--
-- Data for Name: _posts_v; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._posts_v (id, parent_id, version_title, version_hero_image_id, version_content, version_meta_title, version_meta_image_id, version_meta_description, version_published_at, version_slug, version_slug_lock, version_updated_at, version_created_at, version__status, created_at, updated_at, latest, autosave) FROM stdin;
21	3	Automated Enterprise API Integration - Marketo & LiveChat (NodeJS)	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Automated Enterprise API Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Marketo LiveChat API Project (NodeJS)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "While at Pulse Secure I wrote a script in NodeJS to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decion model) and log any errors encountered. Then, once per day, a second script would email the admin about any new errors. Here's a simple visual explanation of how the project worked, at a high level.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a1", "media": 6, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project Explanation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The purpose of the project was to assist in keeping all marketing data in one place: in Marketo's database. However, I could easily do the same sort of API integration project with applications such as Salesforce, Netsuite, or SAP. It's simply a matter of using the API endpoints to return to you the data that you're looking for.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "APIs often have constraints though— in order to make sure their services don't get overburdened by requests to the point that they shut down under the heavy load. In the case of Marketo, it has a few constraints which my project needed to stay within the confines of.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Since Marketo's API constraints are what really made project interesting, I thought share with you an overview of how the script overcame these constraints (really, they're more like project criteria, to be rolled up with system requriements as part of systems analysis)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c6f748b3435c492f3a7b", "media": 7, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project Constraints & Architecture to Overcome Constraints", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The constraints were interesting because adhering to the constraints required control mechanisms which moderated the speed & volume of the flow of data, regarding both get (data download) & post (data upload) requests:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Batching get requests:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " The script begins by checking the date of the last time it ran, and uses this date timeframe in its search for LiveChat data. It also does a refresh of its Marketo API key. Once it does that, it's ready to roll, and the first real step in the data flow is to get LiveChat data. LiveChat's API doesn't really have many constraints to worry about. So, once we have that data, we can compare it to Marketo's data. But first we have to get the data from Marketo in a way which optimizes API usage efficiency.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The script needed to limit get requests for Marketo data into groups of up to 300. This means it can return up to 300 rows of Marketo data-- based on the 300 email addresses from LiveChat, passed into Marketo for looking up the rows. (Once I had the LiveChat visitor data, then I needed to cross reference which of the visitors are already listed in our marekto instance, by looking them up by email (used as a unique id), which required batching into groups of 300)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Batching post requests:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " Once the LiveChat data was compared to the Marketo data, and I knew which data needed to float up to Marekto (based on certain conditions, for example: if their geographical data already existed in Marketo, do not overwrite it. If it does not exist though, add it to the data object for upload.) There's a limit of 10 concurrent API requests per second. NodeJS is asynchronous though. Which makes it very fast. But it's also a bit tricky to control. The problem is that without controlling the stream of post requests-- for example, let's say there were 100 visitors in the past hour-- the API constraints would be quickly overwhelmed and marketo would refuse to accept all of our post requests.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "That is, uploading those 100 units of visitor data to Marketo at full speed (thanks to asynchronicity) would be delivered within perhaps half a second or so. The problem is that Marketo doesn't want to be pinged so many times, so quickly. It wants some breathing space.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The way I ended up controlling these batches of post requests so that all 100 data objects both don't fire all at once, immediately, is by using the NodeJS ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fee6d3a0a8d609065b5ae8", "type": "link", "fields": {"url": "https://github.com/yongzhihuang/PentaCode/blob/master/AsyncJs/asyncQueue.js", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "async library's queue() function", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ", which allows the developer to issue the post calls in small batches (adjustable) and at throttled increments (also adjustable). This allowed me to overcome the Rate limit and the Concurrency limit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Why does this matter?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " Basically, with asynchronous functions, they all fire immediately. With a get request function though, two main things happen: we fire our function (the \\"request\\"), and then we receive a response from the server we're communicating with. This entire process is one concurrent API call. With asynchronous function calls though, the speed of the request/response cycle depends a lot on just internet latency speeds. This means it's hard to predict how long the request will take.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Now, the concurrency limit says there's a max of 10 per second. So, what we could do is say, run one batch of 10 per second, right? Wrong. Unfortunately, it's very possible that one or some of those requests will take a little longer than others. So, I had to adjust the batches to something like two batches of four per second, just as an example, which adds up to eight per second. Another example that could work is one batch of seven per 750ms.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "But again, it the success of these depends in part on internet latency, hence it's wise to err on the side of being conservative, and reducing the API calls per second to whatever amount makes sense, to ensure that it's very unlikely that we surpass the limit. This is why asynchronous programming is challenging, fun, and interesting: because it is sometimes difficult to control precisely.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	Automated MarTech API Integration - Marketo & LiveChat	6	A  NodeJS project to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decision model) and log any errors encountered. 	2025-05-23 18:56:57.209+00	automated-enterprise-api-integration---marketo--livechat-nodejs	t	2025-05-23 19:36:28.539+00	2025-05-23 18:56:57.209+00	published	2025-05-23 19:36:28.565+00	2025-05-23 19:36:28.565+00	t	f
20	3	Automated Enterprise API Integration - Marketo & LiveChat (NodeJS)	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Automated Enterprise API Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Marketo LiveChat API Project (NodeJS)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "While at Pulse Secure I wrote a script in NodeJS to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decion model) and log any errors encountered. Then, once per day, a second script would email the admin about any new errors. Here's a simple visual explanation of how the project worked, at a high level.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a1", "media": 6, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project Explanation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The purpose of the project was to assist in keeping all marketing data in one place: in Marketo's database. However, I could easily do the same sort of API integration project with applications such as Salesforce, Netsuite, or SAP. It's simply a matter of using the API endpoints to return to you the data that you're looking for.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "APIs often have constraints though— in order to make sure their services don't get overburdened by requests to the point that they shut down under the heavy load. In the case of Marketo, it has a few constraints which my project needed to stay within the confines of.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Since Marketo's API constraints are what really made project interesting, I thought share with you an overview of how the script overcame these constraints (really, they're more like project criteria, to be rolled up with system requriements as part of systems analysis)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c6f748b3435c492f3a7b", "media": 7, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project Constraints & Architecture to Overcome Constraints", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The constraints were interesting because adhering to the constraints required control mechanisms which moderated the speed & volume of the flow of data, regarding both get (data download) & post (data upload) requests:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Batching get requests:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " The script begins by checking the date of the last time it ran, and uses this date timeframe in its search for LiveChat data. It also does a refresh of its Marketo API key. Once it does that, it's ready to roll, and the first real step in the data flow is to get LiveChat data. LiveChat's API doesn't really have many constraints to worry about. So, once we have that data, we can compare it to Marketo's data. But first we have to get the data from Marketo in a way which optimizes API usage efficiency.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The script needed to limit get requests for Marketo data into groups of up to 300. This means it can return up to 300 rows of Marketo data-- based on the 300 email addresses from LiveChat, passed into Marketo for looking up the rows. (Once I had the LiveChat visitor data, then I needed to cross reference which of the visitors are already listed in our marekto instance, by looking them up by email (used as a unique id), which required batching into groups of 300)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Batching post requests:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " Once the LiveChat data was compared to the Marketo data, and I knew which data needed to float up to Marekto (based on certain conditions, for example: if their geographical data already existed in Marketo, do not overwrite it. If it does not exist though, add it to the data object for upload.) There's a limit of 10 concurrent API requests per second. NodeJS is asynchronous though. Which makes it very fast. But it's also a bit tricky to control. The problem is that without controlling the stream of post requests-- for example, let's say there were 100 visitors in the past hour-- the API constraints would be quickly overwhelmed and marketo would refuse to accept all of our post requests.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "That is, uploading those 100 units of visitor data to Marketo at full speed (thanks to asynchronicity) would be delivered within perhaps half a second or so. The problem is that Marketo doesn't want to be pinged so many times, so quickly. It wants some breathing space.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The way I ended up controlling these batches of post requests so that all 100 data objects both don't fire all at once, immediately, is by using the NodeJS ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fee6d3a0a8d609065b5ae8", "type": "link", "fields": {"url": "https://github.com/yongzhihuang/PentaCode/blob/master/AsyncJs/asyncQueue.js", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "async library's queue() function", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ", which allows the developer to issue the post calls in small batches (adjustable) and at throttled increments (also adjustable). This allowed me to overcome the Rate limit and the Concurrency limit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Why does this matter?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " Basically, with asynchronous functions, they all fire immediately. With a get request function though, two main things happen: we fire our function (the \\"request\\"), and then we receive a response from the server we're communicating with. This entire process is one concurrent API call. With asynchronous function calls though, the speed of the request/response cycle depends a lot on just internet latency speeds. This means it's hard to predict how long the request will take.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Now, the concurrency limit says there's a max of 10 per second. So, what we could do is say, run one batch of 10 per second, right? Wrong. Unfortunately, it's very possible that one or some of those requests will take a little longer than others. So, I had to adjust the batches to something like two batches of four per second, just as an example, which adds up to eight per second. Another example that could work is one batch of seven per 750ms.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "But again, it the success of these depends in part on internet latency, hence it's wise to err on the side of being conservative, and reducing the API calls per second to whatever amount makes sense, to ensure that it's very unlikely that we surpass the limit. This is why asynchronous programming is challenging, fun, and interesting: because it is sometimes difficult to control precisely.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	Automated MarTech API Integration - Marketo & LiveChat	6	A  NodeJS project to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decision model) and log any errors encountered. 	2025-05-23 18:56:57.209+00	automated-enterprise-api-integration---marketo--livechat-nodejs	t	2025-05-23 19:36:26.794+00	2025-05-23 18:56:57.209+00	draft	2025-05-23 19:36:23.758+00	2025-05-23 19:36:26.796+00	f	t
16	2	Timetracker project - Full Stack Web App built with ReactJS, ExpressJS, PostgreSQL	8	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Timetracker project", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS | ExpressJS | NodeJS | SASS | PostgreSQL", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "An open source NodeJS & ReactJS project for tracking the time of hourly workers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "I built this application because it seems like a need for many small businesses with hourly workers — a way to quickly and easily assign tasks and allow workers to receive the project and location information they need, as well as clock in and out.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Although such software exists, I was unable to find an open source NodeJS version, so I decided to create one to better understand the process of building it in NodeJS & ReactJS.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Although I previously had a demo running, at some point I accidentally uploaded some changes which github's dependabot service updated to different npm package versions, breaking the project.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "So, I decided to remove the live demo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "You can see how the app functions via the .gif videos below.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The main purpose of the project was simply to learn ReactJS and improve NodeJS skills", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Goals for user interface", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My goal was to design the application with minimalism in mind.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• The user interface is based on opening and closing of viewports, which are hidden within and selected from the \\"Dashboard\\" menu button.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Each viewport is simply a box with a close button in the upper right corner. The user can open as many viewports as they want in order to create the \\"dashboard\\" or set of viewports they want to see.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• The viewports also help to maintain a sense of visually modularity in the application. This makes it easy to introduce new viewports, each with their own independent functionality, such as data charts, tabular data, or other data visualizations or business processes such as project quotes.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The main design frameworks used are bulma and bootstrap.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Purpose and ideas for expansion", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The idea behind this project is simply to provide various modules for providing business data, to small businesses. In this initial version of the project, the administrator can view timesheets on a table and a map, add new database rows for locations, projects, and employee activities, as well as edit and delete data. The timesheets time and map are updated in real time whenever an employee clocks in or out.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "An idea for expansion of this project would be to incorporate other business applications with modules alongside the modules of this employee tracking system. One example I've though about is a basic property management application— with the system provided here, an administrator can track the work of their maintenance technicians, gardeners, and property managers for example. With this foundation, additional modules could be added for setting up customer accounts (perhaps even do so with an API for a CRM, or shared DB), and monitoring rental payments, as well as a dashboard for tenants to view and pay their rent, and a scheduling system so that customers can schedule maintenance visits.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Other future modules might include an internal company news feed, a messaging system for communication about projects, charts to display worktime logged, expense tracking, or even video/IoT-related modules such as receipt scanning, warehouse monitoring, or equipment scanning.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Next steps", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I will be turning this project into a basic SaaS (multi-tenant monthly subscription app), which will involve a few more steps, including:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Admin user account layer for multi-tenant access — I'll create an \\"accounts\\" table, and use its ID as a prefix on the other tables in the system. In this way, each account will have its own set of database tables, keeping it separate from other accounts (the \\"timesheets\\" table becomes \\"account2_timesheets\\" for admin account number 2, for example).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Brandable-pages — the account holder will be able to upload their logo, select brand colors to use as website main colors, and set up a few pages, such as a public facing landing page about the company, a list of jobs available to apply to, and private company pages for internal company information. From this area, employees will login to their accounts, within the administrator company's account", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• An email verification step for all users — this will be a simple url query, set up with a hash code and user email address to be queried and matched against the database.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A dashboard for managers — A cross between the employee and admin dashboards, where project managers can assign activities to and communicate with their team, as well as generate quotes for customers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A subscription system", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A flashy promo page", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Once all of that is done, I can add on new business modules.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Timesheet Tracker", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Real-time display of new clockin/clock out events", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Table and map view (clicking on table displays marker)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Timerange search, with default value set to the past two weeks", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "UI Slider allows user to adjust viewport width of table or map shown", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b0869b", "media": 8, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Data creation via forms", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Allows user to create new data in selected table", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Autopopulated dropdown selector shows tables for which new data can be created", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Various autopopulated UI elements within forms, such as tables or dropdown selectors", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "On creation of new activity, the assigned employee receives the activity in their task list in real-time", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd6a5918de63a6db439f", "media": 11, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Data administration— editing and deleting data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "User double clicks to edit data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Simply select row and click 'delete' to remove data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Easy download of csv file for any table, such as timesheets", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd7e5918de63a6db43a0", "media": 12, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: View submitted resume documents and job applicant data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "View applicant resume in browser or download", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd905918de63a6db43a1", "media": 13, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: External API interaction, such as GPS lookup", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Address inputs are autocomplated and provide GPS coordinate lookup via google maps API", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd9f5918de63a6db43a2", "media": 14, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Employee Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Authentication", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Registration / Login / Logout system", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Passwords salted & hashed with bcrypt", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "User type & password comparison check on login", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdaf5918de63a6db43a3", "media": 15, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Task list", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Visual timeline of upcoming tasks updated in real time", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Clocking in & out, with real-time display in Admin timesheet table & map", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project information including map of location", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Employees have ability to create tasks for themselves", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdbd5918de63a6db43a4", "media": 16, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: User/Employee Profile", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Autocompletion of address via google maps API", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo upload, with preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Resume/document upload, with format check validation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdce5918de63a6db43a5", "media": 17, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}], "direction": "ltr"}}	Global Gaze: Beyond the Headlines	3	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	2025-05-23 18:56:57.157+00	timetrackerproject---full-stack-web-app-built-with-reactjs-expressjs-postgresql	t	2025-05-23 19:34:50.224+00	2025-05-23 18:56:57.156+00	published	2025-05-23 19:34:50.233+00	2025-05-23 19:34:50.233+00	f	f
5	2	Global Gaze: Beyond the Headlines	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b0869a", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Power of Resilience: Stories of Recovery and Hope", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Throughout history, regions across the globe have faced the devastating impact of natural disasters, the turbulence of political unrest, and the challenging ripples of economic downturns. In these moments of profound crisis, an often-underestimated force emerges: the indomitable resilience of the human spirit. These aren't just tales of mere survival, but stories of communities forging bonds, uniting with a collective purpose, and demonstrating an innate ability to overcome.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b0869b", "media": 2, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "From neighbors forming makeshift rescue teams during floods to entire cities rallying to rebuild after economic collapse, the essence of humanity is most evident in these acts of solidarity. As we delve into these narratives, we witness the transformative power of community spirit, where adversity becomes a catalyst for growth, unity, and a brighter, rebuilt future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b0869c", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Global Gaze: Beyond the Headlines	3	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	2025-05-23 18:56:57.157+00	global-gaze	t	2025-05-23 18:56:57.419+00	2025-05-23 18:56:57.156+00	published	2025-05-23 18:56:57.437+00	2025-05-23 18:56:57.438+00	f	f
2	2	Global Gaze: Beyond the Headlines	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Power of Resilience: Stories of Recovery and Hope", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Throughout history, regions across the globe have faced the devastating impact of natural disasters, the turbulence of political unrest, and the challenging ripples of economic downturns. In these moments of profound crisis, an often-underestimated force emerges: the indomitable resilience of the human spirit. These aren't just tales of mere survival, but stories of communities forging bonds, uniting with a collective purpose, and demonstrating an innate ability to overcome.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"media": 2, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "From neighbors forming makeshift rescue teams during floods to entire cities rallying to rebuild after economic collapse, the essence of humanity is most evident in these acts of solidarity. As we delve into these narratives, we witness the transformative power of community spirit, where adversity becomes a catalyst for growth, unity, and a brighter, rebuilt future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Global Gaze: Beyond the Headlines	3	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	2025-05-23 18:56:57.157+00	global-gaze	t	2025-05-23 18:56:57.159+00	2025-05-23 18:56:57.156+00	published	2025-05-23 18:56:57.165+00	2025-05-23 18:56:57.166+00	f	f
15	3	Automated Enterprise API Integration - Marketo & LiveChat (NodeJS)	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Automated Enterprise API Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Marketo LiveChat API Project (NodeJS)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "While at Pulse Secure I wrote a script in NodeJS to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decion model) and log any errors encountered. Then, once per day, a second script would email the admin about any new errors. Here's a simple visual explanation of how the project worked, at a high level.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a1", "media": 6, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project Explanation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The purpose of the project was to assist in keeping all marketing data in one place: in Marketo's database. However, I could easily do the same sort of API integration project with applications such as Salesforce, Netsuite, or SAP. It's simply a matter of using the API endpoints to return to you the data that you're looking for.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "APIs often have constraints though— in order to make sure their services don't get overburdened by requests to the point that they shut down under the heavy load. In the case of Marketo, it has a few constraints which my project needed to stay within the confines of.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Since Marketo's API constraints are what really made project interesting, I thought share with you an overview of how the script overcame these constraints (really, they're more like project criteria, to be rolled up with system requriements as part of systems analysis)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c6f748b3435c492f3a7b", "media": 7, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project Constraints & Architecture to Overcome Constraints", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The constraints were interesting because adhering to the constraints required control mechanisms which moderated the speed & volume of the flow of data, regarding both get (data download) & post (data upload) requests:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Batching get requests:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " The script begins by checking the date of the last time it ran, and uses this date timeframe in its search for LiveChat data. It also does a refresh of its Marketo API key. Once it does that, it's ready to roll, and the first real step in the data flow is to get LiveChat data. LiveChat's API doesn't really have many constraints to worry about. So, once we have that data, we can compare it to Marketo's data. But first we have to get the data from Marketo in a way which optimizes API usage efficiency.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The script needed to limit get requests for Marketo data into groups of up to 300. This means it can return up to 300 rows of Marketo data-- based on the 300 email addresses from LiveChat, passed into Marketo for looking up the rows. (Once I had the LiveChat visitor data, then I needed to cross reference which of the visitors are already listed in our marekto instance, by looking them up by email (used as a unique id), which required batching into groups of 300)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Batching post requests:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " Once the LiveChat data was compared to the Marketo data, and I knew which data needed to float up to Marekto (based on certain conditions, for example: if their geographical data already existed in Marketo, do not overwrite it. If it does not exist though, add it to the data object for upload.) There's a limit of 10 concurrent API requests per second. NodeJS is asynchronous though. Which makes it very fast. But it's also a bit tricky to control. The problem is that without controlling the stream of post requests-- for example, let's say there were 100 visitors in the past hour-- the API constraints would be quickly overwhelmed and marketo would refuse to accept all of our post requests.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "That is, uploading those 100 units of visitor data to Marketo at full speed (thanks to asynchronicity) would be delivered within perhaps half a second or so. The problem is that Marketo doesn't want to be pinged so many times, so quickly. It wants some breathing space.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The way I ended up controlling these batches of post requests so that all 100 data objects both don't fire all at once, immediately, is by using the NodeJS ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fee6d3a0a8d609065b5ae8", "type": "link", "fields": {"url": "https://github.com/yongzhihuang/PentaCode/blob/master/AsyncJs/asyncQueue.js", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "async library's queue() function", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ", which allows the developer to issue the post calls in small batches (adjustable) and at throttled increments (also adjustable). This allowed me to overcome the Rate limit and the Concurrency limit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Why does this matter?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " Basically, with asynchronous functions, they all fire immediately. With a get request function though, two main things happen: we fire our function (the \\"request\\"), and then we receive a response from the server we're communicating with. This entire process is one concurrent API call. With asynchronous function calls though, the speed of the request/response cycle depends a lot on just internet latency speeds. This means it's hard to predict how long the request will take.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Now, the concurrency limit says there's a max of 10 per second. So, what we could do is say, run one batch of 10 per second, right? Wrong. Unfortunately, it's very possible that one or some of those requests will take a little longer than others. So, I had to adjust the batches to something like two batches of four per second, just as an example, which adds up to eight per second. Another example that could work is one batch of seven per 750ms.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "But again, it the success of these depends in part on internet latency, hence it's wise to err on the side of being conservative, and reducing the API calls per second to whatever amount makes sense, to ensure that it's very unlikely that we surpass the limit. This is why asynchronous programming is challenging, fun, and interesting: because it is sometimes difficult to control precisely.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	Automated MarTech API Integration - Marketo & LiveChat	6	A project using NodeJS to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decision model) and log any errors encountered. 	2025-05-23 18:56:57.209+00	automated-enterprise-api-integration---marketo--livechat-nodejs	t	2025-05-23 19:07:52.641+00	2025-05-23 18:56:57.209+00	published	2025-05-23 19:07:52.648+00	2025-05-23 19:07:52.648+00	f	f
3	3	Dollar and Sense: The Financial Forecast	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": "This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money isn't just currency; ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "it's a language. ", "type": "text", "style": "", "detail": 0, "format": 2, "version": 1}, {"mode": "normal", "text": "Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money, in its essence, transcends the mere concept of coins and paper notes; it becomes a profound language that speaks of value, trust, and societal structures. Like any language, it possesses intricate nuances and subtleties that require a discerning understanding. It's in these depths where the calculated world of financial strategy collides with the raw, instinctive nature of human intuition. Just as a seasoned linguist might dissect the syntax and semantics of a sentence, a financial expert navigates the vast and tumultuous ocean of finance, guided not only by logic and data but also by gut feelings and foresight. Every transaction, investment, and financial decision becomes a dialogue in this expansive lexicon of commerce and value.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	2	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2025-05-23 18:56:57.209+00	dollar-and-sense-the-financial-forecast	t	2025-05-23 18:56:57.21+00	2025-05-23 18:56:57.209+00	published	2025-05-23 18:56:57.22+00	2025-05-23 18:56:57.221+00	f	f
6	3	Dollar and Sense: The Financial Forecast	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a0", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": "This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textFormat": 1}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money isn't just currency; ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "it's a language. ", "type": "text", "style": "", "detail": 0, "format": 2, "version": 1}, {"mode": "normal", "text": "Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Money, in its essence, transcends the mere concept of coins and paper notes; it becomes a profound language that speaks of value, trust, and societal structures. Like any language, it possesses intricate nuances and subtleties that require a discerning understanding. It's in these depths where the calculated world of financial strategy collides with the raw, instinctive nature of human intuition. Just as a seasoned linguist might dissect the syntax and semantics of a sentence, a financial expert navigates the vast and tumultuous ocean of finance, guided not only by logic and data but also by gut feelings and foresight. Every transaction, investment, and financial decision becomes a dialogue in this expansive lexicon of commerce and value.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a1", "media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a2", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	2	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2025-05-23 18:56:57.209+00	dollar-and-sense-the-financial-forecast	t	2025-05-23 18:56:57.52+00	2025-05-23 18:56:57.209+00	published	2025-05-23 18:56:57.526+00	2025-05-23 18:56:57.526+00	f	f
22	1	Predicting rates of crime based on economic indicators	18	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Predicting rates of crime based on economic indicators", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Predictive & Descriptive Statistical Analysis", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "As part of my graduate statistics course \\"Advanced Statistical Methods\\", using R, I data-engineered a dataset from public datasets, then tested various predictive models for their accuracy.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "After finding the right model, I demonstrate a training model and test real data against it. Similar methodology, on a larger scale, could be replicated to make predictions of business outcomes. (In fact, one project I would like to work on is a D3 web dashboard for business metrics statistically derived with R or Python).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b08690", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Here is the model I settled on: (note: each datapoint is per zipcode)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "[Crime] per Capita prediction =", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "[% of Population Below Poverty Level] *", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "[Median Household Income] *", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "[Median Rent price]", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Where Crime = Assault, Robbery, Burglary, or Theft, and * = interaction effects", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trained Models", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Here are three examples of trained models tested with actual data.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " It's a multivariate linear regression model trained with 80% of the dataset, and tested with 20%. Each time I test the model, a new randomly selected training model is created.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Test 1 of Assault, Robbery, Burglary and Theft models", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b08692", "media": 19, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Test 2 of Assault, Robbery, Burglary and Theft models", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830ce9c5918de63a6db43a9", "media": 20, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Test 3 of Assault, Robbery, Burglary and Theft models", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830ceb05918de63a6db43aa", "media": 21, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Explanation: How does this project worK?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h5", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The project is a ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67feaf4c9c8c58771d5deb78", "type": "link", "fields": {"url": "https://en.wikipedia.org/wiki/Linear_regression#Simple_and_multiple_linear_regression", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Multilinear regression model", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " which seeks to determine:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h4", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\"To what degree can a neighborhood's crime rates be predicted with economic factors?\\"", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "(which is what this summary represents:)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " Can Crime per Capita (in a zipcode) can be predicted with these economic factors below?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zipcode-based Economic factor 1: % of Population Below Poverty Level", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zipcode-based Economic factor 2: Median Household Income", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zipcode-based Economic factor 3: Median Rent price of dwellings", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h5", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The anwser is YES, quite strongly-- with 70-80% confidence, depending on crime type, in Austin, TX", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb79", "type": "link", "fields": {"url": "https://167.99.96.28/project-statistics#results", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "How you ask? Jump to how, in section: \\"The Results\\"", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h6", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I aggregated data from, and data-engineered, the following datasets:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb7a", "type": "link", "fields": {"url": "https://data.austintexas.gov/Building-and-Development/2014-Housing-Market-Analysis-Data-by-Zip-Code/hcnj-rei3/6", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "2014 Housing Market Analysis Dataset (Government Open Data initiative for Austin, TX)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ": Source of % of Population Below Poverty Level, Median Household Income, Median Rent price", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb7b", "type": "link", "fields": {"url": "https://data.austintexas.gov/dataset/Annual-Crime-2014/7g8v-xxja/about", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "2014 Crime dataset (Government Open Data initiative for Austin, TX)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ": 40,000 rows -- I aggregated & simplified variations of crime names using regex", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb7c", "type": "link", "fields": {"url": "https://www.rdocumentation.org/packages/choroplethrZip/versions/1.5.0/topics/df_pop_zip", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "2012 US Population Per Zipcode dataset", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ": R's local data library to access 2012 population statistics, using the following command: data(df_pop_zip)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb7d", "type": "link", "fields": {"url": "https://www.census.gov/geo/maps-data/data/gazetteer2015.html", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "2015 U.S. Gazetteer Map Data / US Census Department Geographic dataset:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " Although I aggregated this data into the final data table, it did not go into the final model", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The process:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"mode": "normal", "text": "I collected datasets for zipcodes in Austin showing the economic indicators mentioned above for each zipcode (the median income, median rent, and percentage of residents in poverty for 36 Austin, Texas zipcodes). I then cross-referenced these zipcodes with a dataset of about 40,000 crimes that occured in Austin in a particular year. I excluded all zipcodes except those for which I had data for both economic indicators and crimes. I then counted up crimes per category (6 categories total, after similfying category names: Assault, Burglary, Robbery, Theft, Homicide, and Rape), per zipcode. With these two datasets showing economic & crime data for particular zipdoes, we are able to produce an equation showing the degree of confidence with which we can predict rates of crime based on the chosen economic indicators.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The results:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "According to coefficient of determination for the various models, we can say that about 70%-80% of the variability in these crimes—Assault, Burglary, and Robbery (for the zip codes examined) can be explained by the variability in the selected economic indicators.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " That's a pretty strong connection which means that these three types of crimes can be relatively well explained based on these three economic indicators (income, rent, and % of population below poverty)! Based on this study, the other types of crimes examined (homicide and rape) cannot be reliably predicted based on economic indicators– this means they're less determined by economic health of a neighborhood, and more by other unknown/non-analyzed factors.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The ultimate purpose of the project was to create a statistical model from the \\"training\\" dataset – i.e. a model that explains the data – and then to test the \\"test\\" dataset upon the training model, to check how well the model can be used to predict crime rates based on the economic factors studied.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"id": "67feafa49c8c58771d5deb7f", "type": "link", "fields": {"url": "https://167.99.96.28/project-statistics#graphics", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "In the statistical charts-- the colorful lines at the top of this page", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": "-- we can visualize how well the model predicts crime based on the economic factor inputs from the training dataset. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "The green lines", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " show the boundaries of a 95% confidence interval (we can be \\"95% certain\\" that this interval contains the true mean of the population, which we use the data in the test group to simulate a sample of.), with ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "the redline", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " being the predicted average. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "The black line", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " represents the actual test data used. As you can see, the green lines capture the majority of the datapoints from the test data, showing that this model (using economic data to explain crimes) does quite a good job of some of these predicting specific crimes (assault, robbery, and especially burglary).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "I programmed the project for my two other teammates, who provided guidance, feedback, and ideation, and the final script can be viewed ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67feafa49c8c58771d5deb80", "type": "link", "fields": {"url": "https://github.com/pmeaney/r_projects/blob/master/vFinalVersion_projectScript.R", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "here", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Why do I enjoy statistical analysis?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I enjoy statistical analysis because it is a creative, fun, puzzle-solving way of thinking which allows us to explain the world through data in meaningful, measurable ways.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Throughout this particular statistics course (\\"Advanced Statistical Methods\\"), I noticed my thought processes changing. I noticed this especially while working on my statistics project, and for me, I think I really changed between the day I walked into the class, and the day class ended. I realized then that I had began to think more analytically and from a more data-driven, input-output, and equation-based perspective. Crafting equations from data is solving a puzzle– a puzzle where you can produce real and fascinating answers from apparently unrelated datasets! It's quite fun once you get into it!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In addition to changing the way you think, and having fun analyzing a real life puzzle... practicing statistics via scripting will improve your programming abilities! Learning R really helped me become a better programmer because before I could start playing with data, I spent plenty of time learning R's data types and data structures, which was useful when it came time to produce an analysis project and is applicable to programming.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h6", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I really like statistics in general for the contribution that the multivariate analysis makes when analyzing any kind of ideas, really. It is quite handy for empirically analyzing all sorts of ideas: whether business decisions, scientific & engineering projects, economic theories, or policy arguments. Being able to formulate an equation or model based on data is a skill in its own right.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h6", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "One of my favorite data visualizations is the \\"choropleth map\\", i.e. heatmap.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h6", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Here's a choropleth map of Assault frequency for zipcodes in Austin, TX (data is annual assaults reported in 2014).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cec65918de63a6db43b3", "media": 18, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	Statistical Computing in R: Predicting Crime based on Economic Factors	19	A Multilinear Regression Model to predict rates of crime based on neighborhood economic health, for the graduate statistics course "Advanced Quantitative Methods"	2025-05-23 18:56:57.07+00	predicting-rates-of-crime-based-on-economic-indicators	t	2025-05-23 19:39:15.322+00	2025-05-23 18:56:57.06+00	published	2025-05-23 19:39:15.341+00	2025-05-23 19:39:15.341+00	t	f
4	1	Digital Horizons: A Glimpse into Tomorrow	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b08690", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Rise of AI and Machine Learning", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "We find ourselves in a transformative era where artificial intelligence (AI) stands at the forefront of technological evolution. The ripple effects of its advancements are reshaping industries at an unprecedented pace. No longer are businesses bound by the limitations of tedious, manual processes. Instead, sophisticated machines, fueled by vast amounts of historical data, are now capable of making decisions previously left to human intuition. These intelligent systems are not only optimizing operations but also pioneering innovative approaches, heralding a new age of business transformation worldwide. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "To demonstrate basic AI functionality, here is a javascript snippet that makes a POST request to a generic AI API in order to generate text based on a prompt. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b08691", "code": "async function generateText(prompt) {\\n    const apiKey = 'your-api-key';\\n    const apiUrl = 'https://api.example.com/generate-text';\\n\\n    const response = await fetch(apiUrl, {\\n        method: 'POST',\\n        headers: {\\n            'Content-Type': 'application/json',\\n            'Authorization': `Bearer ${apiKey}`\\n        },\\n        body: JSON.stringify({\\n            model: 'text-generation-model',\\n            prompt: prompt,\\n            max_tokens: 50\\n        })\\n    });\\n\\n    const data = await response.json();\\n    console.log(data.choices[0].text.trim());\\n}\\n\\n// Example usage\\ngenerateText(\\"Once upon a time in a faraway land,\\");\\n", "language": "javascript", "blockName": "Generate Text", "blockType": "code"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "IoT: Connecting the World Around Us", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In today's rapidly evolving technological landscape, the Internet of Things (IoT) stands out as a revolutionary force. From transforming our residences with smart home systems to redefining transportation through connected cars, IoT's influence is palpable in nearly every facet of our daily lives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This technology hinges on the seamless integration of devices and systems, allowing them to communicate and collaborate effortlessly. With each connected device, we move a step closer to a world where convenience and efficiency are embedded in the very fabric of our existence. As a result, we're transitioning into an era where our surroundings intuitively respond to our needs, heralding a smarter and more interconnected global community.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b08692", "media": 3, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b08693", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Digital Horizons: A Glimpse into Tomorrow	1	Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.	2025-05-23 18:56:57.07+00	digital-horizons	t	2025-05-23 18:56:57.304+00	2025-05-23 18:56:57.06+00	published	2025-05-23 18:56:57.318+00	2025-05-23 18:56:57.318+00	f	f
1	1	Digital Horizons: A Glimpse into Tomorrow	1	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Disclaimer:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " This content is fabricated and for demonstration purposes only. To edit this post, ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "/admin", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "navigate to the admin dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Disclaimer", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Rise of AI and Machine Learning", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "We find ourselves in a transformative era where artificial intelligence (AI) stands at the forefront of technological evolution. The ripple effects of its advancements are reshaping industries at an unprecedented pace. No longer are businesses bound by the limitations of tedious, manual processes. Instead, sophisticated machines, fueled by vast amounts of historical data, are now capable of making decisions previously left to human intuition. These intelligent systems are not only optimizing operations but also pioneering innovative approaches, heralding a new age of business transformation worldwide. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "To demonstrate basic AI functionality, here is a javascript snippet that makes a POST request to a generic AI API in order to generate text based on a prompt. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "block", "fields": {"code": "async function generateText(prompt) {\\n    const apiKey = 'your-api-key';\\n    const apiUrl = 'https://api.example.com/generate-text';\\n\\n    const response = await fetch(apiUrl, {\\n        method: 'POST',\\n        headers: {\\n            'Content-Type': 'application/json',\\n            'Authorization': `Bearer ${apiKey}`\\n        },\\n        body: JSON.stringify({\\n            model: 'text-generation-model',\\n            prompt: prompt,\\n            max_tokens: 50\\n        })\\n    });\\n\\n    const data = await response.json();\\n    console.log(data.choices[0].text.trim());\\n}\\n\\n// Example usage\\ngenerateText(\\"Once upon a time in a faraway land,\\");\\n", "language": "javascript", "blockName": "Generate Text", "blockType": "code"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "IoT: Connecting the World Around Us", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In today's rapidly evolving technological landscape, the Internet of Things (IoT) stands out as a revolutionary force. From transforming our residences with smart home systems to redefining transportation through connected cars, IoT's influence is palpable in nearly every facet of our daily lives.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This technology hinges on the seamless integration of devices and systems, allowing them to communicate and collaborate effortlessly. With each connected device, we move a step closer to a world where convenience and efficiency are embedded in the very fabric of our existence. As a result, we're transitioning into an era where our surroundings intuitively respond to our needs, heralding a smarter and more interconnected global community.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}, {"type": "block", "fields": {"media": 3, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "block", "fields": {"style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Digital Horizons: A Glimpse into Tomorrow	1	Dive into the marvels of modern innovation, where the only constant is change. A journey where pixels and data converge to craft the future.	2025-05-23 18:56:57.07+00	digital-horizons	t	2025-05-23 18:56:57.074+00	2025-05-23 18:56:57.06+00	published	2025-05-23 18:56:57.089+00	2025-05-23 18:56:57.09+00	f	f
17	1	Predicting rates of crime based on economic indicators	18	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Predicting rates of crime based on economic indicators", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Predictive & Descriptive Statistical Analysis", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "As part of my graduate statistics course \\"Advanced Statistical Methods\\", using R, I data-engineered a dataset from public datasets, then tested various predictive models for their accuracy.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "After finding the right model, I demonstrate a training model and test real data against it. Similar methodology, on a larger scale, could be replicated to make predictions of business outcomes. (In fact, one project I would like to work on is a D3 web dashboard for business metrics statistically derived with R or Python).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b08690", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Here is the model I settled on: (note: each datapoint is per zipcode)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "[Crime] per Capita prediction =", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "[% of Population Below Poverty Level] *", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "[Median Household Income] *", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "[Median Rent price]", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Where Crime = Assault, Robbery, Burglary, or Theft, and * = interaction effects", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trained Models", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Here are three examples of trained models tested with actual data.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " It's a multivariate linear regression model trained with 80% of the dataset, and tested with 20%. Each time I test the model, a new randomly selected training model is created.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Test 1 of Assault, Robbery, Burglary and Theft models", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b08692", "media": 19, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Test 2 of Assault, Robbery, Burglary and Theft models", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830ce9c5918de63a6db43a9", "media": 20, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Test 3 of Assault, Robbery, Burglary and Theft models", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830ceb05918de63a6db43aa", "media": 21, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Explanation: How does this project worK?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h5", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The project is a ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67feaf4c9c8c58771d5deb78", "type": "link", "fields": {"url": "https://en.wikipedia.org/wiki/Linear_regression#Simple_and_multiple_linear_regression", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Multilinear regression model", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " which seeks to determine:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h4", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\"To what degree can a neighborhood's crime rates be predicted with economic factors?\\"", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "(which is what this summary represents:)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " Can Crime per Capita (in a zipcode) can be predicted with these economic factors below?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zipcode-based Economic factor 1: % of Population Below Poverty Level", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zipcode-based Economic factor 2: Median Household Income", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zipcode-based Economic factor 3: Median Rent price of dwellings", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h5", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The anwser is YES, quite strongly-- with 70-80% confidence, depending on crime type, in Austin, TX", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb79", "type": "link", "fields": {"url": "https://167.99.96.28/project-statistics#results", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "How you ask? Jump to how, in section: \\"The Results\\"", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h6", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I aggregated data from, and data-engineered, the following datasets:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb7a", "type": "link", "fields": {"url": "https://data.austintexas.gov/Building-and-Development/2014-Housing-Market-Analysis-Data-by-Zip-Code/hcnj-rei3/6", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "2014 Housing Market Analysis Dataset (Government Open Data initiative for Austin, TX)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ": Source of % of Population Below Poverty Level, Median Household Income, Median Rent price", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb7b", "type": "link", "fields": {"url": "https://data.austintexas.gov/dataset/Annual-Crime-2014/7g8v-xxja/about", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "2014 Crime dataset (Government Open Data initiative for Austin, TX)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ": 40,000 rows -- I aggregated & simplified variations of crime names using regex", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb7c", "type": "link", "fields": {"url": "https://www.rdocumentation.org/packages/choroplethrZip/versions/1.5.0/topics/df_pop_zip", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "2012 US Population Per Zipcode dataset", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ": R's local data library to access 2012 population statistics, using the following command: data(df_pop_zip)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb7d", "type": "link", "fields": {"url": "https://www.census.gov/geo/maps-data/data/gazetteer2015.html", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "2015 U.S. Gazetteer Map Data / US Census Department Geographic dataset:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " Although I aggregated this data into the final data table, it did not go into the final model", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The process:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"mode": "normal", "text": "I collected datasets for zipcodes in Austin showing the economic indicators mentioned above for each zipcode (the median income, median rent, and percentage of residents in poverty for 36 Austin, Texas zipcodes). I then cross-referenced these zipcodes with a dataset of about 40,000 crimes that occured in Austin in a particular year. I excluded all zipcodes except those for which I had data for both economic indicators and crimes. I then counted up crimes per category (6 categories total, after similfying category names: Assault, Burglary, Robbery, Theft, Homicide, and Rape), per zipcode. With these two datasets showing economic & crime data for particular zipdoes, we are able to produce an equation showing the degree of confidence with which we can predict rates of crime based on the chosen economic indicators.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The results:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "According to coefficient of determination for the various models, we can say that about 70%-80% of the variability in these crimes—Assault, Burglary, and Robbery (for the zip codes examined) can be explained by the variability in the selected economic indicators.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " That's a pretty strong connection which means that these three types of crimes can be relatively well explained based on these three economic indicators (income, rent, and % of population below poverty)! Based on this study, the other types of crimes examined (homicide and rape) cannot be reliably predicted based on economic indicators– this means they're less determined by economic health of a neighborhood, and more by other unknown/non-analyzed factors.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The ultimate purpose of the project was to create a statistical model from the \\"training\\" dataset – i.e. a model that explains the data – and then to test the \\"test\\" dataset upon the training model, to check how well the model can be used to predict crime rates based on the economic factors studied.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"id": "67feafa49c8c58771d5deb7f", "type": "link", "fields": {"url": "https://167.99.96.28/project-statistics#graphics", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "In the statistical charts-- the colorful lines at the top of this page", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": "-- we can visualize how well the model predicts crime based on the economic factor inputs from the training dataset. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "The green lines", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " show the boundaries of a 95% confidence interval (we can be \\"95% certain\\" that this interval contains the true mean of the population, which we use the data in the test group to simulate a sample of.), with ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "the redline", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " being the predicted average. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "The black line", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " represents the actual test data used. As you can see, the green lines capture the majority of the datapoints from the test data, showing that this model (using economic data to explain crimes) does quite a good job of some of these predicting specific crimes (assault, robbery, and especially burglary).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "I programmed the project for my two other teammates, who provided guidance, feedback, and ideation, and the final script can be viewed ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67feafa49c8c58771d5deb80", "type": "link", "fields": {"url": "https://github.com/pmeaney/r_projects/blob/master/vFinalVersion_projectScript.R", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "here", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Why do I enjoy statistical analysis?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I enjoy statistical analysis because it is a creative, fun, puzzle-solving way of thinking which allows us to explain the world through data in meaningful, measurable ways.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Throughout this particular statistics course (\\"Advanced Statistical Methods\\"), I noticed my thought processes changing. I noticed this especially while working on my statistics project, and for me, I think I really changed between the day I walked into the class, and the day class ended. I realized then that I had began to think more analytically and from a more data-driven, input-output, and equation-based perspective. Crafting equations from data is solving a puzzle– a puzzle where you can produce real and fascinating answers from apparently unrelated datasets! It's quite fun once you get into it!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In addition to changing the way you think, and having fun analyzing a real life puzzle... practicing statistics via scripting will improve your programming abilities! Learning R really helped me become a better programmer because before I could start playing with data, I spent plenty of time learning R's data types and data structures, which was useful when it came time to produce an analysis project and is applicable to programming.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h6", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I really like statistics in general for the contribution that the multivariate analysis makes when analyzing any kind of ideas, really. It is quite handy for empirically analyzing all sorts of ideas: whether business decisions, scientific & engineering projects, economic theories, or policy arguments. Being able to formulate an equation or model based on data is a skill in its own right.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h6", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "One of my favorite data visualizations is the \\"choropleth map\\", i.e. heatmap.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h6", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Here's a choropleth map of Assault frequency for zipcodes in Austin, TX (data is annual assaults reported in 2014).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cec65918de63a6db43b3", "media": 18, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	Statistical Computing in R: Predicting Crime based on Economic Factors	19	A Multilinear Regression Model to predict rates of crime based on neighborhood economic health, for the graduate statistics course "Advanced Quantitative Methods"	2025-05-23 18:56:57.07+00	predicting-rates-of-crime-based-on-economic-indicators	t	2025-05-23 19:39:11.372+00	2025-05-23 18:56:57.06+00	draft	2025-05-23 19:35:01.075+00	2025-05-23 19:39:11.374+00	f	t
13	2	Timetracker project - Full Stack Web App built with ReactJS, ExpressJS, PostgreSQL	8	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Timetracker project", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS | ExpressJS | NodeJS | SASS | PostgreSQL", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "An open source NodeJS & ReactJS project for tracking the time of hourly workers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "I built this application because it seems like a need for many small businesses with hourly workers — a way to quickly and easily assign tasks and allow workers to receive the project and location information they need, as well as clock in and out.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Although such software exists, I was unable to find an open source NodeJS version, so I decided to create one to better understand the process of building it in NodeJS & ReactJS.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Although I previously had a demo running, at some point I accidentally uploaded some changes which github's dependabot service updated to different npm package versions, breaking the project.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "So, I decided to remove the live demo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "You can see how the app functions via the .gif videos below.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The main purpose of the project was simply to learn ReactJS and improve NodeJS skills", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Goals for user interface", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My goal was to design the application with minimalism in mind.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• The user interface is based on opening and closing of viewports, which are hidden within and selected from the \\"Dashboard\\" menu button.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Each viewport is simply a box with a close button in the upper right corner. The user can open as many viewports as they want in order to create the \\"dashboard\\" or set of viewports they want to see.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• The viewports also help to maintain a sense of visually modularity in the application. This makes it easy to introduce new viewports, each with their own independent functionality, such as data charts, tabular data, or other data visualizations or business processes such as project quotes.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The main design frameworks used are bulma and bootstrap.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Purpose and ideas for expansion", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The idea behind this project is simply to provide various modules for providing business data, to small businesses. In this initial version of the project, the administrator can view timesheets on a table and a map, add new database rows for locations, projects, and employee activities, as well as edit and delete data. The timesheets time and map are updated in real time whenever an employee clocks in or out.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "An idea for expansion of this project would be to incorporate other business applications with modules alongside the modules of this employee tracking system. One example I've though about is a basic property management application— with the system provided here, an administrator can track the work of their maintenance technicians, gardeners, and property managers for example. With this foundation, additional modules could be added for setting up customer accounts (perhaps even do so with an API for a CRM, or shared DB), and monitoring rental payments, as well as a dashboard for tenants to view and pay their rent, and a scheduling system so that customers can schedule maintenance visits.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Other future modules might include an internal company news feed, a messaging system for communication about projects, charts to display worktime logged, expense tracking, or even video/IoT-related modules such as receipt scanning, warehouse monitoring, or equipment scanning.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Next steps", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I will be turning this project into a basic SaaS (multi-tenant monthly subscription app), which will involve a few more steps, including:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Admin user account layer for multi-tenant access — I'll create an \\"accounts\\" table, and use its ID as a prefix on the other tables in the system. In this way, each account will have its own set of database tables, keeping it separate from other accounts (the \\"timesheets\\" table becomes \\"account2_timesheets\\" for admin account number 2, for example).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Brandable-pages — the account holder will be able to upload their logo, select brand colors to use as website main colors, and set up a few pages, such as a public facing landing page about the company, a list of jobs available to apply to, and private company pages for internal company information. From this area, employees will login to their accounts, within the administrator company's account", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• An email verification step for all users — this will be a simple url query, set up with a hash code and user email address to be queried and matched against the database.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A dashboard for managers — A cross between the employee and admin dashboards, where project managers can assign activities to and communicate with their team, as well as generate quotes for customers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A subscription system", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A flashy promo page", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Once all of that is done, I can add on new business modules.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Timesheet Tracker", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Real-time display of new clockin/clock out events", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Table and map view (clicking on table displays marker)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Timerange search, with default value set to the past two weeks", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "UI Slider allows user to adjust viewport width of table or map shown", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b0869b", "media": 8, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Data creation via forms", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Allows user to create new data in selected table", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Autopopulated dropdown selector shows tables for which new data can be created", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Various autopopulated UI elements within forms, such as tables or dropdown selectors", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "On creation of new activity, the assigned employee receives the activity in their task list in real-time", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd6a5918de63a6db439f", "media": 11, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Data administration— editing and deleting data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "User double clicks to edit data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Simply select row and click 'delete' to remove data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Easy download of csv file for any table, such as timesheets", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd7e5918de63a6db43a0", "media": 12, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: View submitted resume documents and job applicant data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "View applicant resume in browser or download", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd905918de63a6db43a1", "media": 13, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: External API interaction, such as GPS lookup", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Address inputs are autocomplated and provide GPS coordinate lookup via google maps API", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd9f5918de63a6db43a2", "media": 14, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Employee Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Authentication", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Registration / Login / Logout system", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Passwords salted & hashed with bcrypt", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "User type & password comparison check on login", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdaf5918de63a6db43a3", "media": 15, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Task list", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Visual timeline of upcoming tasks updated in real time", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Clocking in & out, with real-time display in Admin timesheet table & map", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project information including map of location", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Employees have ability to create tasks for themselves", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdbd5918de63a6db43a4", "media": 16, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: User/Employee Profile", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Autocompletion of address via google maps API", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo upload, with preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Resume/document upload, with format check validation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdce5918de63a6db43a5", "media": 17, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}], "direction": "ltr"}}	Global Gaze: Beyond the Headlines	3	Explore the untold and overlooked. A magnified view into the corners of the world, where every story deserves its spotlight.	2025-05-23 18:56:57.157+00	timetrackerproject---full-stack-web-app-built-with-reactjs-expressjs-postgresql	t	2025-05-23 19:34:48.609+00	2025-05-23 18:56:57.156+00	draft	2025-05-23 19:06:09.998+00	2025-05-23 19:34:48.612+00	f	t
18	2	Timetracker project - Full Stack Web App built with ReactJS, ExpressJS, PostgreSQL	8	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Timetracker project", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS | ExpressJS | NodeJS | SASS | PostgreSQL", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "An open source NodeJS & ReactJS project for tracking the time of hourly workers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "I built this application because it seems like a need for many small businesses with hourly workers — a way to quickly and easily assign tasks and allow workers to receive the project and location information they need, as well as clock in and out.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Although such software exists, I was unable to find an open source NodeJS version, so I decided to create one to better understand the process of building it in NodeJS & ReactJS.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Although I previously had a demo running, at some point I accidentally uploaded some changes which github's dependabot service updated to different npm package versions, breaking the project.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "So, I decided to remove the live demo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "You can see how the app functions via the .gif videos below.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The main purpose of the project was simply to learn ReactJS and improve NodeJS skills", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Goals for user interface", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My goal was to design the application with minimalism in mind.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• The user interface is based on opening and closing of viewports, which are hidden within and selected from the \\"Dashboard\\" menu button.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Each viewport is simply a box with a close button in the upper right corner. The user can open as many viewports as they want in order to create the \\"dashboard\\" or set of viewports they want to see.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• The viewports also help to maintain a sense of visually modularity in the application. This makes it easy to introduce new viewports, each with their own independent functionality, such as data charts, tabular data, or other data visualizations or business processes such as project quotes.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The main design frameworks used are bulma and bootstrap.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Purpose and ideas for expansion", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The idea behind this project is simply to provide various modules for providing business data, to small businesses. In this initial version of the project, the administrator can view timesheets on a table and a map, add new database rows for locations, projects, and employee activities, as well as edit and delete data. The timesheets time and map are updated in real time whenever an employee clocks in or out.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "An idea for expansion of this project would be to incorporate other business applications with modules alongside the modules of this employee tracking system. One example I've though about is a basic property management application— with the system provided here, an administrator can track the work of their maintenance technicians, gardeners, and property managers for example. With this foundation, additional modules could be added for setting up customer accounts (perhaps even do so with an API for a CRM, or shared DB), and monitoring rental payments, as well as a dashboard for tenants to view and pay their rent, and a scheduling system so that customers can schedule maintenance visits.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Other future modules might include an internal company news feed, a messaging system for communication about projects, charts to display worktime logged, expense tracking, or even video/IoT-related modules such as receipt scanning, warehouse monitoring, or equipment scanning.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Next steps", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I will be turning this project into a basic SaaS (multi-tenant monthly subscription app), which will involve a few more steps, including:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Admin user account layer for multi-tenant access — I'll create an \\"accounts\\" table, and use its ID as a prefix on the other tables in the system. In this way, each account will have its own set of database tables, keeping it separate from other accounts (the \\"timesheets\\" table becomes \\"account2_timesheets\\" for admin account number 2, for example).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Brandable-pages — the account holder will be able to upload their logo, select brand colors to use as website main colors, and set up a few pages, such as a public facing landing page about the company, a list of jobs available to apply to, and private company pages for internal company information. From this area, employees will login to their accounts, within the administrator company's account", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• An email verification step for all users — this will be a simple url query, set up with a hash code and user email address to be queried and matched against the database.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A dashboard for managers — A cross between the employee and admin dashboards, where project managers can assign activities to and communicate with their team, as well as generate quotes for customers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A subscription system", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A flashy promo page", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Once all of that is done, I can add on new business modules.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Timesheet Tracker", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Real-time display of new clockin/clock out events", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Table and map view (clicking on table displays marker)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Timerange search, with default value set to the past two weeks", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "UI Slider allows user to adjust viewport width of table or map shown", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b0869b", "media": 8, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Data creation via forms", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Allows user to create new data in selected table", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Autopopulated dropdown selector shows tables for which new data can be created", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Various autopopulated UI elements within forms, such as tables or dropdown selectors", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "On creation of new activity, the assigned employee receives the activity in their task list in real-time", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd6a5918de63a6db439f", "media": 11, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Data administration— editing and deleting data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "User double clicks to edit data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Simply select row and click 'delete' to remove data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Easy download of csv file for any table, such as timesheets", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd7e5918de63a6db43a0", "media": 12, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: View submitted resume documents and job applicant data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "View applicant resume in browser or download", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd905918de63a6db43a1", "media": 13, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: External API interaction, such as GPS lookup", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Address inputs are autocomplated and provide GPS coordinate lookup via google maps API", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd9f5918de63a6db43a2", "media": 14, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Employee Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Authentication", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Registration / Login / Logout system", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Passwords salted & hashed with bcrypt", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "User type & password comparison check on login", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdaf5918de63a6db43a3", "media": 15, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Task list", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Visual timeline of upcoming tasks updated in real time", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Clocking in & out, with real-time display in Admin timesheet table & map", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project information including map of location", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Employees have ability to create tasks for themselves", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdbd5918de63a6db43a4", "media": 16, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: User/Employee Profile", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Autocompletion of address via google maps API", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo upload, with preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Resume/document upload, with format check validation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdce5918de63a6db43a5", "media": 17, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}], "direction": "ltr"}}	Timetracker project - Full Stack Web App built with ReactJS, ExpressJS, PostgreSQL	8	An open source NodeJS & ReactJS project for tracking the time of hourly workers.  built with ReactJS, ExpressJS, PostgreSQL	2025-05-23 18:56:57.157+00	timetrackerproject---full-stack-web-app-built-with-reactjs-expressjs-postgresql	t	2025-05-23 19:35:50.443+00	2025-05-23 18:56:57.156+00	draft	2025-05-23 19:35:31.106+00	2025-05-23 19:35:50.446+00	f	t
8	3	Automated Enterprise API Integration - Marketo & LiveChat (NodeJS)	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Automated Enterprise API Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Marketo LiveChat API Project (NodeJS)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "While at Pulse Secure I wrote a script in NodeJS to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decion model) and log any errors encountered. Then, once per day, a second script would email the admin about any new errors. Here's a simple visual explanation of how the project worked, at a high level.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a1", "media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a2", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	2	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2025-05-23 18:56:57.209+00	automated-enterprise-api-integration---marketo--livechat-nodejs	t	2025-05-23 19:04:12.551+00	2025-05-23 18:56:57.209+00	published	2025-05-23 19:04:12.561+00	2025-05-23 19:04:12.561+00	f	f
14	3	Automated Enterprise API Integration - Marketo & LiveChat (NodeJS)	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Automated Enterprise API Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Marketo LiveChat API Project (NodeJS)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "While at Pulse Secure I wrote a script in NodeJS to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decion model) and log any errors encountered. Then, once per day, a second script would email the admin about any new errors. Here's a simple visual explanation of how the project worked, at a high level.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a1", "media": 6, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project Explanation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The purpose of the project was to assist in keeping all marketing data in one place: in Marketo's database. However, I could easily do the same sort of API integration project with applications such as Salesforce, Netsuite, or SAP. It's simply a matter of using the API endpoints to return to you the data that you're looking for.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "APIs often have constraints though— in order to make sure their services don't get overburdened by requests to the point that they shut down under the heavy load. In the case of Marketo, it has a few constraints which my project needed to stay within the confines of.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Since Marketo's API constraints are what really made project interesting, I thought share with you an overview of how the script overcame these constraints (really, they're more like project criteria, to be rolled up with system requriements as part of systems analysis)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c6f748b3435c492f3a7b", "media": 7, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project Constraints & Architecture to Overcome Constraints", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The constraints were interesting because adhering to the constraints required control mechanisms which moderated the speed & volume of the flow of data, regarding both get (data download) & post (data upload) requests:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Batching get requests:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " The script begins by checking the date of the last time it ran, and uses this date timeframe in its search for LiveChat data. It also does a refresh of its Marketo API key. Once it does that, it's ready to roll, and the first real step in the data flow is to get LiveChat data. LiveChat's API doesn't really have many constraints to worry about. So, once we have that data, we can compare it to Marketo's data. But first we have to get the data from Marketo in a way which optimizes API usage efficiency.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The script needed to limit get requests for Marketo data into groups of up to 300. This means it can return up to 300 rows of Marketo data-- based on the 300 email addresses from LiveChat, passed into Marketo for looking up the rows. (Once I had the LiveChat visitor data, then I needed to cross reference which of the visitors are already listed in our marekto instance, by looking them up by email (used as a unique id), which required batching into groups of 300)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Batching post requests:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " Once the LiveChat data was compared to the Marketo data, and I knew which data needed to float up to Marekto (based on certain conditions, for example: if their geographical data already existed in Marketo, do not overwrite it. If it does not exist though, add it to the data object for upload.) There's a limit of 10 concurrent API requests per second. NodeJS is asynchronous though. Which makes it very fast. But it's also a bit tricky to control. The problem is that without controlling the stream of post requests-- for example, let's say there were 100 visitors in the past hour-- the API constraints would be quickly overwhelmed and marketo would refuse to accept all of our post requests.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "That is, uploading those 100 units of visitor data to Marketo at full speed (thanks to asynchronicity) would be delivered within perhaps half a second or so. The problem is that Marketo doesn't want to be pinged so many times, so quickly. It wants some breathing space.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The way I ended up controlling these batches of post requests so that all 100 data objects both don't fire all at once, immediately, is by using the NodeJS ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fee6d3a0a8d609065b5ae8", "type": "link", "fields": {"url": "https://github.com/yongzhihuang/PentaCode/blob/master/AsyncJs/asyncQueue.js", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "async library's queue() function", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ", which allows the developer to issue the post calls in small batches (adjustable) and at throttled increments (also adjustable). This allowed me to overcome the Rate limit and the Concurrency limit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Why does this matter?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " Basically, with asynchronous functions, they all fire immediately. With a get request function though, two main things happen: we fire our function (the \\"request\\"), and then we receive a response from the server we're communicating with. This entire process is one concurrent API call. With asynchronous function calls though, the speed of the request/response cycle depends a lot on just internet latency speeds. This means it's hard to predict how long the request will take.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Now, the concurrency limit says there's a max of 10 per second. So, what we could do is say, run one batch of 10 per second, right? Wrong. Unfortunately, it's very possible that one or some of those requests will take a little longer than others. So, I had to adjust the batches to something like two batches of four per second, just as an example, which adds up to eight per second. Another example that could work is one batch of seven per 750ms.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "But again, it the success of these depends in part on internet latency, hence it's wise to err on the side of being conservative, and reducing the API calls per second to whatever amount makes sense, to ensure that it's very unlikely that we surpass the limit. This is why asynchronous programming is challenging, fun, and interesting: because it is sometimes difficult to control precisely.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	Automated MarTech API Integration - Marketo & LiveChat	6	A project using NodeJS to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decision model) and log any errors encountered. 	2025-05-23 18:56:57.209+00	automated-enterprise-api-integration---marketo--livechat-nodejs	t	2025-05-23 19:07:51.562+00	2025-05-23 18:56:57.209+00	draft	2025-05-23 19:06:34.14+00	2025-05-23 19:07:51.564+00	f	t
12	3	Automated Enterprise API Integration - Marketo & LiveChat (NodeJS)	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Automated Enterprise API Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Marketo LiveChat API Project (NodeJS)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "While at Pulse Secure I wrote a script in NodeJS to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decion model) and log any errors encountered. Then, once per day, a second script would email the admin about any new errors. Here's a simple visual explanation of how the project worked, at a high level.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a1", "media": 6, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project Explanation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The purpose of the project was to assist in keeping all marketing data in one place: in Marketo's database. However, I could easily do the same sort of API integration project with applications such as Salesforce, Netsuite, or SAP. It's simply a matter of using the API endpoints to return to you the data that you're looking for.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "APIs often have constraints though— in order to make sure their services don't get overburdened by requests to the point that they shut down under the heavy load. In the case of Marketo, it has a few constraints which my project needed to stay within the confines of.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Since Marketo's API constraints are what really made project interesting, I thought share with you an overview of how the script overcame these constraints (really, they're more like project criteria, to be rolled up with system requriements as part of systems analysis)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c6f748b3435c492f3a7b", "media": 7, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project Constraints & Architecture to Overcome Constraints", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The constraints were interesting because adhering to the constraints required control mechanisms which moderated the speed & volume of the flow of data, regarding both get (data download) & post (data upload) requests:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Batching get requests:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " The script begins by checking the date of the last time it ran, and uses this date timeframe in its search for LiveChat data. It also does a refresh of its Marketo API key. Once it does that, it's ready to roll, and the first real step in the data flow is to get LiveChat data. LiveChat's API doesn't really have many constraints to worry about. So, once we have that data, we can compare it to Marketo's data. But first we have to get the data from Marketo in a way which optimizes API usage efficiency.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The script needed to limit get requests for Marketo data into groups of up to 300. This means it can return up to 300 rows of Marketo data-- based on the 300 email addresses from LiveChat, passed into Marketo for looking up the rows. (Once I had the LiveChat visitor data, then I needed to cross reference which of the visitors are already listed in our marekto instance, by looking them up by email (used as a unique id), which required batching into groups of 300)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Batching post requests:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " Once the LiveChat data was compared to the Marketo data, and I knew which data needed to float up to Marekto (based on certain conditions, for example: if their geographical data already existed in Marketo, do not overwrite it. If it does not exist though, add it to the data object for upload.) There's a limit of 10 concurrent API requests per second. NodeJS is asynchronous though. Which makes it very fast. But it's also a bit tricky to control. The problem is that without controlling the stream of post requests-- for example, let's say there were 100 visitors in the past hour-- the API constraints would be quickly overwhelmed and marketo would refuse to accept all of our post requests.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "That is, uploading those 100 units of visitor data to Marketo at full speed (thanks to asynchronicity) would be delivered within perhaps half a second or so. The problem is that Marketo doesn't want to be pinged so many times, so quickly. It wants some breathing space.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The way I ended up controlling these batches of post requests so that all 100 data objects both don't fire all at once, immediately, is by using the NodeJS ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fee6d3a0a8d609065b5ae8", "type": "link", "fields": {"url": "https://github.com/yongzhihuang/PentaCode/blob/master/AsyncJs/asyncQueue.js", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "async library's queue() function", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ", which allows the developer to issue the post calls in small batches (adjustable) and at throttled increments (also adjustable). This allowed me to overcome the Rate limit and the Concurrency limit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Why does this matter?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " Basically, with asynchronous functions, they all fire immediately. With a get request function though, two main things happen: we fire our function (the \\"request\\"), and then we receive a response from the server we're communicating with. This entire process is one concurrent API call. With asynchronous function calls though, the speed of the request/response cycle depends a lot on just internet latency speeds. This means it's hard to predict how long the request will take.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Now, the concurrency limit says there's a max of 10 per second. So, what we could do is say, run one batch of 10 per second, right? Wrong. Unfortunately, it's very possible that one or some of those requests will take a little longer than others. So, I had to adjust the batches to something like two batches of four per second, just as an example, which adds up to eight per second. Another example that could work is one batch of seven per 750ms.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "But again, it the success of these depends in part on internet latency, hence it's wise to err on the side of being conservative, and reducing the API calls per second to whatever amount makes sense, to ensure that it's very unlikely that we surpass the limit. This is why asynchronous programming is challenging, fun, and interesting: because it is sometimes difficult to control precisely.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	2	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2025-05-23 18:56:57.209+00	automated-enterprise-api-integration---marketo--livechat-nodejs	t	2025-05-23 19:05:59.606+00	2025-05-23 18:56:57.209+00	published	2025-05-23 19:05:59.619+00	2025-05-23 19:05:59.619+00	f	f
7	3	Automated Enterprise API Integration - Marketo & LiveChat (NodeJS)	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Automated Enterprise API Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Marketo LiveChat API Project (NodeJS)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "While at Pulse Secure I wrote a script in NodeJS to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decion model) and log any errors encountered. Then, once per day, a second script would email the admin about any new errors. Here's a simple visual explanation of how the project worked, at a high level.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a1", "media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a2", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	2	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2025-05-23 18:56:57.209+00	automated-enterprise-api-integration---marketo--livechat-nodejs	t	2025-05-23 19:04:11.946+00	2025-05-23 18:56:57.209+00	draft	2025-05-23 19:02:35.235+00	2025-05-23 19:04:11.948+00	f	t
9	3	Automated Enterprise API Integration - Marketo & LiveChat (NodeJS)	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Automated Enterprise API Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Marketo LiveChat API Project (NodeJS)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "While at Pulse Secure I wrote a script in NodeJS to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decion model) and log any errors encountered. Then, once per day, a second script would email the admin about any new errors. Here's a simple visual explanation of how the project worked, at a high level.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a1", "media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a2", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	2	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2025-05-23 18:56:57.209+00	automated-enterprise-api-integration---marketo--livechat-nodejs	t	2025-05-23 19:04:37.921+00	2025-05-23 18:56:57.209+00	draft	2025-05-23 19:04:22.643+00	2025-05-23 19:04:37.926+00	f	t
19	2	Timetracker project - Full Stack Web App built with ReactJS, ExpressJS, PostgreSQL	8	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Timetracker project", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS | ExpressJS | NodeJS | SASS | PostgreSQL", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "An open source NodeJS & ReactJS project for tracking the time of hourly workers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "I built this application because it seems like a need for many small businesses with hourly workers — a way to quickly and easily assign tasks and allow workers to receive the project and location information they need, as well as clock in and out.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Although such software exists, I was unable to find an open source NodeJS version, so I decided to create one to better understand the process of building it in NodeJS & ReactJS.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Although I previously had a demo running, at some point I accidentally uploaded some changes which github's dependabot service updated to different npm package versions, breaking the project.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "So, I decided to remove the live demo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "You can see how the app functions via the .gif videos below.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The main purpose of the project was simply to learn ReactJS and improve NodeJS skills", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Goals for user interface", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My goal was to design the application with minimalism in mind.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• The user interface is based on opening and closing of viewports, which are hidden within and selected from the \\"Dashboard\\" menu button.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Each viewport is simply a box with a close button in the upper right corner. The user can open as many viewports as they want in order to create the \\"dashboard\\" or set of viewports they want to see.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• The viewports also help to maintain a sense of visually modularity in the application. This makes it easy to introduce new viewports, each with their own independent functionality, such as data charts, tabular data, or other data visualizations or business processes such as project quotes.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The main design frameworks used are bulma and bootstrap.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Purpose and ideas for expansion", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The idea behind this project is simply to provide various modules for providing business data, to small businesses. In this initial version of the project, the administrator can view timesheets on a table and a map, add new database rows for locations, projects, and employee activities, as well as edit and delete data. The timesheets time and map are updated in real time whenever an employee clocks in or out.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "An idea for expansion of this project would be to incorporate other business applications with modules alongside the modules of this employee tracking system. One example I've though about is a basic property management application— with the system provided here, an administrator can track the work of their maintenance technicians, gardeners, and property managers for example. With this foundation, additional modules could be added for setting up customer accounts (perhaps even do so with an API for a CRM, or shared DB), and monitoring rental payments, as well as a dashboard for tenants to view and pay their rent, and a scheduling system so that customers can schedule maintenance visits.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Other future modules might include an internal company news feed, a messaging system for communication about projects, charts to display worktime logged, expense tracking, or even video/IoT-related modules such as receipt scanning, warehouse monitoring, or equipment scanning.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Next steps", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I will be turning this project into a basic SaaS (multi-tenant monthly subscription app), which will involve a few more steps, including:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Admin user account layer for multi-tenant access — I'll create an \\"accounts\\" table, and use its ID as a prefix on the other tables in the system. In this way, each account will have its own set of database tables, keeping it separate from other accounts (the \\"timesheets\\" table becomes \\"account2_timesheets\\" for admin account number 2, for example).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Brandable-pages — the account holder will be able to upload their logo, select brand colors to use as website main colors, and set up a few pages, such as a public facing landing page about the company, a list of jobs available to apply to, and private company pages for internal company information. From this area, employees will login to their accounts, within the administrator company's account", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• An email verification step for all users — this will be a simple url query, set up with a hash code and user email address to be queried and matched against the database.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A dashboard for managers — A cross between the employee and admin dashboards, where project managers can assign activities to and communicate with their team, as well as generate quotes for customers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A subscription system", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A flashy promo page", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Once all of that is done, I can add on new business modules.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Timesheet Tracker", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Real-time display of new clockin/clock out events", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Table and map view (clicking on table displays marker)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Timerange search, with default value set to the past two weeks", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "UI Slider allows user to adjust viewport width of table or map shown", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b0869b", "media": 8, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Data creation via forms", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Allows user to create new data in selected table", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Autopopulated dropdown selector shows tables for which new data can be created", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Various autopopulated UI elements within forms, such as tables or dropdown selectors", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "On creation of new activity, the assigned employee receives the activity in their task list in real-time", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd6a5918de63a6db439f", "media": 11, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Data administration— editing and deleting data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "User double clicks to edit data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Simply select row and click 'delete' to remove data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Easy download of csv file for any table, such as timesheets", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd7e5918de63a6db43a0", "media": 12, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: View submitted resume documents and job applicant data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "View applicant resume in browser or download", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd905918de63a6db43a1", "media": 13, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: External API interaction, such as GPS lookup", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Address inputs are autocomplated and provide GPS coordinate lookup via google maps API", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd9f5918de63a6db43a2", "media": 14, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Employee Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Authentication", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Registration / Login / Logout system", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Passwords salted & hashed with bcrypt", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "User type & password comparison check on login", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdaf5918de63a6db43a3", "media": 15, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Task list", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Visual timeline of upcoming tasks updated in real time", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Clocking in & out, with real-time display in Admin timesheet table & map", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project information including map of location", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Employees have ability to create tasks for themselves", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdbd5918de63a6db43a4", "media": 16, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: User/Employee Profile", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Autocompletion of address via google maps API", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo upload, with preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Resume/document upload, with format check validation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdce5918de63a6db43a5", "media": 17, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}], "direction": "ltr"}}	Timetracker project - Full Stack Web App built with ReactJS, ExpressJS, PostgreSQL	8	An open source NodeJS & ReactJS project for tracking the time of hourly workers.  built with ReactJS, ExpressJS, PostgreSQL	2025-05-23 18:56:57.157+00	timetrackerproject---full-stack-web-app-built-with-reactjs-expressjs-postgresql	t	2025-05-23 19:35:58.814+00	2025-05-23 18:56:57.156+00	published	2025-05-23 19:35:58.824+00	2025-05-23 19:35:58.824+00	t	f
10	3	Automated Enterprise API Integration - Marketo & LiveChat (NodeJS)	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Automated Enterprise API Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Marketo LiveChat API Project (NodeJS)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "While at Pulse Secure I wrote a script in NodeJS to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decion model) and log any errors encountered. Then, once per day, a second script would email the admin about any new errors. Here's a simple visual explanation of how the project worked, at a high level.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a1", "media": 1, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Stock Market Dynamics: Bulls, Bears, and the Uncertain Middle", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market is a realm of vast opportunity but also poses risks. Discover the forces that drive market trends and the strategies employed by top traders to navigate this complex ecosystem. From market analysis to understanding investor psychology, get a comprehensive insight into the world of stocks.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The stock market, often visualized as a bustling arena of numbers and ticker tapes, is as much about human behavior as it is about economics. It's a place where optimism, represented by the bullish rally, meets the caution of bearish downturns, with each vying to dictate the market's direction. But between these two extremes lies an uncertain middle ground, a zone populated by traders and investors who constantly weigh hope against fear. Successful navigation requires more than just financial acumen; it demands an understanding of collective sentiments and the ability to predict not just market movements, but also the reactions of other market participants. In this intricate dance of numbers and nerves, the most astute players are those who master both the hard data and the soft nuances of human behavior.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a2", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This content above is completely dynamic using custom layout building blocks configured in the CMS. This can be anything you'd like from rich text and images, to highly designed, complex components.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic components", "blockType": "banner"}, "format": "", "version": 2}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	2	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2025-05-23 18:56:57.209+00	automated-enterprise-api-integration---marketo--livechat-nodejs	t	2025-05-23 19:04:40.357+00	2025-05-23 18:56:57.209+00	published	2025-05-23 19:04:40.364+00	2025-05-23 19:04:40.364+00	f	f
11	3	Automated Enterprise API Integration - Marketo & LiveChat (NodeJS)	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Automated Enterprise API Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Marketo LiveChat API Project (NodeJS)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "While at Pulse Secure I wrote a script in NodeJS to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decion model) and log any errors encountered. Then, once per day, a second script would email the admin about any new errors. Here's a simple visual explanation of how the project worked, at a high level.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a1", "media": 6, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project Explanation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The purpose of the project was to assist in keeping all marketing data in one place: in Marketo's database. However, I could easily do the same sort of API integration project with applications such as Salesforce, Netsuite, or SAP. It's simply a matter of using the API endpoints to return to you the data that you're looking for.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "APIs often have constraints though— in order to make sure their services don't get overburdened by requests to the point that they shut down under the heavy load. In the case of Marketo, it has a few constraints which my project needed to stay within the confines of.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Since Marketo's API constraints are what really made project interesting, I thought share with you an overview of how the script overcame these constraints (really, they're more like project criteria, to be rolled up with system requriements as part of systems analysis)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c6f748b3435c492f3a7b", "media": 7, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project Constraints & Architecture to Overcome Constraints", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The constraints were interesting because adhering to the constraints required control mechanisms which moderated the speed & volume of the flow of data, regarding both get (data download) & post (data upload) requests:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Batching get requests:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " The script begins by checking the date of the last time it ran, and uses this date timeframe in its search for LiveChat data. It also does a refresh of its Marketo API key. Once it does that, it's ready to roll, and the first real step in the data flow is to get LiveChat data. LiveChat's API doesn't really have many constraints to worry about. So, once we have that data, we can compare it to Marketo's data. But first we have to get the data from Marketo in a way which optimizes API usage efficiency.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The script needed to limit get requests for Marketo data into groups of up to 300. This means it can return up to 300 rows of Marketo data-- based on the 300 email addresses from LiveChat, passed into Marketo for looking up the rows. (Once I had the LiveChat visitor data, then I needed to cross reference which of the visitors are already listed in our marekto instance, by looking them up by email (used as a unique id), which required batching into groups of 300)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Batching post requests:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " Once the LiveChat data was compared to the Marketo data, and I knew which data needed to float up to Marekto (based on certain conditions, for example: if their geographical data already existed in Marketo, do not overwrite it. If it does not exist though, add it to the data object for upload.) There's a limit of 10 concurrent API requests per second. NodeJS is asynchronous though. Which makes it very fast. But it's also a bit tricky to control. The problem is that without controlling the stream of post requests-- for example, let's say there were 100 visitors in the past hour-- the API constraints would be quickly overwhelmed and marketo would refuse to accept all of our post requests.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "That is, uploading those 100 units of visitor data to Marketo at full speed (thanks to asynchronicity) would be delivered within perhaps half a second or so. The problem is that Marketo doesn't want to be pinged so many times, so quickly. It wants some breathing space.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The way I ended up controlling these batches of post requests so that all 100 data objects both don't fire all at once, immediately, is by using the NodeJS ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fee6d3a0a8d609065b5ae8", "type": "link", "fields": {"url": "https://github.com/yongzhihuang/PentaCode/blob/master/AsyncJs/asyncQueue.js", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "async library's queue() function", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ", which allows the developer to issue the post calls in small batches (adjustable) and at throttled increments (also adjustable). This allowed me to overcome the Rate limit and the Concurrency limit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Why does this matter?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " Basically, with asynchronous functions, they all fire immediately. With a get request function though, two main things happen: we fire our function (the \\"request\\"), and then we receive a response from the server we're communicating with. This entire process is one concurrent API call. With asynchronous function calls though, the speed of the request/response cycle depends a lot on just internet latency speeds. This means it's hard to predict how long the request will take.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Now, the concurrency limit says there's a max of 10 per second. So, what we could do is say, run one batch of 10 per second, right? Wrong. Unfortunately, it's very possible that one or some of those requests will take a little longer than others. So, I had to adjust the batches to something like two batches of four per second, just as an example, which adds up to eight per second. Another example that could work is one batch of seven per 750ms.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "But again, it the success of these depends in part on internet latency, hence it's wise to err on the side of being conservative, and reducing the API calls per second to whatever amount makes sense, to ensure that it's very unlikely that we surpass the limit. This is why asynchronous programming is challenging, fun, and interesting: because it is sometimes difficult to control precisely.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	Dollar and Sense: The Financial Forecast	2	Money isn't just currency; it's a language. Dive deep into its nuances, where strategy meets intuition in the vast sea of finance.	2025-05-23 18:56:57.209+00	automated-enterprise-api-integration---marketo--livechat-nodejs	t	2025-05-23 19:05:55.905+00	2025-05-23 18:56:57.209+00	draft	2025-05-23 19:04:50.369+00	2025-05-23 19:05:55.908+00	f	t
\.


--
-- Data for Name: _posts_v_rels; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._posts_v_rels (id, "order", parent_id, path, posts_id, categories_id, users_id) FROM stdin;
1	1	1	version.authors	\N	\N	2
2	1	2	version.authors	\N	\N	2
3	1	3	version.authors	\N	\N	2
4	1	4	version.relatedPosts	2	\N	\N
5	2	4	version.relatedPosts	3	\N	\N
6	1	4	version.authors	\N	\N	2
7	1	5	version.relatedPosts	1	\N	\N
8	2	5	version.relatedPosts	3	\N	\N
9	1	5	version.authors	\N	\N	2
10	1	6	version.relatedPosts	1	\N	\N
11	2	6	version.relatedPosts	2	\N	\N
12	1	6	version.authors	\N	\N	2
824	1	17	version.relatedPosts	2	\N	\N
825	2	17	version.relatedPosts	3	\N	\N
826	1	17	version.authors	\N	\N	2
827	1	22	version.relatedPosts	2	\N	\N
828	2	22	version.relatedPosts	3	\N	\N
829	1	22	version.authors	\N	\N	2
28	1	7	version.relatedPosts	1	\N	\N
29	2	7	version.relatedPosts	2	\N	\N
30	1	7	version.authors	\N	\N	2
31	1	8	version.relatedPosts	1	\N	\N
32	2	8	version.relatedPosts	2	\N	\N
33	1	8	version.authors	\N	\N	2
599	1	18	version.relatedPosts	1	\N	\N
600	2	18	version.relatedPosts	3	\N	\N
601	1	18	version.authors	\N	\N	2
43	1	9	version.relatedPosts	1	\N	\N
44	2	9	version.relatedPosts	2	\N	\N
45	1	9	version.authors	\N	\N	2
46	1	10	version.relatedPosts	1	\N	\N
47	2	10	version.relatedPosts	2	\N	\N
48	1	10	version.authors	\N	\N	2
602	1	19	version.relatedPosts	1	\N	\N
603	2	19	version.relatedPosts	3	\N	\N
604	1	19	version.authors	\N	\N	2
621	1	20	version.categories	\N	3	\N
622	2	20	version.categories	\N	1	\N
623	3	20	version.categories	\N	4	\N
624	1	20	version.authors	\N	\N	2
625	1	21	version.categories	\N	3	\N
626	2	21	version.categories	\N	1	\N
627	3	21	version.categories	\N	4	\N
628	1	21	version.authors	\N	\N	2
566	1	13	version.relatedPosts	1	\N	\N
567	2	13	version.relatedPosts	3	\N	\N
568	1	13	version.authors	\N	\N	2
569	1	16	version.relatedPosts	1	\N	\N
570	2	16	version.relatedPosts	3	\N	\N
571	1	16	version.authors	\N	\N	2
103	1	11	version.relatedPosts	1	\N	\N
104	2	11	version.relatedPosts	2	\N	\N
105	1	11	version.authors	\N	\N	2
106	1	12	version.relatedPosts	1	\N	\N
107	2	12	version.relatedPosts	2	\N	\N
108	1	12	version.authors	\N	\N	2
285	1	14	version.categories	\N	3	\N
286	2	14	version.categories	\N	1	\N
287	3	14	version.categories	\N	4	\N
288	1	14	version.authors	\N	\N	2
289	1	15	version.categories	\N	3	\N
290	2	15	version.categories	\N	1	\N
291	3	15	version.categories	\N	4	\N
292	1	15	version.authors	\N	\N	2
\.


--
-- Data for Name: _posts_v_version_populated_authors; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public._posts_v_version_populated_authors (_order, _parent_id, id, _uuid, name) FROM stdin;
\.


--
-- Data for Name: case_studies; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.case_studies (id, title, summary, client, featured_image_id, content, meta_title, meta_image_id, meta_description, published_at, slug, slug_lock, updated_at, created_at, _status) FROM stdin;
1	Test case study content	Test case study content	Test case study content	22	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Test case study content", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	Test case study content | Payload Website Template	22	Test case study content Test case study content	2025-05-29 17:58:21.934+00	test-case-study-content	t	2025-05-29 17:58:21.938+00	2025-05-29 17:57:35.114+00	published
2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	2025-11-24 18:06:21.988+00	2025-11-24 18:06:21.987+00	draft
\.


--
-- Data for Name: case_studies_populated_authors; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.case_studies_populated_authors (_order, _parent_id, id, name) FROM stdin;
\.


--
-- Data for Name: case_studies_rels; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.case_studies_rels (id, "order", parent_id, path, case_studies_id, categories_id, users_id) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.categories (id, title, slug, slug_lock, parent_id, updated_at, created_at) FROM stdin;
1	Technology	technology	t	\N	2025-05-23 18:56:42.862+00	2025-05-23 18:56:42.663+00
2	News	news	t	\N	2025-05-23 18:56:42.882+00	2025-05-23 18:56:42.663+00
3	Software	software	t	\N	2025-05-23 18:56:43.131+00	2025-05-23 18:56:42.972+00
4	Engineering	engineering	t	\N	2025-05-23 18:56:43.151+00	2025-05-23 18:56:42.976+00
5	Finance	finance	t	\N	2025-05-23 18:56:45.509+00	2025-05-23 18:56:45.336+00
6	Design	design	t	\N	2025-05-23 18:56:45.528+00	2025-05-23 18:56:45.336+00
\.


--
-- Data for Name: categories_breadcrumbs; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.categories_breadcrumbs (_order, _parent_id, id, doc_id, url, label) FROM stdin;
1	1	6830c4eaf6a5ed0122b0866e	1	/technology	Technology
1	2	6830c4eaf6a5ed0122b0866f	2	/news	News
1	3	6830c4ebf6a5ed0122b08674	3	/software	Software
1	4	6830c4ebf6a5ed0122b08675	4	/engineering	Engineering
1	5	6830c4edf6a5ed0122b0867a	5	/finance	Finance
1	6	6830c4edf6a5ed0122b0867b	6	/design	Design
\.


--
-- Data for Name: footer; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.footer (id, updated_at, created_at) FROM stdin;
1	2025-05-23 18:56:57.783+00	2025-05-23 18:56:42.141+00
\.


--
-- Data for Name: footer_nav_items; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.footer_nav_items (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	6830c4f9f6a5ed0122b086b8	custom	\N	/admin	Admin
2	1	6830c4f9f6a5ed0122b086b9	custom	t	https://github.com/payloadcms/payload/tree/main/templates/website	Source Code
3	1	6830c4f9f6a5ed0122b086ba	custom	t	https://payloadcms.com/	Payload
\.


--
-- Data for Name: footer_rels; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.footer_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: form_submissions; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.form_submissions (id, form_id, updated_at, created_at) FROM stdin;
1	1	2025-10-03 18:17:45.428+00	2025-10-03 18:17:45.395+00
2	1	2025-11-16 07:41:54.142+00	2025-11-16 07:41:54.106+00
\.


--
-- Data for Name: form_submissions_submission_data; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.form_submissions_submission_data (_order, _parent_id, id, field, value) FROM stdin;
1	1	68e0134976d54e00c8db8132	full-name	rwKMdmIRuryLOdkD
2	1	68e0134976d54e00c8db8133	email	linohoqal68@gmail.com
3	1	68e0134976d54e00c8db8134	phone	7413605778
4	1	68e0134976d54e00c8db8135	message	ZgrCpKNeAhBGr
1	2	6919804276d54e00c8db8136	full-name	VuWKaygnXCjIUByDsXePLWM
2	2	6919804276d54e00c8db8137	email	fiveteku361@gmail.com
3	2	6919804276d54e00c8db8138	phone	4817666761
4	2	6919804276d54e00c8db8139	message	ubbjFKvCpACDgofdzrDK
\.


--
-- Data for Name: forms; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.forms (id, title, submit_button_label, confirmation_type, confirmation_message, redirect_url, updated_at, created_at) FROM stdin;
1	Contact Form	Submit	message	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The contact form has been submitted successfully.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N	2025-05-23 18:56:57.601+00	2023-01-12 21:47:41.374+00
\.


--
-- Data for Name: forms_blocks_checkbox; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.forms_blocks_checkbox (_order, _parent_id, _path, id, name, label, width, required, default_value, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_country; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.forms_blocks_country (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_email; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.forms_blocks_email (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
2	1	fields	6830c4f9f6a5ed0122b086a4	email	Email	100	t	email
\.


--
-- Data for Name: forms_blocks_message; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.forms_blocks_message (_order, _parent_id, _path, id, message, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_number; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.forms_blocks_number (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
3	1	fields	6830c4f9f6a5ed0122b086a5	phone	Phone	100	\N	f	phone
\.


--
-- Data for Name: forms_blocks_select; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.forms_blocks_select (_order, _parent_id, _path, id, name, label, width, default_value, placeholder, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_select_options; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.forms_blocks_select_options (_order, _parent_id, id, label, value) FROM stdin;
\.


--
-- Data for Name: forms_blocks_state; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.forms_blocks_state (_order, _parent_id, _path, id, name, label, width, required, block_name) FROM stdin;
\.


--
-- Data for Name: forms_blocks_text; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.forms_blocks_text (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
1	1	fields	6830c4f9f6a5ed0122b086a3	full-name	Full Name	100	\N	t	full-name
\.


--
-- Data for Name: forms_blocks_textarea; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.forms_blocks_textarea (_order, _parent_id, _path, id, name, label, width, default_value, required, block_name) FROM stdin;
4	1	fields	6830c4f9f6a5ed0122b086a6	message	Message	100	\N	t	message
\.


--
-- Data for Name: forms_emails; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.forms_emails (_order, _parent_id, id, email_to, cc, bcc, reply_to, email_from, subject, message) FROM stdin;
1	1	6830c4f9f6a5ed0122b086a7	{{email}}	\N	\N	\N	"Payload" <demo@payloadcms.com>	You've received a new message.	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Your contact form submission was successfully received.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}
\.


--
-- Data for Name: header; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.header (id, updated_at, created_at) FROM stdin;
1	2025-05-29 17:57:15.14+00	2025-05-23 18:56:42.136+00
\.


--
-- Data for Name: header_nav_items; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.header_nav_items (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label) FROM stdin;
1	1	6830c4f9f6a5ed0122b086b6	custom	\N	/posts	Posts
2	1	6830c4f9f6a5ed0122b086b7	reference	\N	\N	Contact
3	1	68389fdf54695f98197a7b68	custom	\N	/case-studies	Case Studies
\.


--
-- Data for Name: header_rels; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.header_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
2	\N	1	navItems.1.link.reference	2	\N
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.media (id, alt, caption, updated_at, created_at, url, thumbnail_u_r_l, filename, mime_type, filesize, width, height, focal_x, focal_y, sizes_thumbnail_url, sizes_thumbnail_width, sizes_thumbnail_height, sizes_thumbnail_mime_type, sizes_thumbnail_filesize, sizes_thumbnail_filename, sizes_square_url, sizes_square_width, sizes_square_height, sizes_square_mime_type, sizes_square_filesize, sizes_square_filename, sizes_small_url, sizes_small_width, sizes_small_height, sizes_small_mime_type, sizes_small_filesize, sizes_small_filename, sizes_medium_url, sizes_medium_width, sizes_medium_height, sizes_medium_mime_type, sizes_medium_filesize, sizes_medium_filename, sizes_large_url, sizes_large_width, sizes_large_height, sizes_large_mime_type, sizes_large_filesize, sizes_large_filename, sizes_xlarge_url, sizes_xlarge_width, sizes_xlarge_height, sizes_xlarge_mime_type, sizes_xlarge_filesize, sizes_xlarge_filename, sizes_og_url, sizes_og_width, sizes_og_height, sizes_og_mime_type, sizes_og_filesize, sizes_og_filename) FROM stdin;
1	Curving abstract shapes with an orange and blue gradient	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo by ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://unsplash.com/@kirp", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "Andrew Kliatskyi", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " on Unsplash.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	2025-05-23 18:56:51.238+00	2025-05-23 18:56:42.663+00	\N	\N	image-post1.webp	image/webp	15924	1920	1080	50	50	\N	300	169	image/webp	1544	image-post1-300x169.webp	\N	500	500	image/webp	3772	image-post1-500x500.webp	\N	600	338	image/webp	3624	image-post1-600x338.webp	\N	900	506	image/webp	5924	image-post1-900x506.webp	\N	1400	788	image/webp	10252	image-post1-1400x788.webp	\N	1920	1080	image/webp	15924	image-post1-1920x1080.webp	\N	1200	630	image/webp	8162	image-post1-1200x630.webp
2	Curving abstract shapes with an orange and blue gradient	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo by ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://unsplash.com/@kirp", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "Andrew Kliatskyi", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " on Unsplash.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	2025-05-23 18:56:51.263+00	2025-05-23 18:56:42.663+00	\N	\N	image-post3.webp	image/webp	14662	1920	1080	50	50	\N	300	169	image/webp	1234	image-post3-300x169.webp	\N	500	500	image/webp	2722	image-post3-500x500.webp	\N	600	338	image/webp	3038	image-post3-600x338.webp	\N	900	506	image/webp	5040	image-post3-900x506.webp	\N	1400	788	image/webp	9054	image-post3-1400x788.webp	\N	1920	1080	image/webp	14662	image-post3-1920x1080.webp	\N	1200	630	image/webp	6918	image-post3-1200x630.webp
3	Curving abstract shapes with an orange and blue gradient	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo by ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "link", "fields": {"url": "https://unsplash.com/@kirp", "newTab": true, "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "Andrew Kliatskyi", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " on Unsplash.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textFormat": 0}], "direction": "ltr"}}	2025-05-23 18:56:53.612+00	2025-05-23 18:56:42.663+00	\N	\N	image-post2.webp	image/webp	22332	1920	1080	50	50	\N	300	169	image/webp	2270	image-post2-300x169.webp	\N	500	500	image/webp	4970	image-post2-500x500.webp	\N	600	338	image/webp	5054	image-post2-600x338.webp	\N	900	506	image/webp	7992	image-post2-900x506.webp	\N	1400	788	image/webp	13868	image-post2-1400x788.webp	\N	1920	1080	image/webp	22332	image-post2-1920x1080.webp	\N	1200	630	image/webp	10996	image-post2-1200x630.webp
4	Straight metallic shapes with a blue gradient	\N	2025-05-23 18:56:57.045+00	2025-05-23 18:56:42.663+00	\N	\N	image-hero1.webp	image/webp	49432	3200	1800	50	50	\N	300	169	image/webp	2542	image-hero1-300x169.webp	\N	500	500	image/webp	4812	image-hero1-500x500.webp	\N	600	338	image/webp	5746	image-hero1-600x338.webp	\N	900	506	image/webp	9464	image-hero1-900x506.webp	\N	1400	788	image/webp	16530	image-hero1-1400x788.webp	\N	1920	1080	image/webp	24536	image-hero1-1920x1080.webp	\N	1200	630	image/webp	12802	image-hero1-1200x630.webp
5	\N	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	2025-05-23 19:03:16.783+00	2025-05-23 19:03:14.896+00	\N	\N	marketo-liveChat-basic-diagram.png	image/png	377797	1402	1028	50	50	\N	300	220	image/png	46658	marketo-liveChat-basic-diagram-300x220.png	\N	500	500	image/png	129918	marketo-liveChat-basic-diagram-500x500.png	\N	600	440	image/png	136191	marketo-liveChat-basic-diagram-600x440.png	\N	900	660	image/png	247389	marketo-liveChat-basic-diagram-900x660.png	\N	1400	1027	image/png	468815	marketo-liveChat-basic-diagram-1400x1027.png	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	285369	marketo-liveChat-basic-diagram-1200x630.png
6	\N	\N	2025-05-23 19:04:37.359+00	2025-05-23 19:04:35.735+00	\N	\N	marketo-liveChat-basic-diagram-1.png	image/png	377797	1402	1028	50	50	\N	300	220	image/png	46658	marketo-liveChat-basic-diagram-1-300x220.png	\N	500	500	image/png	129918	marketo-liveChat-basic-diagram-1-500x500.png	\N	600	440	image/png	136191	marketo-liveChat-basic-diagram-1-600x440.png	\N	900	660	image/png	247389	marketo-liveChat-basic-diagram-1-900x660.png	\N	1400	1027	image/png	468815	marketo-liveChat-basic-diagram-1-1400x1027.png	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	285369	marketo-liveChat-basic-diagram-1-1200x630.png
7	\N	\N	2025-05-23 19:05:37.688+00	2025-05-23 19:05:36.145+00	\N	\N	marketo_api_limits.png	image/png	166640	1520	876	50	50	\N	300	173	image/png	37028	marketo_api_limits-300x173.png	\N	500	500	image/png	120979	marketo_api_limits-500x500.png	\N	600	346	image/png	108754	marketo_api_limits-600x346.png	\N	900	519	image/png	196600	marketo_api_limits-900x519.png	\N	1400	807	image/png	367625	marketo_api_limits-1400x807.png	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	294620	marketo_api_limits-1200x630.png
8	\N	\N	2025-05-23 19:12:09.145+00	2025-05-23 19:08:33.281+00	\N	\N	1Admin_ClockinClockout.webp	image/webp	2626704	1050	656	50	50	\N	300	187	image/webp	146490	1Admin_ClockinClockout-300x187.webp	\N	500	500	image/webp	997692	1Admin_ClockinClockout-500x500.webp	\N	600	375	image/webp	1041964	1Admin_ClockinClockout-600x375.webp	\N	900	562	image/webp	1905932	1Admin_ClockinClockout-900x562.webp	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/webp	2216120	1Admin_ClockinClockout-1200x630.webp
11	\N	\N	2025-05-23 19:19:44.215+00	2025-05-23 19:17:07.295+00	\N	\N	2Admin_TaskAssignment.webp	image/webp	1548622	1050	656	50	50	\N	300	187	image/webp	86246	2Admin_TaskAssignment-300x187.webp	\N	500	500	image/webp	666048	2Admin_TaskAssignment-500x500.webp	\N	600	375	image/webp	488090	2Admin_TaskAssignment-600x375.webp	\N	900	562	image/webp	1198046	2Admin_TaskAssignment-900x562.webp	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/webp	1383402	2Admin_TaskAssignment-1200x630.webp
12	\N	\N	2025-05-23 19:21:12.088+00	2025-05-23 19:19:44.537+00	\N	\N	3Admin_EditingDeletingData.webp	image/webp	1430410	1050	656	50	50	\N	300	187	image/webp	76418	3Admin_EditingDeletingData-300x187.webp	\N	500	500	image/webp	384630	3Admin_EditingDeletingData-500x500.webp	\N	600	375	image/webp	431898	3Admin_EditingDeletingData-600x375.webp	\N	900	562	image/webp	1073660	3Admin_EditingDeletingData-900x562.webp	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/webp	1249668	3Admin_EditingDeletingData-1200x630.webp
13	\N	\N	2025-05-23 19:22:39.451+00	2025-05-23 19:21:12.336+00	\N	\N	4AdminResumeReview.webp	image/webp	1134370	1050	656	50	50	\N	300	187	image/webp	74408	4AdminResumeReview-300x187.webp	\N	500	500	image/webp	395110	4AdminResumeReview-500x500.webp	\N	600	375	image/webp	449306	4AdminResumeReview-600x375.webp	\N	900	562	image/webp	776770	4AdminResumeReview-900x562.webp	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/webp	916202	4AdminResumeReview-1200x630.webp
14	\N	\N	2025-05-23 19:24:05.578+00	2025-05-23 19:22:39.669+00	\N	\N	5Admin_LocationLookup.webp	image/webp	1026302	1050	656	50	50	\N	300	187	image/webp	69074	5Admin_LocationLookup-300x187.webp	\N	500	500	image/webp	392692	5Admin_LocationLookup-500x500.webp	\N	600	375	image/webp	374678	5Admin_LocationLookup-600x375.webp	\N	900	562	image/webp	730952	5Admin_LocationLookup-900x562.webp	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/webp	913586	5Admin_LocationLookup-1200x630.webp
15	\N	\N	2025-05-23 19:24:55.037+00	2025-05-23 19:24:05.833+00	\N	\N	6Employee_Registration.webp	image/webp	641642	1050	656	50	50	\N	300	187	image/webp	31158	6Employee_Registration-300x187.webp	\N	500	500	image/webp	175938	6Employee_Registration-500x500.webp	\N	600	375	image/webp	228802	6Employee_Registration-600x375.webp	\N	900	562	image/webp	479740	6Employee_Registration-900x562.webp	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/webp	441902	6Employee_Registration-1200x630.webp
16	\N	\N	2025-05-23 19:27:03.552+00	2025-05-23 19:24:55.293+00	\N	\N	7Employee_SelfAssignedTask.webp	image/webp	1337222	1050	656	50	50	\N	300	187	image/webp	70040	7Employee_SelfAssignedTask-300x187.webp	\N	500	500	image/webp	485444	7Employee_SelfAssignedTask-500x500.webp	\N	600	375	image/webp	342040	7Employee_SelfAssignedTask-600x375.webp	\N	900	562	image/webp	958990	7Employee_SelfAssignedTask-900x562.webp	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/webp	1146294	7Employee_SelfAssignedTask-1200x630.webp
17	\N	\N	2025-05-23 19:29:07.944+00	2025-05-23 19:27:04.209+00	\N	\N	8Employee_ProfileCompletion.webp	image/webp	2048850	1050	656	50	50	\N	300	187	image/webp	147010	8Employee_ProfileCompletion-300x187.webp	\N	500	500	image/webp	692542	8Employee_ProfileCompletion-500x500.webp	\N	600	375	image/webp	624572	8Employee_ProfileCompletion-600x375.webp	\N	900	562	image/webp	1380968	8Employee_ProfileCompletion-900x562.webp	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/webp	1646132	8Employee_ProfileCompletion-1200x630.webp
18	\N	\N	2025-05-23 19:36:53.959+00	2025-05-23 19:36:52.878+00	\N	\N	austin_assault_choropleth_map.png	image/png	171503	1058	900	50	50	\N	300	255	image/png	35802	austin_assault_choropleth_map-300x255.png	\N	500	500	image/png	81481	austin_assault_choropleth_map-500x500.png	\N	600	510	image/png	87695	austin_assault_choropleth_map-600x510.png	\N	900	766	image/png	150539	austin_assault_choropleth_map-900x766.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	164204	austin_assault_choropleth_map-1200x630.png
19	\N	\N	2025-05-23 19:37:53.326+00	2025-05-23 19:37:52.304+00	\N	\N	test1.png	image/png	393559	1564	1018	50	50	\N	300	195	image/png	38674	test1-300x195.png	\N	500	500	image/png	93643	test1-500x500.png	\N	600	391	image/png	99816	test1-600x391.png	\N	900	586	image/png	176536	test1-900x586.png	\N	1400	911	image/png	339668	test1-1400x911.png	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	234697	test1-1200x630.png
20	\N	\N	2025-05-23 19:38:12.677+00	2025-05-23 19:38:11.713+00	\N	\N	test2.png	image/png	365445	1564	1014	50	50	\N	300	195	image/png	35533	test2-300x195.png	\N	500	500	image/png	85557	test2-500x500.png	\N	600	389	image/png	91223	test2-600x389.png	\N	900	584	image/png	161968	test2-900x584.png	\N	1400	908	image/png	313574	test2-1400x908.png	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	215736	test2-1200x630.png
21	\N	\N	2025-05-23 19:38:33.13+00	2025-05-23 19:38:32.044+00	\N	\N	test3.png	image/png	332215	1592	1014	50	50	\N	300	191	image/png	32049	test3-300x191.png	\N	500	500	image/png	76865	test3-500x500.png	\N	600	382	image/png	82369	test3-600x382.png	\N	900	573	image/png	146856	test3-900x573.png	\N	1400	892	image/png	276995	test3-1400x892.png	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	184914	test3-1200x630.png
22	\N	\N	2025-05-29 17:58:05.4+00	2025-05-29 17:58:04.966+00	\N	\N	case-study-basicimage.png	image/png	138299	1600	840	50	50	\N	300	158	image/png	16933	case-study-basicimage-300x158.png	\N	500	500	image/png	73333	case-study-basicimage-500x500.png	\N	600	315	image/png	42878	case-study-basicimage-600x315.png	\N	900	473	image/png	75839	case-study-basicimage-900x473.png	\N	1400	735	image/png	150735	case-study-basicimage-1400x735.png	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	116667	case-study-basicimage-1200x630.png
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.pages (id, title, hero_type, hero_rich_text, hero_media_id, meta_title, meta_image_id, meta_description, published_at, slug, slug_lock, updated_at, created_at, _status) FROM stdin;
2	Contact	none	\N	\N	\N	\N	\N	\N	contact	t	2025-05-23 18:56:57.682+00	2025-05-23 18:56:57.664+00	published
1	Home	highImpact	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Well hello.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I'm Patrick, a Business-minded Software Engineer with a focus on DevOps, Cloud Infrastructure, and Full Stack Web Applications.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My experience spans Managing large corporate software engineering projects, Improving & Creating devops processes & cloud infrastructure, and Working across the full stack on web applications (user interface, business Logic, databases).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Pardon the mess-- This website is currently under construction.  It's setup via the PayloadCMS website template and will soon be improved with a customized design & new content (such as project case studes).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	4	Patrick Meaney's Portfolio	8	Full Stack & DevOps Projects	2025-05-23 19:01:52.195+00	home	t	2025-08-18 21:11:59.026+00	2025-05-23 18:56:57.663+00	published
3	\N	lowImpact	\N	\N	\N	\N	\N	\N	\N	t	2025-11-24 18:06:17.743+00	2025-11-24 18:06:17.741+00	draft
\.


--
-- Data for Name: pages_blocks_archive; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.pages_blocks_archive (_order, _parent_id, _path, id, intro_content, populate_by, relation_to, "limit", block_name) FROM stdin;
2	1	layout	6830c4f9f6a5ed0122b086b2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Portfolio", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	collection	posts	10	Portfolio
\.


--
-- Data for Name: pages_blocks_content; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.pages_blocks_content (_order, _parent_id, _path, id, block_name) FROM stdin;
3	1	layout	6830c4f9f6a5ed0122b086b0	Services List
\.


--
-- Data for Name: pages_blocks_content_columns; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.pages_blocks_content_columns (_order, _parent_id, id, size, rich_text, enable_link, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
5	6830c4f9f6a5ed0122b086b0	6830c4f9f6a5ed0122b086ae	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Frontend Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS makes it easy to include 3rd party component libraries in projects.  When I need to build my own components I usually turn to CSS Frameworks (Bulma, Boostrap) for quick access to design components.  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "These days I shy away from UI Design & Writing CSS/SCSS, unless it's for a personal project", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": ", as I prefer to specialize in Backend & DevOps systems.  I'm moving away from Web Frontend-- where my careers began when I originally shifted into Software Engineering from Digital Marketing.  These days I am moving towards specializing in DevOps & Security.  And, for personal projects-- Robotics & LiDAR.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default
6	6830c4f9f6a5ed0122b086b0	6830c4f9f6a5ed0122b086af	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Enterprise Application Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create custom enterprise application integrations-- connecting applications in a plethora of ways for various business systems needs.  My experience spans full stack projects involving Browser & Data Integration (e.g. Twitch.tv Browser Extension) to purely data projects (asset inventories & data migrations), including customized Browser, Server, and Data applications. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default
1	6830c4f9f6a5ed0122b086b0	6830c4f9f6a5ed0122b086aa	full	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Core services", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "This is mostly quickly sketched placeholder content, as I work towards revamping the structure & content of this new website. ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Feel free to view this project's code at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://github.com/pmeaney/payloadcms-052225blue", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://github.com/pmeaney/payloadcms-052225blue", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr", "textFormat": 1}}	\N	reference	\N	\N	\N	default
2	6830c4f9f6a5ed0122b086b0	6830c4f9f6a5ed0122b086ab	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Application & User Interface Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Miro & Draw.io are two of my favorite tools for sketching application & user interface designs-- creating wireframe mockups and conceptualizing design of the entire application stack", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default
3	6830c4f9f6a5ed0122b086b0	6830c4f9f6a5ed0122b086ac	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Custom Application Development", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I create Web Applications from scratch using Javascript or Python frameworks, or leverage existing solutions such as Content Management Systems-- and built upon them or integrate other (sometimes custom built) services. To host the app's data I design & grow a SQL database.  And typically I host on Linux.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default
4	6830c4f9f6a5ed0122b086b0	6830c4f9f6a5ed0122b086ad	oneThird	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "DevOps, Cloud, & Web Server Management", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I setup servers via Terraform, to spin up Linux Servers & related cloud assets (AWS, GCP) or I may keep it simple with DigitalOcean servers.  I manage traffic with Nginx Proxy Manager, and deploy via Github Actions CICD & Docker containers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	f	reference	\N	\N	\N	default
\.


--
-- Data for Name: pages_blocks_cta; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.pages_blocks_cta (_order, _parent_id, _path, id, rich_text, block_name) FROM stdin;
1	1	layout	6830c4f9f6a5ed0122b086b4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Under Construction", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Currently transferring my old website into this new one. It's based on ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9b3c91d2b0727764a26", "type": "link", "fields": {"url": "https://github.com/payloadcms/payload/tree/main/templates/website", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "the PayloadCMS Official Website Template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I took that template and made it much more turn-key, in that ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fea9d0c91d2b0727764a27", "type": "link", "fields": {"url": "https://github.com/pmeaney/template-portfolio-payloadcms", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "my improved version of the template", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " includes a Github Action CICD Deployment of the project where deployment is fully dockerized. And it includes a \\"Production-first, Local Sync\\" migration process which allows the local development env to be kept synchronized with the remote production env.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The old site is still available at: ", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "autolink", "fields": {"url": "https://167.99.96.28/", "linkType": "custom"}, "format": "", "indent": 0, "version": 2, "children": [{"mode": "normal", "text": "https://167.99.96.28/", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " (click advanced > proceed.  Moved SSL cert to this current page you're on, hence the security warning at the old site)", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	CTA About Construction
\.


--
-- Data for Name: pages_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.pages_blocks_cta_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
\.


--
-- Data for Name: pages_blocks_form_block; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.pages_blocks_form_block (_order, _parent_id, _path, id, form_id, enable_intro, intro_content, block_name) FROM stdin;
1	2	layout	6830c4f9f6a5ed0122b086b5	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Example contact form:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}], "direction": "ltr"}}	\N
\.


--
-- Data for Name: pages_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.pages_blocks_media_block (_order, _parent_id, _path, id, media_id, block_name) FROM stdin;
\.


--
-- Data for Name: pages_hero_links; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.pages_hero_links (_order, _parent_id, id, link_type, link_new_tab, link_url, link_label, link_appearance) FROM stdin;
1	1	6830c4f9f6a5ed0122b086a8	custom	\N	/posts	All posts	default
2	1	6830c4f9f6a5ed0122b086a9	custom	\N	/contact	Contact	outline
\.


--
-- Data for Name: pages_rels; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.pages_rels (id, "order", parent_id, path, pages_id, posts_id, categories_id) FROM stdin;
\.


--
-- Data for Name: payload_jobs; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.payload_jobs (id, input, completed_at, total_tried, has_error, error, task_slug, queue, wait_until, processing, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_jobs_log; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.payload_jobs_log (_order, _parent_id, id, executed_at, completed_at, task_slug, task_i_d, input, output, state, error) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.payload_locked_documents (id, global_slug, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: payload_locked_documents_rels; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.payload_locked_documents_rels (id, "order", parent_id, path, pages_id, posts_id, media_id, categories_id, users_id, redirects_id, forms_id, form_submissions_id, search_id, payload_jobs_id, case_studies_id) FROM stdin;
\.


--
-- Data for Name: payload_migrations; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.payload_migrations (id, name, batch, updated_at, created_at) FROM stdin;
1	20250523_184732	1	2025-05-23 18:47:40.033+00	2025-05-23 18:47:39.792+00
2	20250528_203707	2	2025-05-28 20:37:58.933+00	2025-05-28 20:37:58.863+00
\.


--
-- Data for Name: payload_preferences; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.payload_preferences (id, key, value, updated_at, created_at) FROM stdin;
1	pages-list	{"preset": null}	2025-05-23 18:59:02.509+00	2025-05-23 18:59:02.51+00
3	posts-list	{"preset": null}	2025-05-23 19:02:13.679+00	2025-05-23 19:02:13.68+00
4	media-list	{"limit": 10, "preset": null}	2025-05-23 19:15:03.885+00	2025-05-23 19:04:59.907+00
6	collection-posts-2	{"fields": {"content": {"hello": "hi", "collapsed": ["6830c4f9f6a5ed0122b0869c"]}, "_index-1": {"tabIndex": 1}}}	2025-05-23 19:35:56.218+00	2025-05-23 19:08:07.051+00
5	collection-posts-3	{"fields": {"_index-1": {"tabIndex": 2}}}	2025-05-23 19:36:13.911+00	2025-05-23 19:06:28.77+00
7	collection-posts-1	{"fields": {"_index-1": {"tabIndex": 2}}}	2025-05-23 19:38:55.011+00	2025-05-23 19:38:55.011+00
8	case-studies-list	{"preset": null}	2025-05-28 20:38:22.078+00	2025-05-28 20:38:22.08+00
10	collection-case-studies-1	{"fields": {"_index-3": {"tabIndex": 2}}}	2025-05-29 17:58:11.562+00	2025-05-29 17:58:10.474+00
11	users-list	{"preset": null}	2025-05-30 06:33:57.606+00	2025-05-30 06:33:57.607+00
9	global-header	{"fields": {"navItems": {"collapsed": []}}}	2025-06-04 03:56:48.24+00	2025-05-29 16:58:12.542+00
12	categories-list	{"preset": null}	2025-06-04 03:56:50.757+00	2025-06-04 03:56:50.758+00
2	collection-pages-1	{"fields": {"layout": {"collapsed": ["6830c4f9f6a5ed0122b086b4", "6830c4f9f6a5ed0122b086b2"]}, "_index-1": {"tabIndex": 1}, "layout.1.columns": {"collapsed": ["6830c4f9f6a5ed0122b086aa", "6830c4f9f6a5ed0122b086ab", "6830c4f9f6a5ed0122b086ac", "6830c4f9f6a5ed0122b086ad", "6830c4f9f6a5ed0122b086ae"]}, "layout.2.columns": {"collapsed": []}}}	2025-08-18 21:09:55.072+00	2025-05-23 18:59:16.908+00
13	nav	{"open": false}	2025-11-24 18:06:31.226+00	2025-11-24 18:06:31.227+00
\.


--
-- Data for Name: payload_preferences_rels; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.payload_preferences_rels (id, "order", parent_id, path, users_id) FROM stdin;
1	\N	1	user	1
19	\N	3	user	1
24	\N	4	user	1
27	\N	6	user	1
28	\N	5	user	1
29	\N	7	user	1
43	\N	8	user	1
47	\N	10	user	1
52	\N	11	user	1
55	\N	9	user	1
56	\N	12	user	1
61	\N	2	user	1
62	\N	13	user	1
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.posts (id, title, hero_image_id, content, meta_title, meta_image_id, meta_description, published_at, slug, slug_lock, updated_at, created_at, _status) FROM stdin;
2	Timetracker project - Full Stack Web App built with ReactJS, ExpressJS, PostgreSQL	8	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Timetracker project", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "ReactJS | ExpressJS | NodeJS | SASS | PostgreSQL", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "An open source NodeJS & ReactJS project for tracking the time of hourly workers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "I built this application because it seems like a need for many small businesses with hourly workers — a way to quickly and easily assign tasks and allow workers to receive the project and location information they need, as well as clock in and out.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Although such software exists, I was unable to find an open source NodeJS version, so I decided to create one to better understand the process of building it in NodeJS & ReactJS.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Although I previously had a demo running, at some point I accidentally uploaded some changes which github's dependabot service updated to different npm package versions, breaking the project.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "So, I decided to remove the live demo.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "You can see how the app functions via the .gif videos below.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The main purpose of the project was simply to learn ReactJS and improve NodeJS skills", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "  ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Design", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Goals for user interface", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "My goal was to design the application with minimalism in mind.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• The user interface is based on opening and closing of viewports, which are hidden within and selected from the \\"Dashboard\\" menu button.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Each viewport is simply a box with a close button in the upper right corner. The user can open as many viewports as they want in order to create the \\"dashboard\\" or set of viewports they want to see.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• The viewports also help to maintain a sense of visually modularity in the application. This makes it easy to introduce new viewports, each with their own independent functionality, such as data charts, tabular data, or other data visualizations or business processes such as project quotes.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The main design frameworks used are bulma and bootstrap.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Purpose and ideas for expansion", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The idea behind this project is simply to provide various modules for providing business data, to small businesses. In this initial version of the project, the administrator can view timesheets on a table and a map, add new database rows for locations, projects, and employee activities, as well as edit and delete data. The timesheets time and map are updated in real time whenever an employee clocks in or out.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "An idea for expansion of this project would be to incorporate other business applications with modules alongside the modules of this employee tracking system. One example I've though about is a basic property management application— with the system provided here, an administrator can track the work of their maintenance technicians, gardeners, and property managers for example. With this foundation, additional modules could be added for setting up customer accounts (perhaps even do so with an API for a CRM, or shared DB), and monitoring rental payments, as well as a dashboard for tenants to view and pay their rent, and a scheduling system so that customers can schedule maintenance visits.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Other future modules might include an internal company news feed, a messaging system for communication about projects, charts to display worktime logged, expense tracking, or even video/IoT-related modules such as receipt scanning, warehouse monitoring, or equipment scanning.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Next steps", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I will be turning this project into a basic SaaS (multi-tenant monthly subscription app), which will involve a few more steps, including:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Admin user account layer for multi-tenant access — I'll create an \\"accounts\\" table, and use its ID as a prefix on the other tables in the system. In this way, each account will have its own set of database tables, keeping it separate from other accounts (the \\"timesheets\\" table becomes \\"account2_timesheets\\" for admin account number 2, for example).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• Brandable-pages — the account holder will be able to upload their logo, select brand colors to use as website main colors, and set up a few pages, such as a public facing landing page about the company, a list of jobs available to apply to, and private company pages for internal company information. From this area, employees will login to their accounts, within the administrator company's account", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• An email verification step for all users — this will be a simple url query, set up with a hash code and user email address to be queried and matched against the database.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A dashboard for managers — A cross between the employee and admin dashboards, where project managers can assign activities to and communicate with their team, as well as generate quotes for customers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A subscription system", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "• A flashy promo page", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Once all of that is done, I can add on new business modules.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Admin Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Timesheet Tracker", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Real-time display of new clockin/clock out events", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Table and map view (clicking on table displays marker)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Timerange search, with default value set to the past two weeks", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "UI Slider allows user to adjust viewport width of table or map shown", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b0869b", "media": 8, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Data creation via forms", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Allows user to create new data in selected table", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Autopopulated dropdown selector shows tables for which new data can be created", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Various autopopulated UI elements within forms, such as tables or dropdown selectors", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "On creation of new activity, the assigned employee receives the activity in their task list in real-time", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd6a5918de63a6db439f", "media": 11, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Data administration— editing and deleting data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "User double clicks to edit data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Simply select row and click 'delete' to remove data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Easy download of csv file for any table, such as timesheets", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd7e5918de63a6db43a0", "media": 12, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: View submitted resume documents and job applicant data", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "View applicant resume in browser or download", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd905918de63a6db43a1", "media": 13, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: External API interaction, such as GPS lookup", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Address inputs are autocomplated and provide GPS coordinate lookup via google maps API", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cd9f5918de63a6db43a2", "media": 14, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Employee Dashboard", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Authentication", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Registration / Login / Logout system", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Passwords salted & hashed with bcrypt", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "User type & password comparison check on login", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdaf5918de63a6db43a3", "media": 15, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: Task list", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Visual timeline of upcoming tasks updated in real time", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Clocking in & out, with real-time display in Admin timesheet table & map", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project information including map of location", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Employees have ability to create tasks for themselves", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "right", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdbd5918de63a6db43a4", "media": 16, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Section: User/Employee Profile", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Autocompletion of address via google maps API", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Photo upload, with preview", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Resume/document upload, with format check validation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cdce5918de63a6db43a5", "media": 17, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}], "direction": "ltr"}}	Timetracker project - Full Stack Web App built with ReactJS, ExpressJS, PostgreSQL	8	An open source NodeJS & ReactJS project for tracking the time of hourly workers.  built with ReactJS, ExpressJS, PostgreSQL	2025-05-23 18:56:57.157+00	timetrackerproject---full-stack-web-app-built-with-reactjs-expressjs-postgresql	t	2025-05-23 19:35:58.814+00	2025-05-23 18:56:57.156+00	published
3	Automated Enterprise API Integration - Marketo & LiveChat (NodeJS)	6	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Automated Enterprise API Integration", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Marketo LiveChat API Project (NodeJS)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "While at Pulse Secure I wrote a script in NodeJS to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decion model) and log any errors encountered. Then, once per day, a second script would email the admin about any new errors. Here's a simple visual explanation of how the project worked, at a high level.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b086a1", "media": 6, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project Explanation", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The purpose of the project was to assist in keeping all marketing data in one place: in Marketo's database. However, I could easily do the same sort of API integration project with applications such as Salesforce, Netsuite, or SAP. It's simply a matter of using the API endpoints to return to you the data that you're looking for.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "APIs often have constraints though— in order to make sure their services don't get overburdened by requests to the point that they shut down under the heavy load. In the case of Marketo, it has a few constraints which my project needed to stay within the confines of.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Since Marketo's API constraints are what really made project interesting, I thought share with you an overview of how the script overcame these constraints (really, they're more like project criteria, to be rolled up with system requriements as part of systems analysis)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c6f748b3435c492f3a7b", "media": 7, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Project Constraints & Architecture to Overcome Constraints", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The constraints were interesting because adhering to the constraints required control mechanisms which moderated the speed & volume of the flow of data, regarding both get (data download) & post (data upload) requests:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Batching get requests:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " The script begins by checking the date of the last time it ran, and uses this date timeframe in its search for LiveChat data. It also does a refresh of its Marketo API key. Once it does that, it's ready to roll, and the first real step in the data flow is to get LiveChat data. LiveChat's API doesn't really have many constraints to worry about. So, once we have that data, we can compare it to Marketo's data. But first we have to get the data from Marketo in a way which optimizes API usage efficiency.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The script needed to limit get requests for Marketo data into groups of up to 300. This means it can return up to 300 rows of Marketo data-- based on the 300 email addresses from LiveChat, passed into Marketo for looking up the rows. (Once I had the LiveChat visitor data, then I needed to cross reference which of the visitors are already listed in our marekto instance, by looking them up by email (used as a unique id), which required batching into groups of 300)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Batching post requests:", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " Once the LiveChat data was compared to the Marketo data, and I knew which data needed to float up to Marekto (based on certain conditions, for example: if their geographical data already existed in Marketo, do not overwrite it. If it does not exist though, add it to the data object for upload.) There's a limit of 10 concurrent API requests per second. NodeJS is asynchronous though. Which makes it very fast. But it's also a bit tricky to control. The problem is that without controlling the stream of post requests-- for example, let's say there were 100 visitors in the past hour-- the API constraints would be quickly overwhelmed and marketo would refuse to accept all of our post requests.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "That is, uploading those 100 units of visitor data to Marketo at full speed (thanks to asynchronicity) would be delivered within perhaps half a second or so. The problem is that Marketo doesn't want to be pinged so many times, so quickly. It wants some breathing space.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The way I ended up controlling these batches of post requests so that all 100 data objects both don't fire all at once, immediately, is by using the NodeJS ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67fee6d3a0a8d609065b5ae8", "type": "link", "fields": {"url": "https://github.com/yongzhihuang/PentaCode/blob/master/AsyncJs/asyncQueue.js", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "async library's queue() function", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ", which allows the developer to issue the post calls in small batches (adjustable) and at throttled increments (also adjustable). This allowed me to overcome the Rate limit and the Concurrency limit.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Why does this matter?", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " Basically, with asynchronous functions, they all fire immediately. With a get request function though, two main things happen: we fire our function (the \\"request\\"), and then we receive a response from the server we're communicating with. This entire process is one concurrent API call. With asynchronous function calls though, the speed of the request/response cycle depends a lot on just internet latency speeds. This means it's hard to predict how long the request will take.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Now, the concurrency limit says there's a max of 10 per second. So, what we could do is say, run one batch of 10 per second, right? Wrong. Unfortunately, it's very possible that one or some of those requests will take a little longer than others. So, I had to adjust the batches to something like two batches of four per second, just as an example, which adds up to eight per second. Another example that could work is one batch of seven per 750ms.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "But again, it the success of these depends in part on internet latency, hence it's wise to err on the side of being conservative, and reducing the API calls per second to whatever amount makes sense, to ensure that it's very unlikely that we surpass the limit. This is why asynchronous programming is challenging, fun, and interesting: because it is sometimes difficult to control precisely.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	Automated MarTech API Integration - Marketo & LiveChat	6	A  NodeJS project to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decision model) and log any errors encountered. 	2025-05-23 18:56:57.209+00	automated-enterprise-api-integration---marketo--livechat-nodejs	t	2025-05-23 19:36:28.539+00	2025-05-23 18:56:57.209+00	published
1	Predicting rates of crime based on economic indicators	18	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Predicting rates of crime based on economic indicators", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h2", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Predictive & Descriptive Statistical Analysis", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "As part of my graduate statistics course \\"Advanced Statistical Methods\\", using R, I data-engineered a dataset from public datasets, then tested various predictive models for their accuracy.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "After finding the right model, I demonstrate a training model and test real data against it. Similar methodology, on a larger scale, could be replicated to make predictions of business outcomes. (In fact, one project I would like to work on is a D3 web dashboard for business metrics statistically derived with R or Python).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b08690", "style": "info", "content": {"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Here is the model I settled on: (note: each datapoint is per zipcode)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "[Crime] per Capita prediction =", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "[% of Population Below Poverty Level] *", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "[Median Household Income] *", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "[Median Rent price]", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Where Crime = Assault, Robbery, Burglary, or Theft, and * = interaction effects", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}, "blockName": "Dynamic Components", "blockType": "banner"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trained Models", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Here are three examples of trained models tested with actual data.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " It's a multivariate linear regression model trained with 80% of the dataset, and tested with 20%. Each time I test the model, a new randomly selected training model is created.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Test 1 of Assault, Robbery, Burglary and Theft models", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830c4f9f6a5ed0122b08692", "media": 19, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Test 2 of Assault, Robbery, Burglary and Theft models", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830ce9c5918de63a6db43a9", "media": 20, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Test 3 of Assault, Robbery, Burglary and Theft models", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830ceb05918de63a6db43aa", "media": 21, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h1", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The Explanation: How does this project worK?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h5", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The project is a ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67feaf4c9c8c58771d5deb78", "type": "link", "fields": {"url": "https://en.wikipedia.org/wiki/Linear_regression#Simple_and_multiple_linear_regression", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "Multilinear regression model", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " which seeks to determine:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h4", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "\\"To what degree can a neighborhood's crime rates be predicted with economic factors?\\"", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "(which is what this summary represents:)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": " Can Crime per Capita (in a zipcode) can be predicted with these economic factors below?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zipcode-based Economic factor 1: % of Population Below Poverty Level", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zipcode-based Economic factor 2: Median Household Income", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Zipcode-based Economic factor 3: Median Rent price of dwellings", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h5", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The anwser is YES, quite strongly-- with 70-80% confidence, depending on crime type, in Austin, TX", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb79", "type": "link", "fields": {"url": "https://167.99.96.28/project-statistics#results", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "How you ask? Jump to how, in section: \\"The Results\\"", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}], "direction": "ltr", "textFormat": 1}], "direction": "ltr", "textStyle": "", "textFormat": 1}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"tag": "h6", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I aggregated data from, and data-engineered, the following datasets:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb7a", "type": "link", "fields": {"url": "https://data.austintexas.gov/Building-and-Development/2014-Housing-Market-Analysis-Data-by-Zip-Code/hcnj-rei3/6", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "2014 Housing Market Analysis Dataset (Government Open Data initiative for Austin, TX)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ": Source of % of Population Below Poverty Level, Median Household Income, Median Rent price", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb7b", "type": "link", "fields": {"url": "https://data.austintexas.gov/dataset/Annual-Crime-2014/7g8v-xxja/about", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "2014 Crime dataset (Government Open Data initiative for Austin, TX)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ": 40,000 rows -- I aggregated & simplified variations of crime names using regex", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb7c", "type": "link", "fields": {"url": "https://www.rdocumentation.org/packages/choroplethrZip/versions/1.5.0/topics/df_pop_zip", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "2012 US Population Per Zipcode dataset", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ": R's local data library to access 2012 population statistics, using the following command: data(df_pop_zip)", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"id": "67feaf4c9c8c58771d5deb7d", "type": "link", "fields": {"url": "https://www.census.gov/geo/maps-data/data/gazetteer2015.html", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "2015 U.S. Gazetteer Map Data / US Census Department Geographic dataset:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": " Although I aggregated this data into the final data table, it did not go into the final model", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h4", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The process:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"mode": "normal", "text": "I collected datasets for zipcodes in Austin showing the economic indicators mentioned above for each zipcode (the median income, median rent, and percentage of residents in poverty for 36 Austin, Texas zipcodes). I then cross-referenced these zipcodes with a dataset of about 40,000 crimes that occured in Austin in a particular year. I excluded all zipcodes except those for which I had data for both economic indicators and crimes. I then counted up crimes per category (6 categories total, after similfying category names: Assault, Burglary, Robbery, Theft, Homicide, and Rape), per zipcode. With these two datasets showing economic & crime data for particular zipdoes, we are able to produce an equation showing the degree of confidence with which we can predict rates of crime based on the chosen economic indicators.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The results:", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "According to coefficient of determination for the various models, we can say that about 70%-80% of the variability in these crimes—Assault, Burglary, and Robbery (for the zip codes examined) can be explained by the variability in the selected economic indicators.", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " That's a pretty strong connection which means that these three types of crimes can be relatively well explained based on these three economic indicators (income, rent, and % of population below poverty)! Based on this study, the other types of crimes examined (homicide and rape) cannot be reliably predicted based on economic indicators– this means they're less determined by economic health of a neighborhood, and more by other unknown/non-analyzed factors.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "The ultimate purpose of the project was to create a statistical model from the \\"training\\" dataset – i.e. a model that explains the data – and then to test the \\"test\\" dataset upon the training model, to check how well the model can be used to predict crime rates based on the economic factors studied.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"id": "67feafa49c8c58771d5deb7f", "type": "link", "fields": {"url": "https://167.99.96.28/project-statistics#graphics", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "In the statistical charts-- the colorful lines at the top of this page", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": "-- we can visualize how well the model predicts crime based on the economic factor inputs from the training dataset. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "The green lines", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " show the boundaries of a 95% confidence interval (we can be \\"95% certain\\" that this interval contains the true mean of the population, which we use the data in the test group to simulate a sample of.), with ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "the redline", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " being the predicted average. ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"mode": "normal", "text": "The black line", "type": "text", "style": "", "detail": 0, "format": 1, "version": 1}, {"mode": "normal", "text": " represents the actual test data used. As you can see, the green lines capture the majority of the datapoints from the test data, showing that this model (using economic data to explain crimes) does quite a good job of some of these predicting specific crimes (assault, robbery, and especially burglary).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "I programmed the project for my two other teammates, who provided guidance, feedback, and ideation, and the final script can be viewed ", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"id": "67feafa49c8c58771d5deb80", "type": "link", "fields": {"url": "https://github.com/pmeaney/r_projects/blob/master/vFinalVersion_projectScript.R", "newTab": false, "linkType": "custom"}, "format": "", "indent": 0, "version": 3, "children": [{"mode": "normal", "text": "here", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"mode": "normal", "text": ".", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Why do I enjoy statistical analysis?", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I enjoy statistical analysis because it is a creative, fun, puzzle-solving way of thinking which allows us to explain the world through data in meaningful, measurable ways.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}, {"type": "linebreak", "version": 1}, {"type": "linebreak", "version": 1}, {"mode": "normal", "text": "Throughout this particular statistics course (\\"Advanced Statistical Methods\\"), I noticed my thought processes changing. I noticed this especially while working on my statistics project, and for me, I think I really changed between the day I walked into the class, and the day class ended. I realized then that I had began to think more analytically and from a more data-driven, input-output, and equation-based perspective. Crafting equations from data is solving a puzzle– a puzzle where you can produce real and fascinating answers from apparently unrelated datasets! It's quite fun once you get into it!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"type": "paragraph", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "In addition to changing the way you think, and having fun analyzing a real life puzzle... practicing statistics via scripting will improve your programming abilities! Learning R really helped me become a better programmer because before I could start playing with data, I spent plenty of time learning R's data types and data structures, which was useful when it came time to produce an analysis project and is applicable to programming.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}, {"tag": "h6", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "I really like statistics in general for the contribution that the multivariate analysis makes when analyzing any kind of ideas, really. It is quite handy for empirically analyzing all sorts of ideas: whether business decisions, scientific & engineering projects, economic theories, or policy arguments. Being able to formulate an equation or model based on data is a skill in its own right.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h6", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [], "direction": null}, {"tag": "h3", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "One of my favorite data visualizations is the \\"choropleth map\\", i.e. heatmap.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"tag": "h6", "type": "heading", "format": "left", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Here's a choropleth map of Assault frequency for zipcodes in Austin, TX (data is annual assaults reported in 2014).", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}, {"type": "block", "fields": {"id": "6830cec65918de63a6db43b3", "media": 18, "blockName": "", "blockType": "mediaBlock"}, "format": "", "version": 2}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	Statistical Computing in R: Predicting Crime based on Economic Factors	19	A Multilinear Regression Model to predict rates of crime based on neighborhood economic health, for the graduate statistics course "Advanced Quantitative Methods"	2025-05-23 18:56:57.07+00	predicting-rates-of-crime-based-on-economic-indicators	t	2025-05-23 19:39:15.322+00	2025-05-23 18:56:57.06+00	published
\.


--
-- Data for Name: posts_populated_authors; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.posts_populated_authors (_order, _parent_id, id, name) FROM stdin;
\.


--
-- Data for Name: posts_rels; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.posts_rels (id, "order", parent_id, path, posts_id, categories_id, users_id) FROM stdin;
29	1	2	relatedPosts	1	\N	\N
30	2	2	relatedPosts	3	\N	\N
31	1	2	authors	\N	\N	2
32	1	3	categories	\N	3	\N
33	2	3	categories	\N	1	\N
34	3	3	categories	\N	4	\N
35	1	3	authors	\N	\N	2
36	1	1	relatedPosts	2	\N	\N
37	2	1	relatedPosts	3	\N	\N
38	1	1	authors	\N	\N	2
\.


--
-- Data for Name: redirects; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.redirects (id, "from", to_type, to_url, updated_at, created_at) FROM stdin;
\.


--
-- Data for Name: redirects_rels; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.redirects_rels (id, "order", parent_id, path, pages_id, posts_id) FROM stdin;
\.


--
-- Data for Name: search; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.search (id, title, priority, slug, meta_title, meta_description, meta_image_id, updated_at, created_at) FROM stdin;
2	Timetracker project - Full Stack Web App built with ReactJS, ExpressJS, PostgreSQL	0	timetrackerproject---full-stack-web-app-built-with-reactjs-expressjs-postgresql	Timetracker project - Full Stack Web App built with ReactJS, ExpressJS, PostgreSQL	An open source NodeJS & ReactJS project for tracking the time of hourly workers.  built with ReactJS, ExpressJS, PostgreSQL	8	2025-05-23 19:35:58.846+00	2025-05-23 18:56:57.156+00
3	Automated Enterprise API Integration - Marketo & LiveChat (NodeJS)	0	automated-enterprise-api-integration---marketo--livechat-nodejs	Automated MarTech API Integration - Marketo & LiveChat	A  NodeJS project to migrate data from a webchat application (LiveChat) to a marketing application (Marketo), once hourly, (based on a conditional decision model) and log any errors encountered. 	6	2025-05-23 19:36:28.603+00	2025-05-23 18:56:57.209+00
1	Predicting rates of crime based on economic indicators	0	predicting-rates-of-crime-based-on-economic-indicators	Statistical Computing in R: Predicting Crime based on Economic Factors	A Multilinear Regression Model to predict rates of crime based on neighborhood economic health, for the graduate statistics course "Advanced Quantitative Methods"	19	2025-05-23 19:39:15.369+00	2025-05-23 18:56:57.06+00
\.


--
-- Data for Name: search_categories; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.search_categories (_order, _parent_id, id, relation_to, title) FROM stdin;
1	3	6830ce3cf6a5ed0122b086be	categories	\N
2	3	6830ce3cf6a5ed0122b086bf	categories	\N
3	3	6830ce3cf6a5ed0122b086c0	categories	\N
\.


--
-- Data for Name: search_rels; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.search_rels (id, "order", parent_id, path, posts_id) FROM stdin;
12	\N	2	doc	2
13	\N	3	doc	3
14	\N	1	doc	1
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: payloadcms-052225blue-user
--

COPY public.users (id, name, updated_at, created_at, email, reset_password_token, reset_password_expiration, salt, hash, login_attempts, lock_until) FROM stdin;
2	Demo Author	2025-05-23 18:56:43.508+00	2025-05-23 18:56:42.663+00	demo-author@example.com	\N	\N	fccf91b31a9e2f368f5af44bcefcbcd3892a9fdfed3170347faf6dce15d718c9	4c2459c79291350b3c2a369dfd02bc27543f26b769227840e0085f306287f6d2f08ceb1b956e3007fe3cf0932ea7654fa777c3aaafa967b9633938c618233e23fb3ac15dbec05679093dea0db009155e42a8de438f7a2700efd80883486701d2a3db7c43cd970e6f58d5404fc06ec4e9e8adb27b8007743123b9a64960f97a0291a757f7c929cd6da791b06d4006417a2c5ecbf4ee1044dc77c06a4428e9d812d72cc4079efa146f17698643e97363c7d650c2f74cc597c8fc1fbc64b5826ebe3c13acbb2cc7a964a6c6555dc892cc7fb52d77fdeaaef21dcac4fbb9ab0ef67d33f24896bf6d0377f7296c577c9304a030c609b83c8e33913a230aaf598df0197d9985ad374d9f4e2a6fd9d25ea45a5422ec2ea205f8903165e5baaa311135112a9d6c974269c85924a209a72abed7164fc996feeb0bfe79eea2a4666333da5fbfab3eded7cd1852a6b8973edfb0cacacfd505a7fc99d331b28ece90e91bb3b110d5f3d2fcacf3cd11598234040ef41c259313115af6827a2069b3f8edc06bcbbca52ab6300ffa46ab6446f1c6c9091001d60e2135d58413567528613b876d14834d1105464ffcf0678c40e5f02c7a717144798862e66367a790588130955ff87f067ad497e13b694c333b398e39cfe10941d6501bbf7f68921479de83111eb7a7409cf895ffab5858c3459876c31c907349fbbb1d35de8917311ee95ba82a37	0	\N
1	Patrick	2025-11-24 18:03:20.794+00	2025-05-23 18:56:39.395+00	patrick.wm.meaney@gmail.com	\N	\N	b429986b7db41cc9e513884d86d8a402012a2db8b9ac570b59089d4c2447deda	7bb58218019f0281f0d2ea528ce6c641e92cc57f641c4610274124919725b1eecc92df5b9fad2f34c3dc7c922700f958f2564bdaa8606bc0caad7c8b19fa277eb6d650d9b774fe95439b1e5dcba8f7fbaeb8a06d24c78f75097e94b08d1195f907c05909430beddd2fc8dc17bd9fa6a141fc73f6c422dba22886239c7464402c5f3c4224f79ea92d720aeb33bb2a3e31b502389999885d83a6efe8402473fadb86dec3086bf89a83255d6818e91070c51cba09d0b8ec457099879c471046ff23cd8f8908cd08945162de25a70ea3e6302201383e63e5f5b620553e698d7700de5c1059ea8befb5d714d8d2fee3adc0d8e04ecd133bf5487858eb28573037ce604766f77e0dc4f92e3b341995b04e7237b0fa745c3275c5c61325e5d310ee715e407a1a2d7f39b3d579d90e99b931829e0ddf771b83f6858a01d0f82cef1f71856f2816f290a1a101cd51c02e8afcb4546c1de275c82e1b72edc672d7bf1a40fc66fddc302773ced063e59e822affee36cb25ff8cab92de08e3acbe8bb52421f7b5d9d3f271b0d50547253678b056d47a4125c5c2b8840b8e9c13d0038c74b59368afa773a07b04ad4224c6cb57b93b643e3d9093de02ce819cfa1317e9e2b8464da0d7b9f9868945341b2013b76c9436077e0f892dca1fff1c7d595d7efb05a0ddbb5569ff7d7e399a1e449795098dc902ce0bfb20c750ff6a166869e0b1e3c4	2	\N
\.


--
-- Name: _case_studies_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._case_studies_v_id_seq', 5, true);


--
-- Name: _case_studies_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._case_studies_v_rels_id_seq', 1, false);


--
-- Name: _case_studies_v_version_populated_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._case_studies_v_version_populated_authors_id_seq', 1, false);


--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._pages_v_blocks_archive_id_seq', 1279, true);


--
-- Name: _pages_v_blocks_content_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_columns_id_seq', 7674, true);


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._pages_v_blocks_content_id_seq', 1279, true);


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_id_seq', 1279, true);


--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._pages_v_blocks_cta_links_id_seq', 11, true);


--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._pages_v_blocks_form_block_id_seq', 1, true);


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._pages_v_blocks_media_block_id_seq', 6, true);


--
-- Name: _pages_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._pages_v_id_seq', 34, true);


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._pages_v_rels_id_seq', 1, false);


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._pages_v_version_hero_links_id_seq', 2558, true);


--
-- Name: _posts_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._posts_v_id_seq', 26, true);


--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._posts_v_rels_id_seq', 829, true);


--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public._posts_v_version_populated_authors_id_seq', 1, false);


--
-- Name: case_studies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.case_studies_id_seq', 2, true);


--
-- Name: case_studies_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.case_studies_rels_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.categories_id_seq', 6, true);


--
-- Name: footer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.footer_id_seq', 1, true);


--
-- Name: footer_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.footer_rels_id_seq', 1, false);


--
-- Name: form_submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.form_submissions_id_seq', 2, true);


--
-- Name: forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.forms_id_seq', 1, true);


--
-- Name: header_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.header_id_seq', 1, true);


--
-- Name: header_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.header_rels_id_seq', 2, true);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.media_id_seq', 22, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.pages_id_seq', 3, true);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.pages_rels_id_seq', 1, false);


--
-- Name: payload_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.payload_jobs_id_seq', 1, false);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.payload_locked_documents_id_seq', 453, true);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.payload_locked_documents_rels_id_seq', 904, true);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.payload_migrations_id_seq', 2, true);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.payload_preferences_id_seq', 13, true);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.payload_preferences_rels_id_seq', 62, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.posts_id_seq', 5, true);


--
-- Name: posts_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.posts_rels_id_seq', 38, true);


--
-- Name: redirects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.redirects_id_seq', 1, false);


--
-- Name: redirects_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.redirects_rels_id_seq', 1, false);


--
-- Name: search_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.search_id_seq', 3, true);


--
-- Name: search_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.search_rels_id_seq', 14, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: payloadcms-052225blue-user
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: _case_studies_v _case_studies_v_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._case_studies_v
    ADD CONSTRAINT _case_studies_v_pkey PRIMARY KEY (id);


--
-- Name: _case_studies_v_rels _case_studies_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._case_studies_v_rels
    ADD CONSTRAINT _case_studies_v_rels_pkey PRIMARY KEY (id);


--
-- Name: _case_studies_v_version_populated_authors _case_studies_v_version_populated_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._case_studies_v_version_populated_authors
    ADD CONSTRAINT _case_studies_v_version_populated_authors_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_archive _pages_v_blocks_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_archive
    ADD CONSTRAINT _pages_v_blocks_archive_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_content_columns _pages_v_blocks_content_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns
    ADD CONSTRAINT _pages_v_blocks_content_columns_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_content
    ADD CONSTRAINT _pages_v_blocks_content_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta_links _pages_v_blocks_cta_links_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links
    ADD CONSTRAINT _pages_v_blocks_cta_links_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_cta _pages_v_blocks_cta_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_cta
    ADD CONSTRAINT _pages_v_blocks_cta_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_pkey PRIMARY KEY (id);


--
-- Name: _pages_v _pages_v_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_rels _pages_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_pkey PRIMARY KEY (id);


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_version_hero_links
    ADD CONSTRAINT _pages_v_version_hero_links_pkey PRIMARY KEY (id);


--
-- Name: _posts_v _posts_v_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_pkey PRIMARY KEY (id);


--
-- Name: _posts_v_rels _posts_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_pkey PRIMARY KEY (id);


--
-- Name: _posts_v_version_populated_authors _posts_v_version_populated_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._posts_v_version_populated_authors
    ADD CONSTRAINT _posts_v_version_populated_authors_pkey PRIMARY KEY (id);


--
-- Name: case_studies case_studies_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.case_studies
    ADD CONSTRAINT case_studies_pkey PRIMARY KEY (id);


--
-- Name: case_studies_populated_authors case_studies_populated_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.case_studies_populated_authors
    ADD CONSTRAINT case_studies_populated_authors_pkey PRIMARY KEY (id);


--
-- Name: case_studies_rels case_studies_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.case_studies_rels
    ADD CONSTRAINT case_studies_rels_pkey PRIMARY KEY (id);


--
-- Name: categories_breadcrumbs categories_breadcrumbs_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: footer_nav_items footer_nav_items_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.footer_nav_items
    ADD CONSTRAINT footer_nav_items_pkey PRIMARY KEY (id);


--
-- Name: footer footer_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.footer
    ADD CONSTRAINT footer_pkey PRIMARY KEY (id);


--
-- Name: footer_rels footer_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_pkey PRIMARY KEY (id);


--
-- Name: form_submissions form_submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.form_submissions
    ADD CONSTRAINT form_submissions_pkey PRIMARY KEY (id);


--
-- Name: form_submissions_submission_data form_submissions_submission_data_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.form_submissions_submission_data
    ADD CONSTRAINT form_submissions_submission_data_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_checkbox forms_blocks_checkbox_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_checkbox
    ADD CONSTRAINT forms_blocks_checkbox_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_country forms_blocks_country_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_country
    ADD CONSTRAINT forms_blocks_country_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_email forms_blocks_email_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_email
    ADD CONSTRAINT forms_blocks_email_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_message forms_blocks_message_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_message
    ADD CONSTRAINT forms_blocks_message_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_number forms_blocks_number_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_number
    ADD CONSTRAINT forms_blocks_number_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_select_options forms_blocks_select_options_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_select_options
    ADD CONSTRAINT forms_blocks_select_options_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_select forms_blocks_select_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_select
    ADD CONSTRAINT forms_blocks_select_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_state forms_blocks_state_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_state
    ADD CONSTRAINT forms_blocks_state_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_text forms_blocks_text_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_text
    ADD CONSTRAINT forms_blocks_text_pkey PRIMARY KEY (id);


--
-- Name: forms_blocks_textarea forms_blocks_textarea_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_textarea
    ADD CONSTRAINT forms_blocks_textarea_pkey PRIMARY KEY (id);


--
-- Name: forms_emails forms_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_emails
    ADD CONSTRAINT forms_emails_pkey PRIMARY KEY (id);


--
-- Name: forms forms_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms
    ADD CONSTRAINT forms_pkey PRIMARY KEY (id);


--
-- Name: header_nav_items header_nav_items_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.header_nav_items
    ADD CONSTRAINT header_nav_items_pkey PRIMARY KEY (id);


--
-- Name: header header_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.header
    ADD CONSTRAINT header_pkey PRIMARY KEY (id);


--
-- Name: header_rels header_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_pkey PRIMARY KEY (id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_archive pages_blocks_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_archive
    ADD CONSTRAINT pages_blocks_archive_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content_columns pages_blocks_content_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_content_columns
    ADD CONSTRAINT pages_blocks_content_columns_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_content pages_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_content
    ADD CONSTRAINT pages_blocks_content_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta_links pages_blocks_cta_links_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_cta_links
    ADD CONSTRAINT pages_blocks_cta_links_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_cta pages_blocks_cta_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_cta
    ADD CONSTRAINT pages_blocks_cta_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_form_block pages_blocks_form_block_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_pkey PRIMARY KEY (id);


--
-- Name: pages_blocks_media_block pages_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_pkey PRIMARY KEY (id);


--
-- Name: pages_hero_links pages_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_hero_links
    ADD CONSTRAINT pages_hero_links_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages_rels pages_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_jobs_log payload_jobs_log_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_jobs_log
    ADD CONSTRAINT payload_jobs_log_pkey PRIMARY KEY (id);


--
-- Name: payload_jobs payload_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_jobs
    ADD CONSTRAINT payload_jobs_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents payload_locked_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents
    ADD CONSTRAINT payload_locked_documents_pkey PRIMARY KEY (id);


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pkey PRIMARY KEY (id);


--
-- Name: payload_migrations payload_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_migrations
    ADD CONSTRAINT payload_migrations_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences payload_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_preferences
    ADD CONSTRAINT payload_preferences_pkey PRIMARY KEY (id);


--
-- Name: payload_preferences_rels payload_preferences_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: posts_populated_authors posts_populated_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.posts_populated_authors
    ADD CONSTRAINT posts_populated_authors_pkey PRIMARY KEY (id);


--
-- Name: posts_rels posts_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_pkey PRIMARY KEY (id);


--
-- Name: redirects redirects_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.redirects
    ADD CONSTRAINT redirects_pkey PRIMARY KEY (id);


--
-- Name: redirects_rels redirects_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_pkey PRIMARY KEY (id);


--
-- Name: search_categories search_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.search_categories
    ADD CONSTRAINT search_categories_pkey PRIMARY KEY (id);


--
-- Name: search search_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_pkey PRIMARY KEY (id);


--
-- Name: search_rels search_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.search_rels
    ADD CONSTRAINT search_rels_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: _case_studies_v_autosave_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_autosave_idx ON public._case_studies_v USING btree (autosave);


--
-- Name: _case_studies_v_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_created_at_idx ON public._case_studies_v USING btree (created_at);


--
-- Name: _case_studies_v_latest_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_latest_idx ON public._case_studies_v USING btree (latest);


--
-- Name: _case_studies_v_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_parent_idx ON public._case_studies_v USING btree (parent_id);


--
-- Name: _case_studies_v_rels_case_studies_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_rels_case_studies_id_idx ON public._case_studies_v_rels USING btree (case_studies_id);


--
-- Name: _case_studies_v_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_rels_categories_id_idx ON public._case_studies_v_rels USING btree (categories_id);


--
-- Name: _case_studies_v_rels_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_rels_order_idx ON public._case_studies_v_rels USING btree ("order");


--
-- Name: _case_studies_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_rels_parent_idx ON public._case_studies_v_rels USING btree (parent_id);


--
-- Name: _case_studies_v_rels_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_rels_path_idx ON public._case_studies_v_rels USING btree (path);


--
-- Name: _case_studies_v_rels_users_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_rels_users_id_idx ON public._case_studies_v_rels USING btree (users_id);


--
-- Name: _case_studies_v_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_updated_at_idx ON public._case_studies_v USING btree (updated_at);


--
-- Name: _case_studies_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_version_meta_version_meta_image_idx ON public._case_studies_v USING btree (version_meta_image_id);


--
-- Name: _case_studies_v_version_populated_authors_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_version_populated_authors_order_idx ON public._case_studies_v_version_populated_authors USING btree (_order);


--
-- Name: _case_studies_v_version_populated_authors_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_version_populated_authors_parent_id_idx ON public._case_studies_v_version_populated_authors USING btree (_parent_id);


--
-- Name: _case_studies_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_version_version__status_idx ON public._case_studies_v USING btree (version__status);


--
-- Name: _case_studies_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_version_version_created_at_idx ON public._case_studies_v USING btree (version_created_at);


--
-- Name: _case_studies_v_version_version_featured_image_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_version_version_featured_image_idx ON public._case_studies_v USING btree (version_featured_image_id);


--
-- Name: _case_studies_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_version_version_slug_idx ON public._case_studies_v USING btree (version_slug);


--
-- Name: _case_studies_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _case_studies_v_version_version_updated_at_idx ON public._case_studies_v USING btree (version_updated_at);


--
-- Name: _pages_v_autosave_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_autosave_idx ON public._pages_v USING btree (autosave);


--
-- Name: _pages_v_blocks_archive_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_archive_order_idx ON public._pages_v_blocks_archive USING btree (_order);


--
-- Name: _pages_v_blocks_archive_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_archive_parent_id_idx ON public._pages_v_blocks_archive USING btree (_parent_id);


--
-- Name: _pages_v_blocks_archive_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_archive_path_idx ON public._pages_v_blocks_archive USING btree (_path);


--
-- Name: _pages_v_blocks_content_columns_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_content_columns_order_idx ON public._pages_v_blocks_content_columns USING btree (_order);


--
-- Name: _pages_v_blocks_content_columns_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_content_columns_parent_id_idx ON public._pages_v_blocks_content_columns USING btree (_parent_id);


--
-- Name: _pages_v_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_content_order_idx ON public._pages_v_blocks_content USING btree (_order);


--
-- Name: _pages_v_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_content_parent_id_idx ON public._pages_v_blocks_content USING btree (_parent_id);


--
-- Name: _pages_v_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_content_path_idx ON public._pages_v_blocks_content USING btree (_path);


--
-- Name: _pages_v_blocks_cta_links_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_cta_links_order_idx ON public._pages_v_blocks_cta_links USING btree (_order);


--
-- Name: _pages_v_blocks_cta_links_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_cta_links_parent_id_idx ON public._pages_v_blocks_cta_links USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_cta_order_idx ON public._pages_v_blocks_cta USING btree (_order);


--
-- Name: _pages_v_blocks_cta_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_cta_parent_id_idx ON public._pages_v_blocks_cta USING btree (_parent_id);


--
-- Name: _pages_v_blocks_cta_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_cta_path_idx ON public._pages_v_blocks_cta USING btree (_path);


--
-- Name: _pages_v_blocks_form_block_form_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_form_block_form_idx ON public._pages_v_blocks_form_block USING btree (form_id);


--
-- Name: _pages_v_blocks_form_block_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_form_block_order_idx ON public._pages_v_blocks_form_block USING btree (_order);


--
-- Name: _pages_v_blocks_form_block_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_form_block_parent_id_idx ON public._pages_v_blocks_form_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_form_block_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_form_block_path_idx ON public._pages_v_blocks_form_block USING btree (_path);


--
-- Name: _pages_v_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_media_block_media_idx ON public._pages_v_blocks_media_block USING btree (media_id);


--
-- Name: _pages_v_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_media_block_order_idx ON public._pages_v_blocks_media_block USING btree (_order);


--
-- Name: _pages_v_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_media_block_parent_id_idx ON public._pages_v_blocks_media_block USING btree (_parent_id);


--
-- Name: _pages_v_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_blocks_media_block_path_idx ON public._pages_v_blocks_media_block USING btree (_path);


--
-- Name: _pages_v_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_created_at_idx ON public._pages_v USING btree (created_at);


--
-- Name: _pages_v_latest_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_latest_idx ON public._pages_v USING btree (latest);


--
-- Name: _pages_v_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_parent_idx ON public._pages_v USING btree (parent_id);


--
-- Name: _pages_v_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_rels_categories_id_idx ON public._pages_v_rels USING btree (categories_id);


--
-- Name: _pages_v_rels_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_rels_order_idx ON public._pages_v_rels USING btree ("order");


--
-- Name: _pages_v_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_rels_pages_id_idx ON public._pages_v_rels USING btree (pages_id);


--
-- Name: _pages_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_rels_parent_idx ON public._pages_v_rels USING btree (parent_id);


--
-- Name: _pages_v_rels_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_rels_path_idx ON public._pages_v_rels USING btree (path);


--
-- Name: _pages_v_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_rels_posts_id_idx ON public._pages_v_rels USING btree (posts_id);


--
-- Name: _pages_v_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_updated_at_idx ON public._pages_v USING btree (updated_at);


--
-- Name: _pages_v_version_hero_links_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_version_hero_links_order_idx ON public._pages_v_version_hero_links USING btree (_order);


--
-- Name: _pages_v_version_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_version_hero_links_parent_id_idx ON public._pages_v_version_hero_links USING btree (_parent_id);


--
-- Name: _pages_v_version_hero_version_hero_media_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_version_hero_version_hero_media_idx ON public._pages_v USING btree (version_hero_media_id);


--
-- Name: _pages_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_version_meta_version_meta_image_idx ON public._pages_v USING btree (version_meta_image_id);


--
-- Name: _pages_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_version_version__status_idx ON public._pages_v USING btree (version__status);


--
-- Name: _pages_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_version_version_created_at_idx ON public._pages_v USING btree (version_created_at);


--
-- Name: _pages_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_version_version_slug_idx ON public._pages_v USING btree (version_slug);


--
-- Name: _pages_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _pages_v_version_version_updated_at_idx ON public._pages_v USING btree (version_updated_at);


--
-- Name: _posts_v_autosave_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_autosave_idx ON public._posts_v USING btree (autosave);


--
-- Name: _posts_v_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_created_at_idx ON public._posts_v USING btree (created_at);


--
-- Name: _posts_v_latest_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_latest_idx ON public._posts_v USING btree (latest);


--
-- Name: _posts_v_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_parent_idx ON public._posts_v USING btree (parent_id);


--
-- Name: _posts_v_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_rels_categories_id_idx ON public._posts_v_rels USING btree (categories_id);


--
-- Name: _posts_v_rels_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_rels_order_idx ON public._posts_v_rels USING btree ("order");


--
-- Name: _posts_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_rels_parent_idx ON public._posts_v_rels USING btree (parent_id);


--
-- Name: _posts_v_rels_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_rels_path_idx ON public._posts_v_rels USING btree (path);


--
-- Name: _posts_v_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_rels_posts_id_idx ON public._posts_v_rels USING btree (posts_id);


--
-- Name: _posts_v_rels_users_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_rels_users_id_idx ON public._posts_v_rels USING btree (users_id);


--
-- Name: _posts_v_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_updated_at_idx ON public._posts_v USING btree (updated_at);


--
-- Name: _posts_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_version_meta_version_meta_image_idx ON public._posts_v USING btree (version_meta_image_id);


--
-- Name: _posts_v_version_populated_authors_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_version_populated_authors_order_idx ON public._posts_v_version_populated_authors USING btree (_order);


--
-- Name: _posts_v_version_populated_authors_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_version_populated_authors_parent_id_idx ON public._posts_v_version_populated_authors USING btree (_parent_id);


--
-- Name: _posts_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_version_version__status_idx ON public._posts_v USING btree (version__status);


--
-- Name: _posts_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_version_version_created_at_idx ON public._posts_v USING btree (version_created_at);


--
-- Name: _posts_v_version_version_hero_image_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_version_version_hero_image_idx ON public._posts_v USING btree (version_hero_image_id);


--
-- Name: _posts_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_version_version_slug_idx ON public._posts_v USING btree (version_slug);


--
-- Name: _posts_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX _posts_v_version_version_updated_at_idx ON public._posts_v USING btree (version_updated_at);


--
-- Name: case_studies__status_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX case_studies__status_idx ON public.case_studies USING btree (_status);


--
-- Name: case_studies_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX case_studies_created_at_idx ON public.case_studies USING btree (created_at);


--
-- Name: case_studies_featured_image_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX case_studies_featured_image_idx ON public.case_studies USING btree (featured_image_id);


--
-- Name: case_studies_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX case_studies_meta_meta_image_idx ON public.case_studies USING btree (meta_image_id);


--
-- Name: case_studies_populated_authors_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX case_studies_populated_authors_order_idx ON public.case_studies_populated_authors USING btree (_order);


--
-- Name: case_studies_populated_authors_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX case_studies_populated_authors_parent_id_idx ON public.case_studies_populated_authors USING btree (_parent_id);


--
-- Name: case_studies_rels_case_studies_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX case_studies_rels_case_studies_id_idx ON public.case_studies_rels USING btree (case_studies_id);


--
-- Name: case_studies_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX case_studies_rels_categories_id_idx ON public.case_studies_rels USING btree (categories_id);


--
-- Name: case_studies_rels_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX case_studies_rels_order_idx ON public.case_studies_rels USING btree ("order");


--
-- Name: case_studies_rels_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX case_studies_rels_parent_idx ON public.case_studies_rels USING btree (parent_id);


--
-- Name: case_studies_rels_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX case_studies_rels_path_idx ON public.case_studies_rels USING btree (path);


--
-- Name: case_studies_rels_users_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX case_studies_rels_users_id_idx ON public.case_studies_rels USING btree (users_id);


--
-- Name: case_studies_slug_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX case_studies_slug_idx ON public.case_studies USING btree (slug);


--
-- Name: case_studies_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX case_studies_updated_at_idx ON public.case_studies USING btree (updated_at);


--
-- Name: categories_breadcrumbs_doc_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX categories_breadcrumbs_doc_idx ON public.categories_breadcrumbs USING btree (doc_id);


--
-- Name: categories_breadcrumbs_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX categories_breadcrumbs_order_idx ON public.categories_breadcrumbs USING btree (_order);


--
-- Name: categories_breadcrumbs_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX categories_breadcrumbs_parent_id_idx ON public.categories_breadcrumbs USING btree (_parent_id);


--
-- Name: categories_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX categories_created_at_idx ON public.categories USING btree (created_at);


--
-- Name: categories_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX categories_parent_idx ON public.categories USING btree (parent_id);


--
-- Name: categories_slug_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX categories_slug_idx ON public.categories USING btree (slug);


--
-- Name: categories_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX categories_updated_at_idx ON public.categories USING btree (updated_at);


--
-- Name: footer_nav_items_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX footer_nav_items_order_idx ON public.footer_nav_items USING btree (_order);


--
-- Name: footer_nav_items_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX footer_nav_items_parent_id_idx ON public.footer_nav_items USING btree (_parent_id);


--
-- Name: footer_rels_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX footer_rels_order_idx ON public.footer_rels USING btree ("order");


--
-- Name: footer_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX footer_rels_pages_id_idx ON public.footer_rels USING btree (pages_id);


--
-- Name: footer_rels_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX footer_rels_parent_idx ON public.footer_rels USING btree (parent_id);


--
-- Name: footer_rels_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX footer_rels_path_idx ON public.footer_rels USING btree (path);


--
-- Name: footer_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX footer_rels_posts_id_idx ON public.footer_rels USING btree (posts_id);


--
-- Name: form_submissions_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX form_submissions_created_at_idx ON public.form_submissions USING btree (created_at);


--
-- Name: form_submissions_form_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX form_submissions_form_idx ON public.form_submissions USING btree (form_id);


--
-- Name: form_submissions_submission_data_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX form_submissions_submission_data_order_idx ON public.form_submissions_submission_data USING btree (_order);


--
-- Name: form_submissions_submission_data_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX form_submissions_submission_data_parent_id_idx ON public.form_submissions_submission_data USING btree (_parent_id);


--
-- Name: form_submissions_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX form_submissions_updated_at_idx ON public.form_submissions USING btree (updated_at);


--
-- Name: forms_blocks_checkbox_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_checkbox_order_idx ON public.forms_blocks_checkbox USING btree (_order);


--
-- Name: forms_blocks_checkbox_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_checkbox_parent_id_idx ON public.forms_blocks_checkbox USING btree (_parent_id);


--
-- Name: forms_blocks_checkbox_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_checkbox_path_idx ON public.forms_blocks_checkbox USING btree (_path);


--
-- Name: forms_blocks_country_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_country_order_idx ON public.forms_blocks_country USING btree (_order);


--
-- Name: forms_blocks_country_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_country_parent_id_idx ON public.forms_blocks_country USING btree (_parent_id);


--
-- Name: forms_blocks_country_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_country_path_idx ON public.forms_blocks_country USING btree (_path);


--
-- Name: forms_blocks_email_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_email_order_idx ON public.forms_blocks_email USING btree (_order);


--
-- Name: forms_blocks_email_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_email_parent_id_idx ON public.forms_blocks_email USING btree (_parent_id);


--
-- Name: forms_blocks_email_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_email_path_idx ON public.forms_blocks_email USING btree (_path);


--
-- Name: forms_blocks_message_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_message_order_idx ON public.forms_blocks_message USING btree (_order);


--
-- Name: forms_blocks_message_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_message_parent_id_idx ON public.forms_blocks_message USING btree (_parent_id);


--
-- Name: forms_blocks_message_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_message_path_idx ON public.forms_blocks_message USING btree (_path);


--
-- Name: forms_blocks_number_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_number_order_idx ON public.forms_blocks_number USING btree (_order);


--
-- Name: forms_blocks_number_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_number_parent_id_idx ON public.forms_blocks_number USING btree (_parent_id);


--
-- Name: forms_blocks_number_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_number_path_idx ON public.forms_blocks_number USING btree (_path);


--
-- Name: forms_blocks_select_options_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_select_options_order_idx ON public.forms_blocks_select_options USING btree (_order);


--
-- Name: forms_blocks_select_options_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_select_options_parent_id_idx ON public.forms_blocks_select_options USING btree (_parent_id);


--
-- Name: forms_blocks_select_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_select_order_idx ON public.forms_blocks_select USING btree (_order);


--
-- Name: forms_blocks_select_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_select_parent_id_idx ON public.forms_blocks_select USING btree (_parent_id);


--
-- Name: forms_blocks_select_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_select_path_idx ON public.forms_blocks_select USING btree (_path);


--
-- Name: forms_blocks_state_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_state_order_idx ON public.forms_blocks_state USING btree (_order);


--
-- Name: forms_blocks_state_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_state_parent_id_idx ON public.forms_blocks_state USING btree (_parent_id);


--
-- Name: forms_blocks_state_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_state_path_idx ON public.forms_blocks_state USING btree (_path);


--
-- Name: forms_blocks_text_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_text_order_idx ON public.forms_blocks_text USING btree (_order);


--
-- Name: forms_blocks_text_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_text_parent_id_idx ON public.forms_blocks_text USING btree (_parent_id);


--
-- Name: forms_blocks_text_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_text_path_idx ON public.forms_blocks_text USING btree (_path);


--
-- Name: forms_blocks_textarea_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_textarea_order_idx ON public.forms_blocks_textarea USING btree (_order);


--
-- Name: forms_blocks_textarea_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_textarea_parent_id_idx ON public.forms_blocks_textarea USING btree (_parent_id);


--
-- Name: forms_blocks_textarea_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_blocks_textarea_path_idx ON public.forms_blocks_textarea USING btree (_path);


--
-- Name: forms_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_created_at_idx ON public.forms USING btree (created_at);


--
-- Name: forms_emails_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_emails_order_idx ON public.forms_emails USING btree (_order);


--
-- Name: forms_emails_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_emails_parent_id_idx ON public.forms_emails USING btree (_parent_id);


--
-- Name: forms_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX forms_updated_at_idx ON public.forms USING btree (updated_at);


--
-- Name: header_nav_items_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX header_nav_items_order_idx ON public.header_nav_items USING btree (_order);


--
-- Name: header_nav_items_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX header_nav_items_parent_id_idx ON public.header_nav_items USING btree (_parent_id);


--
-- Name: header_rels_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX header_rels_order_idx ON public.header_rels USING btree ("order");


--
-- Name: header_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX header_rels_pages_id_idx ON public.header_rels USING btree (pages_id);


--
-- Name: header_rels_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX header_rels_parent_idx ON public.header_rels USING btree (parent_id);


--
-- Name: header_rels_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX header_rels_path_idx ON public.header_rels USING btree (path);


--
-- Name: header_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX header_rels_posts_id_idx ON public.header_rels USING btree (posts_id);


--
-- Name: media_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX media_created_at_idx ON public.media USING btree (created_at);


--
-- Name: media_filename_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE UNIQUE INDEX media_filename_idx ON public.media USING btree (filename);


--
-- Name: media_sizes_large_sizes_large_filename_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX media_sizes_large_sizes_large_filename_idx ON public.media USING btree (sizes_large_filename);


--
-- Name: media_sizes_medium_sizes_medium_filename_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX media_sizes_medium_sizes_medium_filename_idx ON public.media USING btree (sizes_medium_filename);


--
-- Name: media_sizes_og_sizes_og_filename_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX media_sizes_og_sizes_og_filename_idx ON public.media USING btree (sizes_og_filename);


--
-- Name: media_sizes_small_sizes_small_filename_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX media_sizes_small_sizes_small_filename_idx ON public.media USING btree (sizes_small_filename);


--
-- Name: media_sizes_square_sizes_square_filename_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX media_sizes_square_sizes_square_filename_idx ON public.media USING btree (sizes_square_filename);


--
-- Name: media_sizes_thumbnail_sizes_thumbnail_filename_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX media_sizes_thumbnail_sizes_thumbnail_filename_idx ON public.media USING btree (sizes_thumbnail_filename);


--
-- Name: media_sizes_xlarge_sizes_xlarge_filename_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX media_sizes_xlarge_sizes_xlarge_filename_idx ON public.media USING btree (sizes_xlarge_filename);


--
-- Name: media_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX media_updated_at_idx ON public.media USING btree (updated_at);


--
-- Name: pages__status_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages__status_idx ON public.pages USING btree (_status);


--
-- Name: pages_blocks_archive_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_archive_order_idx ON public.pages_blocks_archive USING btree (_order);


--
-- Name: pages_blocks_archive_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_archive_parent_id_idx ON public.pages_blocks_archive USING btree (_parent_id);


--
-- Name: pages_blocks_archive_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_archive_path_idx ON public.pages_blocks_archive USING btree (_path);


--
-- Name: pages_blocks_content_columns_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_content_columns_order_idx ON public.pages_blocks_content_columns USING btree (_order);


--
-- Name: pages_blocks_content_columns_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_content_columns_parent_id_idx ON public.pages_blocks_content_columns USING btree (_parent_id);


--
-- Name: pages_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_content_order_idx ON public.pages_blocks_content USING btree (_order);


--
-- Name: pages_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_content_parent_id_idx ON public.pages_blocks_content USING btree (_parent_id);


--
-- Name: pages_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_content_path_idx ON public.pages_blocks_content USING btree (_path);


--
-- Name: pages_blocks_cta_links_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_cta_links_order_idx ON public.pages_blocks_cta_links USING btree (_order);


--
-- Name: pages_blocks_cta_links_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_cta_links_parent_id_idx ON public.pages_blocks_cta_links USING btree (_parent_id);


--
-- Name: pages_blocks_cta_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_cta_order_idx ON public.pages_blocks_cta USING btree (_order);


--
-- Name: pages_blocks_cta_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_cta_parent_id_idx ON public.pages_blocks_cta USING btree (_parent_id);


--
-- Name: pages_blocks_cta_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_cta_path_idx ON public.pages_blocks_cta USING btree (_path);


--
-- Name: pages_blocks_form_block_form_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_form_block_form_idx ON public.pages_blocks_form_block USING btree (form_id);


--
-- Name: pages_blocks_form_block_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_form_block_order_idx ON public.pages_blocks_form_block USING btree (_order);


--
-- Name: pages_blocks_form_block_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_form_block_parent_id_idx ON public.pages_blocks_form_block USING btree (_parent_id);


--
-- Name: pages_blocks_form_block_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_form_block_path_idx ON public.pages_blocks_form_block USING btree (_path);


--
-- Name: pages_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_media_block_media_idx ON public.pages_blocks_media_block USING btree (media_id);


--
-- Name: pages_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_media_block_order_idx ON public.pages_blocks_media_block USING btree (_order);


--
-- Name: pages_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_media_block_parent_id_idx ON public.pages_blocks_media_block USING btree (_parent_id);


--
-- Name: pages_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_blocks_media_block_path_idx ON public.pages_blocks_media_block USING btree (_path);


--
-- Name: pages_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_created_at_idx ON public.pages USING btree (created_at);


--
-- Name: pages_hero_hero_media_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_hero_hero_media_idx ON public.pages USING btree (hero_media_id);


--
-- Name: pages_hero_links_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_hero_links_order_idx ON public.pages_hero_links USING btree (_order);


--
-- Name: pages_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_hero_links_parent_id_idx ON public.pages_hero_links USING btree (_parent_id);


--
-- Name: pages_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_meta_meta_image_idx ON public.pages USING btree (meta_image_id);


--
-- Name: pages_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_rels_categories_id_idx ON public.pages_rels USING btree (categories_id);


--
-- Name: pages_rels_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_rels_order_idx ON public.pages_rels USING btree ("order");


--
-- Name: pages_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_rels_pages_id_idx ON public.pages_rels USING btree (pages_id);


--
-- Name: pages_rels_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_rels_parent_idx ON public.pages_rels USING btree (parent_id);


--
-- Name: pages_rels_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_rels_path_idx ON public.pages_rels USING btree (path);


--
-- Name: pages_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_rels_posts_id_idx ON public.pages_rels USING btree (posts_id);


--
-- Name: pages_slug_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_slug_idx ON public.pages USING btree (slug);


--
-- Name: pages_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX pages_updated_at_idx ON public.pages USING btree (updated_at);


--
-- Name: payload_jobs_completed_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_jobs_completed_at_idx ON public.payload_jobs USING btree (completed_at);


--
-- Name: payload_jobs_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_jobs_created_at_idx ON public.payload_jobs USING btree (created_at);


--
-- Name: payload_jobs_has_error_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_jobs_has_error_idx ON public.payload_jobs USING btree (has_error);


--
-- Name: payload_jobs_log_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_jobs_log_order_idx ON public.payload_jobs_log USING btree (_order);


--
-- Name: payload_jobs_log_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_jobs_log_parent_id_idx ON public.payload_jobs_log USING btree (_parent_id);


--
-- Name: payload_jobs_processing_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_jobs_processing_idx ON public.payload_jobs USING btree (processing);


--
-- Name: payload_jobs_queue_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_jobs_queue_idx ON public.payload_jobs USING btree (queue);


--
-- Name: payload_jobs_task_slug_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_jobs_task_slug_idx ON public.payload_jobs USING btree (task_slug);


--
-- Name: payload_jobs_total_tried_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_jobs_total_tried_idx ON public.payload_jobs USING btree (total_tried);


--
-- Name: payload_jobs_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_jobs_updated_at_idx ON public.payload_jobs USING btree (updated_at);


--
-- Name: payload_jobs_wait_until_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_jobs_wait_until_idx ON public.payload_jobs USING btree (wait_until);


--
-- Name: payload_locked_documents_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_created_at_idx ON public.payload_locked_documents USING btree (created_at);


--
-- Name: payload_locked_documents_global_slug_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_global_slug_idx ON public.payload_locked_documents USING btree (global_slug);


--
-- Name: payload_locked_documents_rels_case_studies_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_rels_case_studies_id_idx ON public.payload_locked_documents_rels USING btree (case_studies_id);


--
-- Name: payload_locked_documents_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_rels_categories_id_idx ON public.payload_locked_documents_rels USING btree (categories_id);


--
-- Name: payload_locked_documents_rels_form_submissions_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_rels_form_submissions_id_idx ON public.payload_locked_documents_rels USING btree (form_submissions_id);


--
-- Name: payload_locked_documents_rels_forms_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_rels_forms_id_idx ON public.payload_locked_documents_rels USING btree (forms_id);


--
-- Name: payload_locked_documents_rels_media_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_rels_media_id_idx ON public.payload_locked_documents_rels USING btree (media_id);


--
-- Name: payload_locked_documents_rels_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_rels_order_idx ON public.payload_locked_documents_rels USING btree ("order");


--
-- Name: payload_locked_documents_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_rels_pages_id_idx ON public.payload_locked_documents_rels USING btree (pages_id);


--
-- Name: payload_locked_documents_rels_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_rels_parent_idx ON public.payload_locked_documents_rels USING btree (parent_id);


--
-- Name: payload_locked_documents_rels_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_rels_path_idx ON public.payload_locked_documents_rels USING btree (path);


--
-- Name: payload_locked_documents_rels_payload_jobs_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_rels_payload_jobs_id_idx ON public.payload_locked_documents_rels USING btree (payload_jobs_id);


--
-- Name: payload_locked_documents_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_rels_posts_id_idx ON public.payload_locked_documents_rels USING btree (posts_id);


--
-- Name: payload_locked_documents_rels_redirects_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_rels_redirects_id_idx ON public.payload_locked_documents_rels USING btree (redirects_id);


--
-- Name: payload_locked_documents_rels_search_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_rels_search_id_idx ON public.payload_locked_documents_rels USING btree (search_id);


--
-- Name: payload_locked_documents_rels_users_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_rels_users_id_idx ON public.payload_locked_documents_rels USING btree (users_id);


--
-- Name: payload_locked_documents_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_locked_documents_updated_at_idx ON public.payload_locked_documents USING btree (updated_at);


--
-- Name: payload_migrations_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_migrations_created_at_idx ON public.payload_migrations USING btree (created_at);


--
-- Name: payload_migrations_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_migrations_updated_at_idx ON public.payload_migrations USING btree (updated_at);


--
-- Name: payload_preferences_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_preferences_created_at_idx ON public.payload_preferences USING btree (created_at);


--
-- Name: payload_preferences_key_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_preferences_key_idx ON public.payload_preferences USING btree (key);


--
-- Name: payload_preferences_rels_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_preferences_rels_order_idx ON public.payload_preferences_rels USING btree ("order");


--
-- Name: payload_preferences_rels_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_preferences_rels_parent_idx ON public.payload_preferences_rels USING btree (parent_id);


--
-- Name: payload_preferences_rels_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_preferences_rels_path_idx ON public.payload_preferences_rels USING btree (path);


--
-- Name: payload_preferences_rels_users_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_preferences_rels_users_id_idx ON public.payload_preferences_rels USING btree (users_id);


--
-- Name: payload_preferences_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX payload_preferences_updated_at_idx ON public.payload_preferences USING btree (updated_at);


--
-- Name: posts__status_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX posts__status_idx ON public.posts USING btree (_status);


--
-- Name: posts_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX posts_created_at_idx ON public.posts USING btree (created_at);


--
-- Name: posts_hero_image_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX posts_hero_image_idx ON public.posts USING btree (hero_image_id);


--
-- Name: posts_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX posts_meta_meta_image_idx ON public.posts USING btree (meta_image_id);


--
-- Name: posts_populated_authors_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX posts_populated_authors_order_idx ON public.posts_populated_authors USING btree (_order);


--
-- Name: posts_populated_authors_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX posts_populated_authors_parent_id_idx ON public.posts_populated_authors USING btree (_parent_id);


--
-- Name: posts_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX posts_rels_categories_id_idx ON public.posts_rels USING btree (categories_id);


--
-- Name: posts_rels_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX posts_rels_order_idx ON public.posts_rels USING btree ("order");


--
-- Name: posts_rels_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX posts_rels_parent_idx ON public.posts_rels USING btree (parent_id);


--
-- Name: posts_rels_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX posts_rels_path_idx ON public.posts_rels USING btree (path);


--
-- Name: posts_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX posts_rels_posts_id_idx ON public.posts_rels USING btree (posts_id);


--
-- Name: posts_rels_users_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX posts_rels_users_id_idx ON public.posts_rels USING btree (users_id);


--
-- Name: posts_slug_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX posts_slug_idx ON public.posts USING btree (slug);


--
-- Name: posts_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX posts_updated_at_idx ON public.posts USING btree (updated_at);


--
-- Name: redirects_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX redirects_created_at_idx ON public.redirects USING btree (created_at);


--
-- Name: redirects_from_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX redirects_from_idx ON public.redirects USING btree ("from");


--
-- Name: redirects_rels_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX redirects_rels_order_idx ON public.redirects_rels USING btree ("order");


--
-- Name: redirects_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX redirects_rels_pages_id_idx ON public.redirects_rels USING btree (pages_id);


--
-- Name: redirects_rels_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX redirects_rels_parent_idx ON public.redirects_rels USING btree (parent_id);


--
-- Name: redirects_rels_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX redirects_rels_path_idx ON public.redirects_rels USING btree (path);


--
-- Name: redirects_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX redirects_rels_posts_id_idx ON public.redirects_rels USING btree (posts_id);


--
-- Name: redirects_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX redirects_updated_at_idx ON public.redirects USING btree (updated_at);


--
-- Name: search_categories_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX search_categories_order_idx ON public.search_categories USING btree (_order);


--
-- Name: search_categories_parent_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX search_categories_parent_id_idx ON public.search_categories USING btree (_parent_id);


--
-- Name: search_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX search_created_at_idx ON public.search USING btree (created_at);


--
-- Name: search_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX search_meta_meta_image_idx ON public.search USING btree (meta_image_id);


--
-- Name: search_rels_order_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX search_rels_order_idx ON public.search_rels USING btree ("order");


--
-- Name: search_rels_parent_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX search_rels_parent_idx ON public.search_rels USING btree (parent_id);


--
-- Name: search_rels_path_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX search_rels_path_idx ON public.search_rels USING btree (path);


--
-- Name: search_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX search_rels_posts_id_idx ON public.search_rels USING btree (posts_id);


--
-- Name: search_slug_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX search_slug_idx ON public.search USING btree (slug);


--
-- Name: search_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX search_updated_at_idx ON public.search USING btree (updated_at);


--
-- Name: users_created_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX users_created_at_idx ON public.users USING btree (created_at);


--
-- Name: users_email_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE UNIQUE INDEX users_email_idx ON public.users USING btree (email);


--
-- Name: users_updated_at_idx; Type: INDEX; Schema: public; Owner: payloadcms-052225blue-user
--

CREATE INDEX users_updated_at_idx ON public.users USING btree (updated_at);


--
-- Name: _case_studies_v _case_studies_v_parent_id_case_studies_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._case_studies_v
    ADD CONSTRAINT _case_studies_v_parent_id_case_studies_id_fk FOREIGN KEY (parent_id) REFERENCES public.case_studies(id) ON DELETE SET NULL;


--
-- Name: _case_studies_v_rels _case_studies_v_rels_case_studies_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._case_studies_v_rels
    ADD CONSTRAINT _case_studies_v_rels_case_studies_fk FOREIGN KEY (case_studies_id) REFERENCES public.case_studies(id) ON DELETE CASCADE;


--
-- Name: _case_studies_v_rels _case_studies_v_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._case_studies_v_rels
    ADD CONSTRAINT _case_studies_v_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: _case_studies_v_rels _case_studies_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._case_studies_v_rels
    ADD CONSTRAINT _case_studies_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._case_studies_v(id) ON DELETE CASCADE;


--
-- Name: _case_studies_v_rels _case_studies_v_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._case_studies_v_rels
    ADD CONSTRAINT _case_studies_v_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: _case_studies_v _case_studies_v_version_featured_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._case_studies_v
    ADD CONSTRAINT _case_studies_v_version_featured_image_id_media_id_fk FOREIGN KEY (version_featured_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _case_studies_v _case_studies_v_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._case_studies_v
    ADD CONSTRAINT _case_studies_v_version_meta_image_id_media_id_fk FOREIGN KEY (version_meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _case_studies_v_version_populated_authors _case_studies_v_version_populated_authors_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._case_studies_v_version_populated_authors
    ADD CONSTRAINT _case_studies_v_version_populated_authors_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._case_studies_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_archive _pages_v_blocks_archive_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_archive
    ADD CONSTRAINT _pages_v_blocks_archive_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content_columns _pages_v_blocks_content_columns_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_content_columns
    ADD CONSTRAINT _pages_v_blocks_content_columns_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_content(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_content
    ADD CONSTRAINT _pages_v_blocks_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta_links _pages_v_blocks_cta_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_cta_links
    ADD CONSTRAINT _pages_v_blocks_cta_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v_blocks_cta(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta _pages_v_blocks_cta_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_cta
    ADD CONSTRAINT _pages_v_blocks_cta_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_form_block
    ADD CONSTRAINT _pages_v_blocks_form_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_blocks_media_block
    ADD CONSTRAINT _pages_v_blocks_media_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v _pages_v_parent_id_pages_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_parent_id_pages_id_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE SET NULL;


--
-- Name: _pages_v_rels _pages_v_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_rels
    ADD CONSTRAINT _pages_v_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v_version_hero_links
    ADD CONSTRAINT _pages_v_version_hero_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._pages_v(id) ON DELETE CASCADE;


--
-- Name: _pages_v _pages_v_version_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_version_hero_media_id_media_id_fk FOREIGN KEY (version_hero_media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _pages_v _pages_v_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._pages_v
    ADD CONSTRAINT _pages_v_version_meta_image_id_media_id_fk FOREIGN KEY (version_meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v _posts_v_parent_id_posts_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_parent_id_posts_id_fk FOREIGN KEY (parent_id) REFERENCES public.posts(id) ON DELETE SET NULL;


--
-- Name: _posts_v_rels _posts_v_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public._posts_v(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._posts_v_rels
    ADD CONSTRAINT _posts_v_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: _posts_v _posts_v_version_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_version_hero_image_id_media_id_fk FOREIGN KEY (version_hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v _posts_v_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._posts_v
    ADD CONSTRAINT _posts_v_version_meta_image_id_media_id_fk FOREIGN KEY (version_meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: _posts_v_version_populated_authors _posts_v_version_populated_authors_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public._posts_v_version_populated_authors
    ADD CONSTRAINT _posts_v_version_populated_authors_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public._posts_v(id) ON DELETE CASCADE;


--
-- Name: case_studies case_studies_featured_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.case_studies
    ADD CONSTRAINT case_studies_featured_image_id_media_id_fk FOREIGN KEY (featured_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: case_studies case_studies_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.case_studies
    ADD CONSTRAINT case_studies_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: case_studies_populated_authors case_studies_populated_authors_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.case_studies_populated_authors
    ADD CONSTRAINT case_studies_populated_authors_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.case_studies(id) ON DELETE CASCADE;


--
-- Name: case_studies_rels case_studies_rels_case_studies_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.case_studies_rels
    ADD CONSTRAINT case_studies_rels_case_studies_fk FOREIGN KEY (case_studies_id) REFERENCES public.case_studies(id) ON DELETE CASCADE;


--
-- Name: case_studies_rels case_studies_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.case_studies_rels
    ADD CONSTRAINT case_studies_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: case_studies_rels case_studies_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.case_studies_rels
    ADD CONSTRAINT case_studies_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.case_studies(id) ON DELETE CASCADE;


--
-- Name: case_studies_rels case_studies_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.case_studies_rels
    ADD CONSTRAINT case_studies_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: categories_breadcrumbs categories_breadcrumbs_doc_id_categories_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_doc_id_categories_id_fk FOREIGN KEY (doc_id) REFERENCES public.categories(id) ON DELETE SET NULL;


--
-- Name: categories_breadcrumbs categories_breadcrumbs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.categories_breadcrumbs
    ADD CONSTRAINT categories_breadcrumbs_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: categories categories_parent_id_categories_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_parent_id_categories_id_fk FOREIGN KEY (parent_id) REFERENCES public.categories(id) ON DELETE SET NULL;


--
-- Name: footer_nav_items footer_nav_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.footer_nav_items
    ADD CONSTRAINT footer_nav_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.footer(id) ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.footer_rels
    ADD CONSTRAINT footer_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: form_submissions form_submissions_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.form_submissions
    ADD CONSTRAINT form_submissions_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: form_submissions_submission_data form_submissions_submission_data_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.form_submissions_submission_data
    ADD CONSTRAINT form_submissions_submission_data_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.form_submissions(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_checkbox forms_blocks_checkbox_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_checkbox
    ADD CONSTRAINT forms_blocks_checkbox_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_country forms_blocks_country_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_country
    ADD CONSTRAINT forms_blocks_country_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_email forms_blocks_email_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_email
    ADD CONSTRAINT forms_blocks_email_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_message forms_blocks_message_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_message
    ADD CONSTRAINT forms_blocks_message_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_number forms_blocks_number_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_number
    ADD CONSTRAINT forms_blocks_number_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_select_options forms_blocks_select_options_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_select_options
    ADD CONSTRAINT forms_blocks_select_options_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms_blocks_select(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_select forms_blocks_select_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_select
    ADD CONSTRAINT forms_blocks_select_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_state forms_blocks_state_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_state
    ADD CONSTRAINT forms_blocks_state_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_text forms_blocks_text_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_text
    ADD CONSTRAINT forms_blocks_text_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_blocks_textarea forms_blocks_textarea_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_blocks_textarea
    ADD CONSTRAINT forms_blocks_textarea_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: forms_emails forms_emails_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.forms_emails
    ADD CONSTRAINT forms_emails_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: header_nav_items header_nav_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.header_nav_items
    ADD CONSTRAINT header_nav_items_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.header(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.header(id) ON DELETE CASCADE;


--
-- Name: header_rels header_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.header_rels
    ADD CONSTRAINT header_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_archive pages_blocks_archive_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_archive
    ADD CONSTRAINT pages_blocks_archive_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content_columns pages_blocks_content_columns_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_content_columns
    ADD CONSTRAINT pages_blocks_content_columns_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_content(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_content pages_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_content
    ADD CONSTRAINT pages_blocks_content_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta_links pages_blocks_cta_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_cta_links
    ADD CONSTRAINT pages_blocks_cta_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages_blocks_cta(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_cta pages_blocks_cta_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_cta
    ADD CONSTRAINT pages_blocks_cta_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_form_block pages_blocks_form_block_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_form_id_forms_id_fk FOREIGN KEY (form_id) REFERENCES public.forms(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_form_block pages_blocks_form_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_form_block
    ADD CONSTRAINT pages_blocks_form_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_media_id_media_id_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_blocks_media_block
    ADD CONSTRAINT pages_blocks_media_block_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_hero_links pages_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_hero_links
    ADD CONSTRAINT pages_hero_links_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages pages_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_hero_media_id_media_id_fk FOREIGN KEY (hero_media_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages pages_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: pages_rels pages_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.pages_rels
    ADD CONSTRAINT pages_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: payload_jobs_log payload_jobs_log_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_jobs_log
    ADD CONSTRAINT payload_jobs_log_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.payload_jobs(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_case_studies_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_case_studies_fk FOREIGN KEY (case_studies_id) REFERENCES public.case_studies(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_form_submissions_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_form_submissions_fk FOREIGN KEY (form_submissions_id) REFERENCES public.form_submissions(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_forms_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_forms_fk FOREIGN KEY (forms_id) REFERENCES public.forms(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_media_fk FOREIGN KEY (media_id) REFERENCES public.media(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_locked_documents(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_payload_jobs_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_payload_jobs_fk FOREIGN KEY (payload_jobs_id) REFERENCES public.payload_jobs(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_redirects_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_redirects_fk FOREIGN KEY (redirects_id) REFERENCES public.redirects(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_search_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_search_fk FOREIGN KEY (search_id) REFERENCES public.search(id) ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_locked_documents_rels
    ADD CONSTRAINT payload_locked_documents_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.payload_preferences(id) ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.payload_preferences_rels
    ADD CONSTRAINT payload_preferences_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: posts posts_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_hero_image_id_media_id_fk FOREIGN KEY (hero_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: posts posts_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: posts_populated_authors posts_populated_authors_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.posts_populated_authors
    ADD CONSTRAINT posts_populated_authors_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_categories_fk FOREIGN KEY (categories_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.posts_rels
    ADD CONSTRAINT posts_rels_users_fk FOREIGN KEY (users_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_pages_fk FOREIGN KEY (pages_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.redirects(id) ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.redirects_rels
    ADD CONSTRAINT redirects_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: search_categories search_categories_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.search_categories
    ADD CONSTRAINT search_categories_parent_id_fk FOREIGN KEY (_parent_id) REFERENCES public.search(id) ON DELETE CASCADE;


--
-- Name: search search_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_meta_image_id_media_id_fk FOREIGN KEY (meta_image_id) REFERENCES public.media(id) ON DELETE SET NULL;


--
-- Name: search_rels search_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.search_rels
    ADD CONSTRAINT search_rels_parent_fk FOREIGN KEY (parent_id) REFERENCES public.search(id) ON DELETE CASCADE;


--
-- Name: search_rels search_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: payloadcms-052225blue-user
--

ALTER TABLE ONLY public.search_rels
    ADD CONSTRAINT search_rels_posts_fk FOREIGN KEY (posts_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

