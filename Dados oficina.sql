SHOW DATABASES;
use oficina;

SHOW TABLES;

INSERT INTO Pessoa (CPF, Pnome, Sobrenome, Telefone, Endereço) VALUES
				   ('16745829933','Marta','Pinheiro','86548939219','Rua morientes- CENTRO'),
				   ('89745634573','Jose','Ricardo','78670984531','Rua Salvador Magno - SAO MATEUS'),
                   ('90987676624','Willian','Lucas','77861453420','Rua major dos lirios - FLORA'),
                   ('89867655091','Lilian','Macena','89096545367','Rua Cristovao Colombo - Quebec ville');
                      
INSERT INTO Veiculo (Placa, Defeito, Veiculo_pessoa) VALUES
					('MWE9897','Repimboca parafuseta','1'),
                    ('QWE5631','Alternador','2'),
                    ('ASC6743','Cambio','3'),
                    ('KLS9I87','Motor de arranque','7'),
                    ('OPI8765','Motor de arranque','1'),
                    ('IKN0983','Cambio','8');
				
INSERT INTO equipe_de_mecanicos (Especialidade) VALUES
								('Motor'),
                                ('Cambio'),
                                ('Suspensão'),
                                ('Eletrica'),
                                ('Motor de arranque');
                                
INSERT INTO Tabela_mao_de_obra (Nome_do_serviço, Valor) VALUES
							   ('Manutenção de rotina','150'),
                               ('Montagem suspesão','200'),
                               ('Manutenção cambio','320'),
                               ('Motor de arranque','310'),
                               ('Manutenção eletrica','180');
                               
INSERT INTO Serviços_realizados (Valor_total, Prazo_de_entrega) VALUES
								('453','5 dias'),
                                ('765','2 dias'),
                                ('923','7 dias'),
                                ('491','9 dias');
                                
SELECT * FROM Serviços_realizados;