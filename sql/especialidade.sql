CREATE TABLE especialidade (
        id int NOT NULL identity(1,1) primary key,
	nome varchar(255) NOT NULL default '',
	sigla varchar(10) NOT NULL default '',
	dathorinclusao datetime default current_timestamp,
	dathoralteracao datetime default '',
	idusuarioinclusao int default 0,
	idusuarioalteracao int default 0
);

CREATE TRIGGER especialidade_update on especialidade
AFTER UPDATE
AS
BEGIN
	UPDATE especialidade
        SET dathoralteracao=getdate()
        from INSERTED i
        where i.id=especialidade.id
END;
