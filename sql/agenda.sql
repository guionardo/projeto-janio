CREATE TABLE agenda (
        datahora datetime NOT NULL default current_timestamp,
        idespecialidade int NOT NULL default 0,
        idprofissional int NOT NULL default 0,
        presenca char(1) default '0',
	dathorinclusao datetime default current_timestamp,
	dathoralteracao datetime default '',
	idusuarioinclusao int default 0,
	idusuarioalteracao int default 0
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
