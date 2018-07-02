Declare @Id int
Declare @tableSize int


set @tableSize = 50


insert into UF values (1, 'RJ')
insert into UF values (2, 'SP')
insert into UF values (3, 'MG')
insert into UF values (4, 'PE')
insert into UF values (5, 'ES')
insert into UF values (6, 'PR')
insert into UF values (7, 'CE')

Set @Id = 1
Declare @uf_id int
While @Id <= @tableSize
Begin
	select top 1 @uf_id = cd_uf from UF order by newid()
	insert into Municipio values (@Id, 'Muni - ' + CAST(@Id as char(10)), @uf_id)
	Set @Id = @Id + 1
End

Set @Id = 1
Declare @muni_id int
While @Id <= @tableSize
Begin
	select top 1 @muni_id = cd_municipio from Municipio order by newid()
	insert into Bairro values (@Id, 'Bairro - ' + CAST(@Id as char(10)), @muni_id)
	Set @Id = @Id + 1
End

Set @Id = 1
While @Id <= @tableSize
Begin
	insert into TipoLogradouro values (@Id, 'TipoLogradouro - ' + CAST(@Id as char(10)))
	Set @Id = @Id + 1
End

Set @Id = 1
Declare @tipo_log_id int
While @Id <= @tableSize
Begin
	select top 1 @tipo_log_id = cd_tipologradouro from TipoLogradouro order by newid()
	insert into Logradouro values (@Id, 'Bairro - ' + CAST(@Id as char(10)), rand()*100, @tipo_log_id)
	Set @Id = @Id + 1
End

Set @Id = 1
While @Id <= @tableSize
Begin
	insert into Complemento values (@Id, 'Complemento - ' + CAST(@Id as char(10)))
	Set @Id = @Id + 1
End



Set @Id = 1
Declare @inscEst int
While @Id <= @tableSize
Begin
	select @inscEst = cast(rand()*100000000 as bigint)
	insert into InscricaoEstadual values (@Id, @inscEst)
	Set @Id = @Id + 1
End

Set @Id = 1
Declare @cnpj bigint
Declare @cd_inscEst int
While @Id <= @tableSize
Begin
	select top 1 @cd_inscEst = cd_inscricaoestadual from InscricaoEstadual order by newid()
	insert into PessoaJuridica values (@Id, @cnpj, @cd_inscEst)
	Set @Id = @Id + 1
End

Set @Id = 1
Declare @cpf bigint
While @Id <= @tableSize
Begin
	select @cpf = cast(rand()*10000000000 as bigint)
	insert into PessoaFisica values (@Id, @cpf)
	Set @Id = @Id + 1
End

Set @Id = 1
Declare @tel int
While @Id <= @tableSize
Begin
	select @tel = cast(rand()*100000000 as bigint)
	insert into Telefone values (@Id, @tel)
	Set @Id = @Id + 1
End

Set @Id = 1
While @Id <= @tableSize
Begin
	select @tel = cast(rand()*100000000 as bigint)
	insert into Fax values (@Id, @tel)
	Set @Id = @Id + 1
End

Set @Id = 1
Declare @cd_tel int
Declare @cd_telF int
While @Id <= @tableSize
Begin
    select top 1 @cd_tel = cd_telefone from Telefone order by newid()
    select top 1 @cd_telF = cd_fax from Fax order by newid()
	insert into MeioComunicacao values (@Id, @cd_tel, @cd_telF)
	Set @Id = @Id + 1
End

Set @Id = 1
declare @cd_PF bigint
Declare @cd_PJ bigint
Declare @cd_meioCom int
Declare @data_nasc datetime
While @Id <= @tableSize
Begin
	select @data_nasc = DATEADD(day, (ABS(CHECKSUM(NEWID())) % 65530), 0)
	select top 1 @cd_PF = cd_pessoafisica from PessoaFisica order by newid()
	select top 1 @cd_PJ = cd_pessoajuridica from PessoaJuridica order by newid()
    select top 1 @cd_meioCom = cd_meiocomunicacao from MeioComunicacao order by newid()
	DECLARE  @RandomDate datetime
	SELECT    @RandomDate   = 
    DATEADD(day, ROUND(DATEDIFF(day, '1960-01-01', '1990-12-31') * RAND(CHECKSUM(NEWID())), 0),
    DATEADD(second, CHECKSUM(NEWID()) % 48000, '2015-01-01'))
	SELECT    RandomDate = @RandomDate
	insert into Pessoa values (@Id, 'Pessoa - ' + CAST(@Id as char(10)), @RandomDate, @cd_PJ, @cd_PF, @cd_meioCom)
	Set @Id = @Id + 1
End

Set @Id = 1
Declare @complemento_id int
Declare @pessoa_id int
Declare @logradouro_id int 
Declare @bairro_id int
declare @cep int
While @Id <= @tableSize
Begin
	select @cep = cast(rand()*100000000 as bigint)
	select top 1 @complemento_id = cd_complemento from Complemento order by newid()
	select top 1 @pessoa_id = cd_pessoa from Pessoa order by newid()
	select top 1 @logradouro_id = cd_logradouro from Logradouro order by newid()
	select top 1 @bairro_id = cd_bairro from Bairro order by newid()
	select top 1 @tipo_log_id = cd_tipologradouro from TipoLogradouro order by newid()
	insert into Endereco values (@Id, rand()*100000000, @pessoa_id, @complemento_id, @tipo_log_id, @bairro_id)
	Set @Id = @Id + 1
End

Set @Id = 1
While @Id <= @tableSize
Begin
	select @uf_id = cd_uf from UF order by newid()
	insert into Veiculo values (@Id, 'Placa - ' + CAST(@Id as char(10)), @uf_id)
	Set @Id = @Id + 1
End





Set @Id = 1
Declare @veiculo_id int
Declare @qnt_prod int
Declare @peso_liquido float
Declare @peso_bruto float
While @Id <= @tableSize
Begin
	select @qnt_prod = cast(rand()*10 as int)
	select @peso_liquido = cast(rand()*100 as float)
	select @peso_bruto = cast(rand()*120 as float)
	select top 1 @veiculo_id = cd_veiculo from Veiculo order by newid()
	insert into Pacote values (@Id, @qnt_prod, 'Especie - ' + CAST(@Id as char(10)), null, @qnt_prod*2, @veiculo_id, @peso_bruto, @peso_liquido)
	Set @Id = @Id + 1
End



Set @Id = 1
While @Id <= @tableSize
Begin
	insert into SituacaoTributaria values (@Id, 'Placa - ' + CAST(@Id as char(10)))
	Set @Id = @Id + 1
End

Set @Id = 1

Declare @ipi float
Declare @icms float
Declare @estoque int
Declare @valor float
Declare @sit_trib_id int
Declare @produto_id int
While @Id <= @tableSize
Begin
	select @valor = cast(rand()*10 as float)
	select @ipi = rand()
	select @icms = rand()
	select @estoque = rand()*10
	select @sit_trib_id = cd_situacaotributaria from SituacaoTributaria order by newid()
	select @produto_id = cd_produto from Produto order by newid()
	insert into Produto values (@Id, 'Produto - ' + CAST(@Id as char(10)), 'Ic - ' + CAST(@Id as char(10)), @valor, @ipi, @icms, @sit_trib_id, @estoque)
	Set @Id = @Id + 1
End

Set @Id = 1

Declare @cliente_id int
Declare @pacote_id int

While @Id <= 10
Begin
	select @cliente_id = cd_pessoa from Pessoa order by newid()
	select @pacote_id = cd_pacote from Pacote order by newid()
	select @produto_id = cd_produto from Produto order by newid()
	insert into NotaFiscal values (@Id, CAST(N'2012-01-02' AS datetime), CAST(N'2012-01-03' AS datetime), CAST(N'15:30:00' AS Time), N'EMPRESTIMO          ', 5, CAST(35426547 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(123456 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), 1, CAST(1 AS Numeric(18, 0)), 3.5000, @cliente_id,  @pacote_id, @produto_id)
	Set @Id = @Id + 1
End

Set @Id = 1
Declare @notafiscal_id int

While @Id <= @tableSize
Begin
	select @valor = cast(rand()*10 as float)
	select @qnt_prod = cast(rand()*10 as int)
	select @sit_trib_id = cd_situacaotributaria from SituacaoTributaria order by newid()
	select @notafiscal_id = cd_notafiscal from NotaFiscal order by newid()
	select @produto_id = cd_produto from Produto order by newid()
	insert into ItemNotaFiscal values (@Id, @qnt_prod, @valor, @sit_trib_id, @produto_id, @notafiscal_id)
	Set @Id = @Id + 1
End


----- DUPLICATA
Set @Id = 1
Declare @nota_fiscal int
Declare @vencimento datetime

While @Id <= @tableSize

Begin
	SELECT    @vencimento  = 
		DATEADD(day, ROUND(DATEDIFF(day, '2018-01-01', '2018-12-31') * RAND(CHECKSUM(NEWID())), 0),
		DATEADD(second, CHECKSUM(NEWID()) % 48000, '2018-01-01'))
	select @nota_fiscal= cd_notafiscal from NotaFiscal order by newid()
	insert into Duplicata values (@vencimento, rand()*10000, @id, null, null, @nota_fiscal)
	Set @Id = @Id + 1
End


