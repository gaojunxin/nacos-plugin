--
-- Kingbase database dump
--

-- Dumped from database version 12.1
-- Dumped by sys_dump version 12.1

-- Started on 2025-08-26 11:16:04 CST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', 'public', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;
SET default_with_oids = off;
SET default_with_rowid = off;

--
-- TOC entry 23 (class 2615 OID 278563)
-- Name: nacos_config; Type: SCHEMA; Schema: -; Owner: system
--

CREATE SCHEMA nacos_config;


ALTER SCHEMA nacos_config OWNER TO system;

SET default_table_access_method = heap;

--
-- TOC entry 663 (class 1259 OID 278626)
-- Name: config_info; Type: TABLE; Schema: nacos_config; Owner: system
--

SET escape = off;
CREATE TABLE nacos_config.config_info (
    id bigint NOT NULL,
    data_id character varying(255 char) NOT NULL,
    group_id character varying(128 char),
    content text NOT NULL,
    md5 character varying(32 char),
    gmt_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    gmt_modified timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    src_user text,
    src_ip character varying(50 char),
    app_name character varying(128 char),
    tenant_id character varying(128 char) DEFAULT NULL::varchar,
    c_desc character varying(256 char),
    c_use character varying(64 char),
    effect character varying(64 char),
    type character varying(64 char),
    c_schema text,
    encrypted_data_key character varying(1024 char) DEFAULT ' '::varchar
);


ALTER TABLE nacos_config.config_info OWNER TO system;

--
-- TOC entry 5265 (class 0 OID 0)
-- Dependencies: 663
-- Name: TABLE config_info; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON TABLE nacos_config.config_info IS 'config_info';


--
-- TOC entry 5266 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.id IS 'id';


--
-- TOC entry 5267 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.data_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.data_id IS 'data_id';


--
-- TOC entry 5268 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.group_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.group_id IS 'group_id';


--
-- TOC entry 5269 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.content; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.content IS 'content';


--
-- TOC entry 5270 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.md5; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.md5 IS 'md5';


--
-- TOC entry 5271 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.gmt_create; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.gmt_create IS '创建时间';


--
-- TOC entry 5272 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.gmt_modified; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.gmt_modified IS '修改时间';


--
-- TOC entry 5273 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.src_user; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.src_user IS 'source user';


--
-- TOC entry 5274 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.src_ip; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.src_ip IS 'source ip';


--
-- TOC entry 5275 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.app_name; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.app_name IS 'app_name';


--
-- TOC entry 5276 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.tenant_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.tenant_id IS '租户字段';


--
-- TOC entry 5277 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.c_desc; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.c_desc IS 'configuration description';


--
-- TOC entry 5278 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.c_use; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.c_use IS 'configuration usage';


--
-- TOC entry 5279 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.effect; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.effect IS '配置生效的描述';


--
-- TOC entry 5280 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.type; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.type IS '配置的类型';


--
-- TOC entry 5281 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.c_schema; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.c_schema IS '配置的模式';


--
-- TOC entry 5282 (class 0 OID 0)
-- Dependencies: 663
-- Name: COLUMN config_info.encrypted_data_key; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info.encrypted_data_key IS '密钥';


--
-- TOC entry 661 (class 1259 OID 278606)
-- Name: config_info_gray; Type: TABLE; Schema: nacos_config; Owner: system
--

SET escape = off;
CREATE TABLE nacos_config.config_info_gray (
    id bigint NOT NULL,
    data_id character varying(255 char) NOT NULL,
    group_id character varying(128 char) NOT NULL,
    content text NOT NULL,
    md5 character varying(32 char),
    src_user text,
    src_ip character varying(100 char),
    gmt_create timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    gmt_modified timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    app_name character varying(128 char),
    tenant_id character varying(128 char) DEFAULT NULL::varchar,
    gray_name character varying(128 char) NOT NULL,
    gray_rule text NOT NULL,
    encrypted_data_key character varying(256 char) DEFAULT ' '::varchar
);


ALTER TABLE nacos_config.config_info_gray OWNER TO system;

--
-- TOC entry 5283 (class 0 OID 0)
-- Dependencies: 661
-- Name: TABLE config_info_gray; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON TABLE nacos_config.config_info_gray IS 'config_info_gray';


--
-- TOC entry 5284 (class 0 OID 0)
-- Dependencies: 661
-- Name: COLUMN config_info_gray.id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info_gray.id IS 'id';


--
-- TOC entry 5285 (class 0 OID 0)
-- Dependencies: 661
-- Name: COLUMN config_info_gray.data_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info_gray.data_id IS 'data_id';


--
-- TOC entry 5286 (class 0 OID 0)
-- Dependencies: 661
-- Name: COLUMN config_info_gray.group_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info_gray.group_id IS 'group_id';


--
-- TOC entry 5287 (class 0 OID 0)
-- Dependencies: 661
-- Name: COLUMN config_info_gray.content; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info_gray.content IS 'content';


--
-- TOC entry 5288 (class 0 OID 0)
-- Dependencies: 661
-- Name: COLUMN config_info_gray.md5; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info_gray.md5 IS 'md5';


--
-- TOC entry 5289 (class 0 OID 0)
-- Dependencies: 661
-- Name: COLUMN config_info_gray.src_user; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info_gray.src_user IS 'src_user';


--
-- TOC entry 5290 (class 0 OID 0)
-- Dependencies: 661
-- Name: COLUMN config_info_gray.src_ip; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info_gray.src_ip IS 'src_ip';


--
-- TOC entry 5291 (class 0 OID 0)
-- Dependencies: 661
-- Name: COLUMN config_info_gray.gmt_create; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info_gray.gmt_create IS 'gmt_create';


--
-- TOC entry 5292 (class 0 OID 0)
-- Dependencies: 661
-- Name: COLUMN config_info_gray.gmt_modified; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info_gray.gmt_modified IS 'gmt_modified';


--
-- TOC entry 5293 (class 0 OID 0)
-- Dependencies: 661
-- Name: COLUMN config_info_gray.app_name; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info_gray.app_name IS 'app_name';


--
-- TOC entry 5294 (class 0 OID 0)
-- Dependencies: 661
-- Name: COLUMN config_info_gray.tenant_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info_gray.tenant_id IS 'tenant_id';


--
-- TOC entry 5295 (class 0 OID 0)
-- Dependencies: 661
-- Name: COLUMN config_info_gray.gray_name; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info_gray.gray_name IS 'gray_name';


--
-- TOC entry 5296 (class 0 OID 0)
-- Dependencies: 661
-- Name: COLUMN config_info_gray.gray_rule; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info_gray.gray_rule IS 'gray_rule';


--
-- TOC entry 5297 (class 0 OID 0)
-- Dependencies: 661
-- Name: COLUMN config_info_gray.encrypted_data_key; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_info_gray.encrypted_data_key IS 'encrypted_data_key';


--
-- TOC entry 660 (class 1259 OID 278604)
-- Name: config_info_gray_id_seq; Type: SEQUENCE; Schema: nacos_config; Owner: system
--

CREATE SEQUENCE nacos_config.config_info_gray_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE nacos_config.config_info_gray_id_seq OWNER TO system;

--
-- TOC entry 5298 (class 0 OID 0)
-- Dependencies: 660
-- Name: config_info_gray_id_seq; Type: SEQUENCE OWNED BY; Schema: nacos_config; Owner: system
--

ALTER SEQUENCE nacos_config.config_info_gray_id_seq OWNED BY nacos_config.config_info_gray.id;


--
-- TOC entry 662 (class 1259 OID 278624)
-- Name: config_info_id_seq; Type: SEQUENCE; Schema: nacos_config; Owner: system
--

CREATE SEQUENCE nacos_config.config_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE nacos_config.config_info_id_seq OWNER TO system;

--
-- TOC entry 5299 (class 0 OID 0)
-- Dependencies: 662
-- Name: config_info_id_seq; Type: SEQUENCE OWNED BY; Schema: nacos_config; Owner: system
--

ALTER SEQUENCE nacos_config.config_info_id_seq OWNED BY nacos_config.config_info.id;


--
-- TOC entry 670 (class 1259 OID 278677)
-- Name: config_tags_relation; Type: TABLE; Schema: nacos_config; Owner: system
--

SET escape = off;
CREATE TABLE nacos_config.config_tags_relation (
    id bigint NOT NULL,
    tag_name character varying(128 char) NOT NULL,
    tag_type character varying(64 char),
    data_id character varying(255 char) NOT NULL,
    group_id character varying(128 char) NOT NULL,
    tenant_id character varying(128 char) DEFAULT NULL::varchar,
    nid bigint NOT NULL
);


ALTER TABLE nacos_config.config_tags_relation OWNER TO system;

--
-- TOC entry 5300 (class 0 OID 0)
-- Dependencies: 670
-- Name: TABLE config_tags_relation; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON TABLE nacos_config.config_tags_relation IS 'config_tag_relation';


--
-- TOC entry 5301 (class 0 OID 0)
-- Dependencies: 670
-- Name: COLUMN config_tags_relation.id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_tags_relation.id IS 'id';


--
-- TOC entry 5302 (class 0 OID 0)
-- Dependencies: 670
-- Name: COLUMN config_tags_relation.tag_name; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_tags_relation.tag_name IS 'tag_name';


--
-- TOC entry 5303 (class 0 OID 0)
-- Dependencies: 670
-- Name: COLUMN config_tags_relation.tag_type; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_tags_relation.tag_type IS 'tag_type';


--
-- TOC entry 5304 (class 0 OID 0)
-- Dependencies: 670
-- Name: COLUMN config_tags_relation.data_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_tags_relation.data_id IS 'data_id';


--
-- TOC entry 5305 (class 0 OID 0)
-- Dependencies: 670
-- Name: COLUMN config_tags_relation.group_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_tags_relation.group_id IS 'group_id';


--
-- TOC entry 5306 (class 0 OID 0)
-- Dependencies: 670
-- Name: COLUMN config_tags_relation.tenant_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_tags_relation.tenant_id IS 'tenant_id';


--
-- TOC entry 5307 (class 0 OID 0)
-- Dependencies: 670
-- Name: COLUMN config_tags_relation.nid; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.config_tags_relation.nid IS 'nid, 自增长标识';


--
-- TOC entry 669 (class 1259 OID 278675)
-- Name: config_tags_relation_nid_seq; Type: SEQUENCE; Schema: nacos_config; Owner: system
--

CREATE SEQUENCE nacos_config.config_tags_relation_nid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE nacos_config.config_tags_relation_nid_seq OWNER TO system;

--
-- TOC entry 5308 (class 0 OID 0)
-- Dependencies: 669
-- Name: config_tags_relation_nid_seq; Type: SEQUENCE OWNED BY; Schema: nacos_config; Owner: system
--

ALTER SEQUENCE nacos_config.config_tags_relation_nid_seq OWNED BY nacos_config.config_tags_relation.nid;


--
-- TOC entry 657 (class 1259 OID 278575)
-- Name: group_capacity; Type: TABLE; Schema: nacos_config; Owner: system
--

SET escape = off;
CREATE TABLE nacos_config.group_capacity (
    id bigint NOT NULL,
    group_id character varying(128 char) DEFAULT NULL::varchar NOT NULL,
    quota bigint DEFAULT 0 NOT NULL,
    usage bigint DEFAULT 0 NOT NULL,
    max_size bigint DEFAULT 0 NOT NULL,
    max_aggr_count bigint DEFAULT 0 NOT NULL,
    max_aggr_size bigint DEFAULT 0 NOT NULL,
    max_history_count bigint DEFAULT 0 NOT NULL,
    gmt_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    gmt_modified timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE nacos_config.group_capacity OWNER TO system;

--
-- TOC entry 5309 (class 0 OID 0)
-- Dependencies: 657
-- Name: TABLE group_capacity; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON TABLE nacos_config.group_capacity IS '集群、各Group容量信息表';


--
-- TOC entry 5310 (class 0 OID 0)
-- Dependencies: 657
-- Name: COLUMN group_capacity.id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.group_capacity.id IS '主键ID';


--
-- TOC entry 5311 (class 0 OID 0)
-- Dependencies: 657
-- Name: COLUMN group_capacity.group_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.group_capacity.group_id IS 'Group ID，空字符表示整个集群';


--
-- TOC entry 5312 (class 0 OID 0)
-- Dependencies: 657
-- Name: COLUMN group_capacity.quota; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.group_capacity.quota IS '配额，0表示使用默认值';


--
-- TOC entry 5313 (class 0 OID 0)
-- Dependencies: 657
-- Name: COLUMN group_capacity.usage; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.group_capacity.usage IS '使用量';


--
-- TOC entry 5314 (class 0 OID 0)
-- Dependencies: 657
-- Name: COLUMN group_capacity.max_size; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.group_capacity.max_size IS '单个配置大小上限，单位为字节，0表示使用默认值';


--
-- TOC entry 5315 (class 0 OID 0)
-- Dependencies: 657
-- Name: COLUMN group_capacity.max_aggr_count; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.group_capacity.max_aggr_count IS '聚合子配置最大个数，，0表示使用默认值';


--
-- TOC entry 5316 (class 0 OID 0)
-- Dependencies: 657
-- Name: COLUMN group_capacity.max_aggr_size; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.group_capacity.max_aggr_size IS '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值';


--
-- TOC entry 5317 (class 0 OID 0)
-- Dependencies: 657
-- Name: COLUMN group_capacity.max_history_count; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.group_capacity.max_history_count IS '最大变更历史数量';


--
-- TOC entry 5318 (class 0 OID 0)
-- Dependencies: 657
-- Name: COLUMN group_capacity.gmt_create; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.group_capacity.gmt_create IS '创建时间';


--
-- TOC entry 5319 (class 0 OID 0)
-- Dependencies: 657
-- Name: COLUMN group_capacity.gmt_modified; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.group_capacity.gmt_modified IS '修改时间';


--
-- TOC entry 656 (class 1259 OID 278573)
-- Name: group_capacity_id_seq; Type: SEQUENCE; Schema: nacos_config; Owner: system
--

CREATE SEQUENCE nacos_config.group_capacity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE nacos_config.group_capacity_id_seq OWNER TO system;

--
-- TOC entry 5320 (class 0 OID 0)
-- Dependencies: 656
-- Name: group_capacity_id_seq; Type: SEQUENCE OWNED BY; Schema: nacos_config; Owner: system
--

ALTER SEQUENCE nacos_config.group_capacity_id_seq OWNED BY nacos_config.group_capacity.id;


--
-- TOC entry 659 (class 1259 OID 278593)
-- Name: his_config_info; Type: TABLE; Schema: nacos_config; Owner: system
--

SET escape = off;
CREATE TABLE nacos_config.his_config_info (
    id numeric NOT NULL,
    nid bigint NOT NULL,
    data_id character varying(255 char) NOT NULL,
    group_id character varying(128 char) NOT NULL,
    app_name character varying(128 char),
    content text NOT NULL,
    md5 character varying(32 char),
    gmt_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    gmt_modified timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    src_user text,
    src_ip character varying(50 char),
    op_type character(10 char),
    tenant_id character varying(128 char) DEFAULT NULL::varchar,
    encrypted_data_key character varying(1024 char) DEFAULT ' '::varchar,
    publish_type character varying(50 char) DEFAULT 'formal'::varchar,
    gray_name character varying(50 char),
    ext_info text
);


ALTER TABLE nacos_config.his_config_info OWNER TO system;

--
-- TOC entry 5321 (class 0 OID 0)
-- Dependencies: 659
-- Name: TABLE his_config_info; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON TABLE nacos_config.his_config_info IS '多租户改造';


--
-- TOC entry 5322 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.id IS 'id';


--
-- TOC entry 5323 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.nid; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.nid IS 'nid, 自增标识';


--
-- TOC entry 5324 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.data_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.data_id IS 'data_id';


--
-- TOC entry 5325 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.group_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.group_id IS 'group_id';


--
-- TOC entry 5326 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.app_name; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.app_name IS 'app_name';


--
-- TOC entry 5327 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.content; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.content IS 'content';


--
-- TOC entry 5328 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.md5; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.md5 IS 'md5';


--
-- TOC entry 5329 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.gmt_create; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.gmt_create IS '创建时间';


--
-- TOC entry 5330 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.gmt_modified; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.gmt_modified IS '修改时间';


--
-- TOC entry 5331 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.src_user; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.src_user IS 'source user';


--
-- TOC entry 5332 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.src_ip; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.src_ip IS 'source ip';


--
-- TOC entry 5333 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.op_type; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.op_type IS 'operation type';


--
-- TOC entry 5334 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.tenant_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.tenant_id IS '租户字段';


--
-- TOC entry 5335 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.encrypted_data_key; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.encrypted_data_key IS '密钥';


--
-- TOC entry 5336 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.publish_type; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.publish_type IS 'publish type gray or formal';


--
-- TOC entry 5337 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.gray_name; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.gray_name IS 'gray name';


--
-- TOC entry 5338 (class 0 OID 0)
-- Dependencies: 659
-- Name: COLUMN his_config_info.ext_info; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.his_config_info.ext_info IS 'ext info';


--
-- TOC entry 658 (class 1259 OID 278591)
-- Name: his_config_info_nid_seq; Type: SEQUENCE; Schema: nacos_config; Owner: system
--

CREATE SEQUENCE nacos_config.his_config_info_nid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE nacos_config.his_config_info_nid_seq OWNER TO system;

--
-- TOC entry 5339 (class 0 OID 0)
-- Dependencies: 658
-- Name: his_config_info_nid_seq; Type: SEQUENCE OWNED BY; Schema: nacos_config; Owner: system
--

ALTER SEQUENCE nacos_config.his_config_info_nid_seq OWNED BY nacos_config.his_config_info.nid;


--
-- TOC entry 666 (class 1259 OID 278654)
-- Name: permissions; Type: TABLE; Schema: nacos_config; Owner: system
--

SET escape = off;
CREATE TABLE nacos_config.permissions (
    role character varying(50 char) NOT NULL,
    resource character varying(128 char) NOT NULL,
    action character varying(8 char) NOT NULL
);


ALTER TABLE nacos_config.permissions OWNER TO system;

--
-- TOC entry 5340 (class 0 OID 0)
-- Dependencies: 666
-- Name: COLUMN permissions.role; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.permissions.role IS 'role';


--
-- TOC entry 5341 (class 0 OID 0)
-- Dependencies: 666
-- Name: COLUMN permissions.resource; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.permissions.resource IS 'resource';


--
-- TOC entry 5342 (class 0 OID 0)
-- Dependencies: 666
-- Name: COLUMN permissions.action; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.permissions.action IS 'action';


--
-- TOC entry 654 (class 1259 OID 278564)
-- Name: roles; Type: TABLE; Schema: nacos_config; Owner: system
--

SET escape = off;
CREATE TABLE nacos_config.roles (
    username character varying(50 char) NOT NULL,
    role character varying(50 char) NOT NULL
);


ALTER TABLE nacos_config.roles OWNER TO system;

--
-- TOC entry 5343 (class 0 OID 0)
-- Dependencies: 654
-- Name: COLUMN roles.username; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.roles.username IS 'username';


--
-- TOC entry 5344 (class 0 OID 0)
-- Dependencies: 654
-- Name: COLUMN roles.role; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.roles.role IS 'role';


--
-- TOC entry 668 (class 1259 OID 278659)
-- Name: tenant_capacity; Type: TABLE; Schema: nacos_config; Owner: system
--

SET escape = off;
CREATE TABLE nacos_config.tenant_capacity (
    id bigint NOT NULL,
    tenant_id character varying(128 char) DEFAULT NULL::varchar NOT NULL,
    quota bigint DEFAULT 0 NOT NULL,
    usage bigint DEFAULT 0 NOT NULL,
    max_size bigint DEFAULT 0 NOT NULL,
    max_aggr_count bigint DEFAULT 0 NOT NULL,
    max_aggr_size bigint DEFAULT 0 NOT NULL,
    max_history_count bigint DEFAULT 0 NOT NULL,
    gmt_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    gmt_modified timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE nacos_config.tenant_capacity OWNER TO system;

--
-- TOC entry 5345 (class 0 OID 0)
-- Dependencies: 668
-- Name: TABLE tenant_capacity; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON TABLE nacos_config.tenant_capacity IS '租户容量信息表';


--
-- TOC entry 5346 (class 0 OID 0)
-- Dependencies: 668
-- Name: COLUMN tenant_capacity.id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_capacity.id IS '主键ID';


--
-- TOC entry 5347 (class 0 OID 0)
-- Dependencies: 668
-- Name: COLUMN tenant_capacity.tenant_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_capacity.tenant_id IS 'Tenant ID';


--
-- TOC entry 5348 (class 0 OID 0)
-- Dependencies: 668
-- Name: COLUMN tenant_capacity.quota; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_capacity.quota IS '配额，0表示使用默认值';


--
-- TOC entry 5349 (class 0 OID 0)
-- Dependencies: 668
-- Name: COLUMN tenant_capacity.usage; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_capacity.usage IS '使用量';


--
-- TOC entry 5350 (class 0 OID 0)
-- Dependencies: 668
-- Name: COLUMN tenant_capacity.max_size; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_capacity.max_size IS '单个配置大小上限，单位为字节，0表示使用默认值';


--
-- TOC entry 5351 (class 0 OID 0)
-- Dependencies: 668
-- Name: COLUMN tenant_capacity.max_aggr_count; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_capacity.max_aggr_count IS '聚合子配置最大个数';


--
-- TOC entry 5352 (class 0 OID 0)
-- Dependencies: 668
-- Name: COLUMN tenant_capacity.max_aggr_size; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_capacity.max_aggr_size IS '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值';


--
-- TOC entry 5353 (class 0 OID 0)
-- Dependencies: 668
-- Name: COLUMN tenant_capacity.max_history_count; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_capacity.max_history_count IS '最大变更历史数量';


--
-- TOC entry 5354 (class 0 OID 0)
-- Dependencies: 668
-- Name: COLUMN tenant_capacity.gmt_create; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_capacity.gmt_create IS '创建时间';


--
-- TOC entry 5355 (class 0 OID 0)
-- Dependencies: 668
-- Name: COLUMN tenant_capacity.gmt_modified; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_capacity.gmt_modified IS '修改时间';


--
-- TOC entry 667 (class 1259 OID 278657)
-- Name: tenant_capacity_id_seq; Type: SEQUENCE; Schema: nacos_config; Owner: system
--

CREATE SEQUENCE nacos_config.tenant_capacity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE nacos_config.tenant_capacity_id_seq OWNER TO system;

--
-- TOC entry 5356 (class 0 OID 0)
-- Dependencies: 667
-- Name: tenant_capacity_id_seq; Type: SEQUENCE OWNED BY; Schema: nacos_config; Owner: system
--

ALTER SEQUENCE nacos_config.tenant_capacity_id_seq OWNED BY nacos_config.tenant_capacity.id;


--
-- TOC entry 665 (class 1259 OID 278634)
-- Name: tenant_info; Type: TABLE; Schema: nacos_config; Owner: system
--

SET escape = off;
CREATE TABLE nacos_config.tenant_info (
    id bigint NOT NULL,
    kp character varying(128 char) NOT NULL,
    tenant_id character varying(128 char) DEFAULT NULL::varchar,
    tenant_name character varying(128 char) DEFAULT NULL::varchar,
    tenant_desc character varying(256 char),
    create_source character varying(32 char),
    gmt_create bigint NOT NULL,
    gmt_modified bigint NOT NULL
);


ALTER TABLE nacos_config.tenant_info OWNER TO system;

--
-- TOC entry 5357 (class 0 OID 0)
-- Dependencies: 665
-- Name: TABLE tenant_info; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON TABLE nacos_config.tenant_info IS 'tenant_info';


--
-- TOC entry 5358 (class 0 OID 0)
-- Dependencies: 665
-- Name: COLUMN tenant_info.id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_info.id IS 'id';


--
-- TOC entry 5359 (class 0 OID 0)
-- Dependencies: 665
-- Name: COLUMN tenant_info.kp; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_info.kp IS 'kp';


--
-- TOC entry 5360 (class 0 OID 0)
-- Dependencies: 665
-- Name: COLUMN tenant_info.tenant_id; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_info.tenant_id IS 'tenant_id';


--
-- TOC entry 5361 (class 0 OID 0)
-- Dependencies: 665
-- Name: COLUMN tenant_info.tenant_name; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_info.tenant_name IS 'tenant_name';


--
-- TOC entry 5362 (class 0 OID 0)
-- Dependencies: 665
-- Name: COLUMN tenant_info.tenant_desc; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_info.tenant_desc IS 'tenant_desc';


--
-- TOC entry 5363 (class 0 OID 0)
-- Dependencies: 665
-- Name: COLUMN tenant_info.create_source; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_info.create_source IS 'create_source';


--
-- TOC entry 5364 (class 0 OID 0)
-- Dependencies: 665
-- Name: COLUMN tenant_info.gmt_create; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_info.gmt_create IS '创建时间';


--
-- TOC entry 5365 (class 0 OID 0)
-- Dependencies: 665
-- Name: COLUMN tenant_info.gmt_modified; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.tenant_info.gmt_modified IS '修改时间';


--
-- TOC entry 664 (class 1259 OID 278632)
-- Name: tenant_info_id_seq; Type: SEQUENCE; Schema: nacos_config; Owner: system
--

CREATE SEQUENCE nacos_config.tenant_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE nacos_config.tenant_info_id_seq OWNER TO system;

--
-- TOC entry 5366 (class 0 OID 0)
-- Dependencies: 664
-- Name: tenant_info_id_seq; Type: SEQUENCE OWNED BY; Schema: nacos_config; Owner: system
--

ALTER SEQUENCE nacos_config.tenant_info_id_seq OWNED BY nacos_config.tenant_info.id;


--
-- TOC entry 655 (class 1259 OID 278565)
-- Name: users; Type: TABLE; Schema: nacos_config; Owner: system
--

SET escape = off;
CREATE TABLE nacos_config.users (
    username character varying(50 char) NOT NULL,
    password character varying(500 char) NOT NULL,
    enabled tinyint NOT NULL
);


ALTER TABLE nacos_config.users OWNER TO system;

--
-- TOC entry 5367 (class 0 OID 0)
-- Dependencies: 655
-- Name: COLUMN users.username; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.users.username IS 'username';


--
-- TOC entry 5368 (class 0 OID 0)
-- Dependencies: 655
-- Name: COLUMN users.password; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.users.password IS 'password';


--
-- TOC entry 5369 (class 0 OID 0)
-- Dependencies: 655
-- Name: COLUMN users.enabled; Type: COMMENT; Schema: nacos_config; Owner: system
--

COMMENT ON COLUMN nacos_config.users.enabled IS 'enabled';


--
-- TOC entry 4683 (class 2604 OID 278629)
-- Name: config_info id; Type: DEFAULT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.config_info ALTER COLUMN id SET DEFAULT nextval('nacos_config.config_info_id_seq'::regclass);


--
-- TOC entry 4678 (class 2604 OID 278613)
-- Name: config_info_gray id; Type: DEFAULT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.config_info_gray ALTER COLUMN id SET DEFAULT nextval('nacos_config.config_info_gray_id_seq'::regclass);


--
-- TOC entry 4702 (class 2604 OID 278681)
-- Name: config_tags_relation nid; Type: DEFAULT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.config_tags_relation ALTER COLUMN nid SET DEFAULT nextval('nacos_config.config_tags_relation_nid_seq'::regclass);


--
-- TOC entry 4662 (class 2604 OID 278578)
-- Name: group_capacity id; Type: DEFAULT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.group_capacity ALTER COLUMN id SET DEFAULT nextval('nacos_config.group_capacity_id_seq'::regclass);


--
-- TOC entry 4672 (class 2604 OID 278596)
-- Name: his_config_info nid; Type: DEFAULT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.his_config_info ALTER COLUMN nid SET DEFAULT nextval('nacos_config.his_config_info_nid_seq'::regclass);


--
-- TOC entry 4691 (class 2604 OID 278662)
-- Name: tenant_capacity id; Type: DEFAULT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.tenant_capacity ALTER COLUMN id SET DEFAULT nextval('nacos_config.tenant_capacity_id_seq'::regclass);


--
-- TOC entry 4688 (class 2604 OID 278637)
-- Name: tenant_info id; Type: DEFAULT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.tenant_info ALTER COLUMN id SET DEFAULT nextval('nacos_config.tenant_info_id_seq'::regclass);


--
-- TOC entry 5252 (class 0 OID 278626)
-- Dependencies: 663
-- Data for Name: config_info; Type: TABLE DATA; Schema: nacos_config; Owner: system
--



--
-- TOC entry 5250 (class 0 OID 278606)
-- Dependencies: 661
-- Data for Name: config_info_gray; Type: TABLE DATA; Schema: nacos_config; Owner: system
--



--
-- TOC entry 5259 (class 0 OID 278677)
-- Dependencies: 670
-- Data for Name: config_tags_relation; Type: TABLE DATA; Schema: nacos_config; Owner: system
--



--
-- TOC entry 5246 (class 0 OID 278575)
-- Dependencies: 657
-- Data for Name: group_capacity; Type: TABLE DATA; Schema: nacos_config; Owner: system
--



--
-- TOC entry 5248 (class 0 OID 278593)
-- Dependencies: 659
-- Data for Name: his_config_info; Type: TABLE DATA; Schema: nacos_config; Owner: system
--



--
-- TOC entry 5255 (class 0 OID 278654)
-- Dependencies: 666
-- Data for Name: permissions; Type: TABLE DATA; Schema: nacos_config; Owner: system
--



--
-- TOC entry 5243 (class 0 OID 278564)
-- Dependencies: 654
-- Data for Name: roles; Type: TABLE DATA; Schema: nacos_config; Owner: system
--

INSERT INTO nacos_config.roles (username, role) VALUES ('nacos', 'ROLE_ADMIN');


--
-- TOC entry 5257 (class 0 OID 278659)
-- Dependencies: 668
-- Data for Name: tenant_capacity; Type: TABLE DATA; Schema: nacos_config; Owner: system
--



--
-- TOC entry 5254 (class 0 OID 278634)
-- Dependencies: 665
-- Data for Name: tenant_info; Type: TABLE DATA; Schema: nacos_config; Owner: system
--

INSERT INTO nacos_config.tenant_info (id, kp, tenant_id, tenant_name, tenant_desc, create_source, gmt_create, gmt_modified) VALUES (1, '1', '234037c9-3158-466a-a54d-d663a908728a', 'test', 'test', 'nacos', 1756172432820, 1756172432820);


--
-- TOC entry 5244 (class 0 OID 278565)
-- Dependencies: 655
-- Data for Name: users; Type: TABLE DATA; Schema: nacos_config; Owner: system
--

INSERT INTO nacos_config.users (username, password, enabled) VALUES ('nacos', '$2a$10$79h42xPBGWfXFwX0/GU2kuFWXlgQK5wKHeHv4wuoMbpRLABdTU23O', 1);


--
-- TOC entry 5370 (class 0 OID 0)
-- Dependencies: 660
-- Name: config_info_gray_id_seq; Type: SEQUENCE SET; Schema: nacos_config; Owner: system
--

SELECT pg_catalog.setval('nacos_config.config_info_gray_id_seq', 1, false);


--
-- TOC entry 5371 (class 0 OID 0)
-- Dependencies: 662
-- Name: config_info_id_seq; Type: SEQUENCE SET; Schema: nacos_config; Owner: system
--

SELECT pg_catalog.setval('nacos_config.config_info_id_seq', 8, true);


--
-- TOC entry 5372 (class 0 OID 0)
-- Dependencies: 669
-- Name: config_tags_relation_nid_seq; Type: SEQUENCE SET; Schema: nacos_config; Owner: system
--

SELECT pg_catalog.setval('nacos_config.config_tags_relation_nid_seq', 1, false);


--
-- TOC entry 5373 (class 0 OID 0)
-- Dependencies: 656
-- Name: group_capacity_id_seq; Type: SEQUENCE SET; Schema: nacos_config; Owner: system
--

SELECT pg_catalog.setval('nacos_config.group_capacity_id_seq', 1, false);


--
-- TOC entry 5374 (class 0 OID 0)
-- Dependencies: 658
-- Name: his_config_info_nid_seq; Type: SEQUENCE SET; Schema: nacos_config; Owner: system
--

SELECT pg_catalog.setval('nacos_config.his_config_info_nid_seq', 1, true);


--
-- TOC entry 5375 (class 0 OID 0)
-- Dependencies: 667
-- Name: tenant_capacity_id_seq; Type: SEQUENCE SET; Schema: nacos_config; Owner: system
--

SELECT pg_catalog.setval('nacos_config.tenant_capacity_id_seq', 1, false);


--
-- TOC entry 5376 (class 0 OID 0)
-- Dependencies: 664
-- Name: tenant_info_id_seq; Type: SEQUENCE SET; Schema: nacos_config; Owner: system
--

SELECT pg_catalog.setval('nacos_config.tenant_info_id_seq', 1, true);


--
-- TOC entry 4704 (class 2606 OID 278705)
-- Name: roles idx_user_role_2451DF41; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.roles
    ADD CONSTRAINT "idx_user_role_2451DF41" UNIQUE (username, role);


--
-- TOC entry 4706 (class 2606 OID 278690)
-- Name: users primary_1a6b23be; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.users
    ADD CONSTRAINT primary_1a6b23be PRIMARY KEY (username);


--
-- TOC entry 4723 (class 2606 OID 278649)
-- Name: config_info primary_73f26186; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.config_info
    ADD CONSTRAINT primary_73f26186 PRIMARY KEY (id);


--
-- TOC entry 4739 (class 2606 OID 278686)
-- Name: config_tags_relation primary_82226084; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.config_tags_relation
    ADD CONSTRAINT primary_82226084 PRIMARY KEY (nid);


--
-- TOC entry 4728 (class 2606 OID 278651)
-- Name: tenant_info primary_8b91ed1e; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.tenant_info
    ADD CONSTRAINT primary_8b91ed1e PRIMARY KEY (id);


--
-- TOC entry 4715 (class 2606 OID 278611)
-- Name: his_config_info primary_93a4dc6b; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.his_config_info
    ADD CONSTRAINT primary_93a4dc6b PRIMARY KEY (nid);


--
-- TOC entry 4719 (class 2606 OID 278622)
-- Name: config_info_gray primary_d4dee492; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.config_info_gray
    ADD CONSTRAINT primary_d4dee492 PRIMARY KEY (id);


--
-- TOC entry 4708 (class 2606 OID 278589)
-- Name: group_capacity primary_d72b7e75; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.group_capacity
    ADD CONSTRAINT primary_d72b7e75 PRIMARY KEY (id);


--
-- TOC entry 4734 (class 2606 OID 278673)
-- Name: tenant_capacity primary_f4ccc2aa; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.tenant_capacity
    ADD CONSTRAINT primary_f4ccc2aa PRIMARY KEY (id);


--
-- TOC entry 4725 (class 2606 OID 278696)
-- Name: config_info uk_configinfo_datagrouptenant_C827FEB8; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.config_info
    ADD CONSTRAINT "uk_configinfo_datagrouptenant_C827FEB8" UNIQUE (data_id, group_id, tenant_id);


--
-- TOC entry 4721 (class 2606 OID 278707)
-- Name: config_info_gray uk_configinfogray_datagrouptenantgray_4632BBE2; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.config_info_gray
    ADD CONSTRAINT "uk_configinfogray_datagrouptenantgray_4632BBE2" UNIQUE (data_id, group_id, tenant_id, gray_name);


--
-- TOC entry 4741 (class 2606 OID 278712)
-- Name: config_tags_relation uk_configtagrelation_configidtag_25395725; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.config_tags_relation
    ADD CONSTRAINT uk_configtagrelation_configidtag_25395725 UNIQUE (id, tag_name, tag_type);


--
-- TOC entry 4710 (class 2606 OID 278703)
-- Name: group_capacity uk_group_id_377325F2; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.group_capacity
    ADD CONSTRAINT "uk_group_id_377325F2" UNIQUE (group_id);


--
-- TOC entry 4732 (class 2606 OID 278701)
-- Name: permissions uk_role_permission_1DFC6980; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.permissions
    ADD CONSTRAINT "uk_role_permission_1DFC6980" UNIQUE (role, resource, action);


--
-- TOC entry 4736 (class 2606 OID 278709)
-- Name: tenant_capacity uk_tenant_id_22935E1; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.tenant_capacity
    ADD CONSTRAINT "uk_tenant_id_22935E1" UNIQUE (tenant_id);


--
-- TOC entry 4730 (class 2606 OID 278698)
-- Name: tenant_info uk_tenant_info_kptenantid_195888C1; Type: CONSTRAINT; Schema: nacos_config; Owner: system
--

ALTER TABLE ONLY nacos_config.tenant_info
    ADD CONSTRAINT "uk_tenant_info_kptenantid_195888C1" UNIQUE (kp, tenant_id);


--
-- TOC entry 4716 (class 1259 OID 278693)
-- Name: idx_dataid_gmt_modified_99E37417; Type: INDEX; Schema: nacos_config; Owner: system
--

CREATE INDEX "idx_dataid_gmt_modified_99E37417" ON nacos_config.config_info_gray USING btree (data_id, gmt_modified);


--
-- TOC entry 4711 (class 1259 OID 278691)
-- Name: idx_did_8DE97C10; Type: INDEX; Schema: nacos_config; Owner: system
--

CREATE INDEX "idx_did_8DE97C10" ON nacos_config.his_config_info USING btree (data_id);


--
-- TOC entry 4712 (class 1259 OID 278692)
-- Name: idx_gmt_create_F3B3E5A1; Type: INDEX; Schema: nacos_config; Owner: system
--

CREATE INDEX "idx_gmt_create_F3B3E5A1" ON nacos_config.his_config_info USING btree (gmt_create);


--
-- TOC entry 4713 (class 1259 OID 278694)
-- Name: idx_gmt_modified_42DBB1BB; Type: INDEX; Schema: nacos_config; Owner: system
--

CREATE INDEX "idx_gmt_modified_42DBB1BB" ON nacos_config.his_config_info USING btree (gmt_modified);


--
-- TOC entry 4717 (class 1259 OID 278699)
-- Name: idx_gmt_modified_A401CAE2; Type: INDEX; Schema: nacos_config; Owner: system
--

CREATE INDEX "idx_gmt_modified_A401CAE2" ON nacos_config.config_info_gray USING btree (gmt_modified);


--
-- TOC entry 4737 (class 1259 OID 278710)
-- Name: idx_tenant_id_4FB846F8; Type: INDEX; Schema: nacos_config; Owner: system
--

CREATE INDEX "idx_tenant_id_4FB846F8" ON nacos_config.config_tags_relation USING btree (tenant_id);


--
-- TOC entry 4726 (class 1259 OID 278688)
-- Name: idx_tenant_id_ABB71DBA; Type: INDEX; Schema: nacos_config; Owner: system
--

CREATE INDEX "idx_tenant_id_ABB71DBA" ON nacos_config.tenant_info USING btree (tenant_id);


-- Completed on 2025-08-26 11:16:04 CST

--
-- Kingbase database dump complete
--

