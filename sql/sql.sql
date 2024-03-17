-- Tabela usuarios
CREATE TABLE public.usuarios (
	id serial4 NOT NULL,
	nome varchar(50) NOT NULL,
	nick varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	senha varchar(100) NOT NULL,
	criadoem timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT usuarios_email_key UNIQUE (email),
	CONSTRAINT usuarios_nick_key UNIQUE (nick),
	CONSTRAINT usuarios_pkey PRIMARY KEY (id)
);

-- Tabela Seguidores

CREATE TABLE public.seguidores (
	usuario_id int4 NOT NULL,
	seguidor_id int4 NOT NULL,
	CONSTRAINT seguidores_pkey PRIMARY KEY (usuario_id, seguidor_id)
);


ALTER TABLE public.seguidores ADD CONSTRAINT seguidores_seguidor_id_fkey FOREIGN KEY (seguidor_id) REFERENCES public.usuarios(id) ON DELETE CASCADE;
ALTER TABLE public.seguidores ADD CONSTRAINT seguidores_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON DELETE CASCADE;

-- Tabela Publicacoes

CREATE TABLE public.publicacoes (
	id serial4 NOT NULL,
	titulo varchar(50) NOT NULL,
	conteudo varchar(300) NOT NULL,
	autor_id int4 NOT NULL,
	curtidas int4 DEFAULT 0 NULL,
	criadaem timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT publicacoes_pkey PRIMARY KEY (id)
);


ALTER TABLE public.publicacoes ADD CONSTRAINT publicacoes_autor_id_fkey FOREIGN KEY (autor_id) REFERENCES public.usuarios(id) ON DELETE CASCADE;
