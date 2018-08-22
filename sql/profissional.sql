CREATE TABLE profissional (
	id int NOT NULL identity(1,1) primary key,
        idpessoa int NOT NULL,
        idespecialidade int NOT NULL,
	dathorinclusao datetime default current_timestamp,
	dathoralteracao datetime,
	idusuarioinclusao int,
	idusuarioalteracao int
);

CREATE TRIGGER profissional_update on profissional
AFTER UPDATE
AS
BEGIN
	UPDATE profissional
        SET dathoralteracao=getdate()
        from INSERTED i
        where i.id=profissional.id
END;
