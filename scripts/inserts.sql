INSERT INTO servicoescutacidadao_sec.status (id, nome) VALUES ('1', 'AGUARDANDO ATENDIMENTO');
INSERT INTO servicoescutacidadao_sec.status (id, nome) VALUES ('2', 'EM ATENDIMENTO');
INSERT INTO servicoescutacidadao_sec.status (id, nome) VALUES ('3', 'FINALIZADO');

INSERT INTO servicoescutacidadao_sec.tipoProblema (id, nome) VALUES ('1', 'Alagamento');
INSERT INTO servicoescutacidadao_sec.tipoProblema (id, nome) VALUES ('2', 'Buraco na Estrada');


insert into servicoescutacidadao_sec.usuario(tipoUsuario, nome, telefone, bairro, email, cpf, senha) 
	values('user', 'João','40028922','progresso','João@email','12345678911','123');
	
insert into servicoescutacidadao_sec.usuario(tipoUsuario, nome, telefone, bairro, email, cpf, senha) 
	values('user', 'max','40028922','progresso','max@email','123','123');

insert into servicoescutacidadao_sec.endereco(cep, bairro, numero, logradouro, complemento)
	values(12345678, 'Progresso', 1500, 'Rua alfredo', 'Apartamento');

insert into servicoescutacidadao_sec.ocorrencia(dataInicial, urgencia, descricao, qntApoio, idusuario, idtipoProblema, idstatus, idendereco) 
	values(now(), 0, 'a', 3, 1, 1, 1, 1);
