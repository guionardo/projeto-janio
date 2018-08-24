CREATE TABLE pessoa (
	id int NOT NULL identity(1,1) primary key,
	nome varchar(255) NOT NULL default '',
	datanascimento date not null default '',
        endereco varchar(255) NOT NULL default '',
        ativo char(1) NOT NULL default '1',
	dathorinclusao datetime default current_timestamp,
	dathoralteracao datetime default '',
	idusuarioinclusao int default 0,
	idusuarioalteracao int default 0
);

CREATE TRIGGER pessoa_update on pessoa
AFTER UPDATE
AS
BEGIN
	UPDATE pessoa
        SET dathoralteracao=getdate()
        from INSERTED i
        where i.id=pessoa.id
END;
