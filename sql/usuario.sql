CREATE TABLE usuario (
	id int NOT NULL identity(1,1) primary key,
        nome varchar(20) not null,
	identidade varchar(12),
	datanascimento date,
	datavalidade date,
	ativo char(1),
	hashsenha varchar(255),
	dathorinclusao datetime default current_timestamp,
	dathoralteracao datetime,
	idusuarioinclusao int,
	idusuarioalteracao int
);

CREATE TRIGGER usuario_update on usuario
AFTER UPDATE
AS
BEGIN
	UPDATE usuario
        SET dathoralteracao=getdate()
        from INSERTED i
        where i.id=usuario.id
END;

