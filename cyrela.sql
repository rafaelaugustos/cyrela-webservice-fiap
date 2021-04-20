-- -------------------------------------------------------------
-- TablePlus 3.12.4(360)
--
-- https://tableplus.com/
--
-- Database: cyrela
-- Generation Time: 2021-04-19 21:00:33.7970
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS atividade_agendata_id_seq;

-- Table Definition
CREATE TABLE "public"."atividade_agendada" (
    "id" int4 NOT NULL DEFAULT nextval('atividade_agendata_id_seq'::regclass),
    "actualstart" date NOT NULL,
    "actualend" date NOT NULL,
    "pjo_tipodeatividade" text NOT NULL,
    "subject" text NOT NULL,
    "pjo_empreendimentoid" int4 NOT NULL,
    "pjo_blocoid" int4 NOT NULL,
    "pjo_unidadeid" int4 NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS ocorrencia_id_seq;

-- Table Definition
CREATE TABLE "public"."ocorrencia" (
    "id" int4 NOT NULL DEFAULT nextval('ocorrencia_id_seq'::regclass),
    "ticketnumber" numeric,
    "pjo_clientedaunidade" text,
    "pjo_empreendimentoid" int4,
    "pjo_bloco" text,
    "pjo_unidade" text,
    "pjo_bandeira" text,
    "description" text,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."atividade_agendada" ("id", "actualstart", "actualend", "pjo_tipodeatividade", "subject", "pjo_empreendimentoid", "pjo_blocoid", "pjo_unidadeid") VALUES
('3', '2021-04-19', '2021-04-20', 'Atividade de teste', 'Assunto de teste', '1', '1', '1'),
('5', '2021-04-12', '2021-04-20', 'Atividade de teste 1', 'Assunto de teste 1', '1', '1', '1');

