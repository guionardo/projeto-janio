CREATE TABLE profissional (
	id int NOT NULL identity(1,1) primary key,
        idpessoa int NOT NULL default 0,
        idespecialidade int NOT NULL default 0,
	dathorinclusao datetime default current_timestamp,
	dathoralteracao datetime default '',
	idusuarioinclusao int default 0,
	idusuarioalteracao int default 0
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
