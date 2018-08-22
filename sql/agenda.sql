CREATE TABLE agenda (
        datahora datetime NOT NULL,
        idespecialidade int NOT NULL,
        idprofissional int NOT NULL,
        presenca char(1),
	dathorinclusao datetime default current_timestamp,
	dathoralteracao datetime,
	idusuarioinclusao int,
	idusuarioalteracao int,
	PRIMARY KEY (datahora,idespecialidade,idprofissional)
);

CREATE TRIGGER agenda_update on agenda
AFTER UPDATE
AS
BEGIN
	UPDATE agenda
        SET dathoralteracao=getdate()
        from INSERTED i
        where i.id=agenda.id
END;
