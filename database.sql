-- Table: public.posts

-- DROP TABLE IF EXISTS public.posts;

CREATE TABLE IF NOT EXISTS public.posts
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 0 MINVALUE 0 MAXVALUE 2147483647 CACHE 1 ),
    title character varying COLLATE pg_catalog."default" NOT NULL,
    body character varying COLLATE pg_catalog."default",
    author character varying(25) COLLATE pg_catalog."default" NOT NULL,
    "time" timestamp without time zone NOT NULL DEFAULT now(),
    likes integer NOT NULL DEFAULT 0,
    CONSTRAINT posts_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.posts
    OWNER to postgres;