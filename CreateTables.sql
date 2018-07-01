
CREATE TABLE Bairro
( 
	cd_bairro            integer  NOT NULL ,
	nm_bairro            varchar(20)  NULL ,
	cd_municipio         integer  NULL 
)
go



ALTER TABLE Bairro
	ADD CONSTRAINT XPKBairro PRIMARY KEY  CLUSTERED (cd_bairro ASC)
go



CREATE TABLE Complemento
( 
	cd_complemento       char(18)  NOT NULL ,
	ds_complemento       char(18)  NULL 
)
go



ALTER TABLE Complemento
	ADD CONSTRAINT XPKComplemento PRIMARY KEY  CLUSTERED (cd_complemento ASC)
go



CREATE TABLE DadosAdicionais
( 
	cd_dadosadicionais   char(18)  NOT NULL ,
	ds_dadosadicionais   char(18)  NULL ,
	ds_aserimpresso      char(18)  NULL ,
	cd_notafiscal        integer  NULL 
)
go



ALTER TABLE DadosAdicionais
	ADD CONSTRAINT XPKDadosAdicionais PRIMARY KEY  CLUSTERED (cd_dadosadicionais ASC)
go



CREATE TABLE Duplicata
( 
	dt_vencimentoduplicata datetime  NULL ,
	vl_vencimentoduplicata integer  NULL ,
	cd_duplicata         char(18)  NOT NULL ,
	dt_pagamentoduplicata datetime  NULL ,
	vl_pagamentoduplicata integer  NULL ,
	cd_notafiscal        integer  NULL 
)
go



ALTER TABLE Duplicata
	ADD CONSTRAINT XPKDuplicata PRIMARY KEY  CLUSTERED (cd_duplicata ASC)
go



CREATE TABLE Endereco
( 
	cd_endereco          integer  NOT NULL ,
	nu_cep               integer  NULL ,
	cd_pessoa            integer  NULL ,
	cd_complemento       char(18)  NULL ,
	cd_logradouro        integer  NULL ,
	cd_bairro            integer  NULL 
)
go



ALTER TABLE Endereco
	ADD CONSTRAINT XPKEndereco PRIMARY KEY  CLUSTERED (cd_endereco ASC)
go



CREATE TABLE Fax
( 
	cd_fax               integer  NOT NULL ,
	nu_telefone          integer  NULL 
)
go



ALTER TABLE Fax
	ADD CONSTRAINT XPKFax PRIMARY KEY  CLUSTERED (cd_fax ASC)
go



CREATE TABLE InscricaoEstadual
( 
	cd_inscricaoestadual char(18)  NOT NULL ,
	nu_inscricaoestadual char(18)  NULL 
)
go



ALTER TABLE InscricaoEstadual
	ADD CONSTRAINT XPKInscricaoEstadual PRIMARY KEY  CLUSTERED (cd_inscricaoestadual ASC)
go



CREATE TABLE itemNotaFiscal
( 
	cd_itemnotafiscal    integer  NOT NULL ,
	qt_itemnf            integer  NULL ,
	vl_unitarioitemnf    integer  NULL ,
	cd_situacaotributaria char(18)  NULL ,
	cd_produto           integer  NULL ,
	cd_notafiscal        integer  NULL 
)
go



ALTER TABLE itemNotaFiscal
	ADD CONSTRAINT XPKitemNotaFiscal PRIMARY KEY  CLUSTERED (cd_itemnotafiscal ASC)
go



CREATE TABLE Logradouro
( 
	cd_logradouro        integer  NOT NULL ,
	nm_logradouro        varchar(20)  NULL ,
	nu_logradouro        integer  NULL ,
	cd_tipologradouro    char(18)  NULL 
)
go



ALTER TABLE Logradouro
	ADD CONSTRAINT XPKLogradouro PRIMARY KEY  CLUSTERED (cd_logradouro ASC)
go



CREATE TABLE MeioComunicacao
( 
	cd_meiocomunicacao   char(18)  NOT NULL ,
	cd_telefone          char(18)  NULL ,
	cd_fax               integer  NULL 
)
go



ALTER TABLE MeioComunicacao
	ADD CONSTRAINT XPKmeiocomunicacao PRIMARY KEY  CLUSTERED (cd_meiocomunicacao ASC)
go



CREATE TABLE Municipio
( 
	cd_municipio         integer  NOT NULL ,
	nm_municipio         varchar(20)  NULL ,
	cd_uf                char(18)  NULL 
)
go



ALTER TABLE Municipio
	ADD CONSTRAINT XPKMunicipio PRIMARY KEY  CLUSTERED (cd_municipio ASC)
go



CREATE TABLE NotaFiscal
( 
	cd_notafiscal        integer  NOT NULL ,
	dt_emissaonf         datetime  NULL ,
	dt_saidanf           datetime  NULL ,
	dt_entradanf         datetime  NULL ,
	ds_naturezaoperacaonf varchar(20)  NULL ,
	nu_cfopnf            integer  NULL ,
	nu_inscricaoestadualsubsistematritutario integer  NULL ,
	ic_saida             integer  NULL ,
	nu_controleformularionf integer  NULL ,
	cd_emitente          integer  NULL ,
	ic_fretecontanf      integer  NULL ,
	cd_pacotetransporte  integer  NULL ,
	vl_fretenf           integer  NULL ,
	cd_cliente           integer  NULL ,
	cd_pacote            integer  NULL ,
	cd_produto           integer  NULL 
)
go



ALTER TABLE NotaFiscal
	ADD CONSTRAINT XPKNotaFiscal PRIMARY KEY  CLUSTERED (cd_notafiscal ASC)
go



CREATE TABLE Pacote
( 
	cd_pacote            integer  NOT NULL ,
	qt_produto           integer  NULL ,
	ds_especie           varchar(20)  NULL ,
	cd_marca             integer  NULL ,
	nu_pacote            integer  NULL ,
	cd_veiculo           char(18)  NULL ,
	nu_pesobruto         integer  NULL ,
	nu_pesoliquido       integer  NULL 
)
go



ALTER TABLE Pacote
	ADD CONSTRAINT XPKPacote PRIMARY KEY  CLUSTERED (cd_pacote ASC)
go



CREATE TABLE Pessoa
( 
	cd_pessoa            integer  NOT NULL ,
	nm_pessoa            varchar(20)  NULL ,
	dt_nascimento        datetime  NULL ,
	cd_pessoajuridica    char(18)  NULL ,
	cd_pessoafisica      integer  NULL ,
	cd_meiocomunicacao   char(18)  NULL 
)
go



ALTER TABLE Pessoa
	ADD CONSTRAINT XPKPessoa PRIMARY KEY  CLUSTERED (cd_pessoa ASC)
go



CREATE TABLE PessoaFisica
( 
	cd_pessoafisica      integer  NOT NULL ,
	nu_cpf               integer  NULL 
)
go



ALTER TABLE PessoaFisica
	ADD CONSTRAINT XPKPessoaFisica PRIMARY KEY  CLUSTERED (cd_pessoafisica ASC)
go



CREATE TABLE PessoaJuridica
( 
	cd_pessoajuridica    char(18)  NOT NULL ,
	nu_cnpj              char(18)  NULL ,
	cd_inscricaoestadual char(18)  NULL 
)
go



ALTER TABLE PessoaJuridica
	ADD CONSTRAINT XPKPessoaJuridica PRIMARY KEY  CLUSTERED (cd_pessoajuridica ASC)
go



CREATE TABLE Produto
( 
	cd_produto           integer  NOT NULL ,
	ds_produto           varchar(20)  NULL ,
	ic_unidade           varchar(20)  NULL ,
	vl_sugeridoproduto   money  NULL ,
	pc_ipi               float  NULL ,
	pc_icms              char(18)  NULL ,
	cd_situacaotrib      char(18)  NULL ,
	qt_estoqueproduto    char(18)  NULL 
)
go



ALTER TABLE Produto
	ADD CONSTRAINT XPKProduto PRIMARY KEY  CLUSTERED (cd_produto ASC)
go



CREATE TABLE SituacaoTributaria
( 
	cd_situacaotributaria char(18)  NOT NULL ,
	nm_situacaotrib      char(18)  NULL 
)
go



ALTER TABLE SituacaoTributaria
	ADD CONSTRAINT XPKSituacaoTributaria PRIMARY KEY  CLUSTERED (cd_situacaotributaria ASC)
go



CREATE TABLE Telefone
( 
	cd_telefone          char(18)  NOT NULL ,
	nu_telefone          char(18)  NULL 
)
go



ALTER TABLE Telefone
	ADD CONSTRAINT XPKTelefone PRIMARY KEY  CLUSTERED (cd_telefone ASC)
go



CREATE TABLE TipoLogradouro
( 
	cd_tipologradouro    char(18)  NOT NULL ,
	nm_tipologradouro    char(18)  NULL 
)
go



ALTER TABLE TipoLogradouro
	ADD CONSTRAINT XPKTipoLogradouro PRIMARY KEY  CLUSTERED (cd_tipologradouro ASC)
go



CREATE TABLE UF
( 
	cd_uf                char(18)  NOT NULL ,
	sg_uf                char(18)  NULL 
)
go



ALTER TABLE UF
	ADD CONSTRAINT XPKUF PRIMARY KEY  CLUSTERED (cd_uf ASC)
go



CREATE TABLE Veiculo
( 
	cd_veiculo           char(18)  NOT NULL ,
	sg_placaveiculo      varchar(20)  NULL ,
	cd_uf                char(18)  NULL 
)
go



ALTER TABLE Veiculo
	ADD CONSTRAINT XPKVeiculo PRIMARY KEY  CLUSTERED (cd_veiculo ASC)
go




ALTER TABLE Bairro
	ADD CONSTRAINT R_4 FOREIGN KEY (cd_municipio) REFERENCES Municipio(cd_municipio)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE DadosAdicionais
	ADD CONSTRAINT R_6 FOREIGN KEY (cd_notafiscal) REFERENCES NotaFiscal(cd_notafiscal)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Duplicata
	ADD CONSTRAINT R_7 FOREIGN KEY (cd_notafiscal) REFERENCES NotaFiscal(cd_notafiscal)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Endereco
	ADD CONSTRAINT R_3 FOREIGN KEY (cd_pessoa) REFERENCES Pessoa(cd_pessoa)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Endereco
	ADD CONSTRAINT R_8 FOREIGN KEY (cd_complemento) REFERENCES Complemento(cd_complemento)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Endereco
	ADD CONSTRAINT R_9 FOREIGN KEY (cd_logradouro) REFERENCES Logradouro(cd_logradouro)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Endereco
	ADD CONSTRAINT R_10 FOREIGN KEY (cd_bairro) REFERENCES Bairro(cd_bairro)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE itemNotaFiscal
	ADD CONSTRAINT R_15 FOREIGN KEY (cd_situacaotributaria) REFERENCES SituacaoTributaria(cd_situacaotributaria)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE itemNotaFiscal
	ADD CONSTRAINT R_28 FOREIGN KEY (cd_produto) REFERENCES Produto(cd_produto)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE itemNotaFiscal
	ADD CONSTRAINT R_41 FOREIGN KEY (cd_notafiscal) REFERENCES NotaFiscal(cd_notafiscal)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Logradouro
	ADD CONSTRAINT R_16 FOREIGN KEY (cd_tipologradouro) REFERENCES TipoLogradouro(cd_tipologradouro)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE MeioComunicacao
	ADD CONSTRAINT R_34 FOREIGN KEY (cd_telefone) REFERENCES Telefone(cd_telefone)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE MeioComunicacao
	ADD CONSTRAINT R_36 FOREIGN KEY (cd_fax) REFERENCES Fax(cd_fax)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Municipio
	ADD CONSTRAINT R_18 FOREIGN KEY (cd_uf) REFERENCES UF(cd_uf)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE NotaFiscal
	ADD CONSTRAINT R_23 FOREIGN KEY (cd_pacote) REFERENCES Pacote(cd_pacote)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE NotaFiscal
	ADD CONSTRAINT R_30 FOREIGN KEY (cd_produto) REFERENCES Produto(cd_produto)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE NotaFiscal
	ADD CONSTRAINT R_19 FOREIGN KEY (cd_cliente) REFERENCES Pessoa(cd_pessoa)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Pacote
	ADD CONSTRAINT R_24 FOREIGN KEY (cd_veiculo) REFERENCES Veiculo(cd_veiculo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Pessoa
	ADD CONSTRAINT R_26 FOREIGN KEY (cd_pessoajuridica) REFERENCES PessoaJuridica(cd_pessoajuridica)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Pessoa
	ADD CONSTRAINT R_33 FOREIGN KEY (cd_pessoafisica) REFERENCES PessoaFisica(cd_pessoafisica)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Pessoa
	ADD CONSTRAINT R_37 FOREIGN KEY (cd_meiocomunicacao) REFERENCES MeioComunicacao(cd_meiocomunicacao)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE PessoaJuridica
	ADD CONSTRAINT R_38 FOREIGN KEY (cd_inscricaoestadual) REFERENCES InscricaoEstadual(cd_inscricaoestadual)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Veiculo
	ADD CONSTRAINT R_40 FOREIGN KEY (cd_uf) REFERENCES UF(cd_uf)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


