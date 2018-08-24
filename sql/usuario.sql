CREATE TABLE usuario (
	id int NOT NULL identity(1,1) primary key,
        nome varchar(20) not null default '',
	identidade varchar(12) not null default '',
	datanascimento date not null default '',
	datavalidade date not null default eomonth(getdate(),1),
	ativo char(1) not null default '1',
	hashsenha varchar(255) not null default '',
	dathorinclusao datetime not null default current_timestamp,
	dathoralteracao datetime not null default '',
	idusuarioinclusao int not null default 0,
	idusuarioalteracao int not null default 0 
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

