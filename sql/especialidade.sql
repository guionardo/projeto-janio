CREATE TABLE especialidade (
        id int NOT NULL identity(1,1) primary key,
	nome varchar(255) NOT NULL,
	sigla varchar(10) NOT NULL,
	dathorinclusao datetime default current_timestamp,
	dathoralteracao datetime(3),
	idusuarioinclusao int,
	idusuarioalteracao int
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
