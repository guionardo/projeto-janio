CREATE TABLE pessoa (
	id int NOT NULL identity(1,1) primary key,
	nome varchar(255) NOT NULL,
	datanascimento date,
        endereco varchar(255) NOT NULL,
        ativo char(1) NOT NULL,
	dathorinclusao datetime default current_timestamp,
	dathoralteracao datetime,
	idusuarioinclusao int,
	idusuarioalteracao int
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
