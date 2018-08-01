create database brinquedos

use brinquedos

SHOW TABLES

CREATE table log_produtos(
NomeVelho VARCHAR(100),
NomeNovo VARCHAR(100),
PreçoVelho FLOAT,
PreçoNovo FLOAT,
MarcaVelha VARCHAR(30),
MarcaNova VARCHAR(30),
IdCatVelho INT,
IdCatNova INT,
DescriçãoVelha VARCHAR(1000),
DescriçãoNova VARCHAR(1000)
)

create table Categorias(
IdCategoria INT NOT NULL AUTO_INCREMENT,
NomeCategoria VARCHAR(20) NOT NULL,
PRIMARY KEY (IdCategoria))

create table Produtos(
IdProduto INT NOT NULL AUTO_INCREMENT,
NomeProduto VARCHAR(100) NOT NULL,
Preço VARCHAR(20) NOT NULL,
Marca VARCHAR(20) NOT NULL,
IdCategoria INT NOT NULL,
Descrição VARCHAR(1000),
PRIMARY KEY (IdProduto),
FOREIGN KEY (IdCategoria) REFERENCES Categorias(IdCategoria));

ALTER TABLE Produtos ADD PreçoVista DECIMAL(10,2) AFTER Preço;

create table Usuarios(
Idusuario INT NOT NULL AUTO_INCREMENT,
Nome VARCHAR(50) NOT NULL,
Senha VARCHAR(50) NOT NULL,
Email VARCHAR(50),
PRIMARY KEY (Idusuario))

select * from Categorias
select * from Produtos
select * from Usuarios
select * from log_produtos

drop table Categorias
drop table Produtos
drop table Usuarios

UPDATE Produtos SET NomeProduto = 'rato' WHERE IdProduto = 13 

SELECT DISTINCT a.IdProduto, a.NomeProduto, a.Preço, a.Marca, a.Descrição, b.NomeCategoria
FROM Produtos a LEFT JOIN
Categorias b ON a.IdCategoria = b.IdCategoria

INSERT INTO Categorias (NomeCategoria) VALUES ('Bonecos')
INSERT INTO Categorias (NomeCategoria) VALUES ('Carrinhos')
INSERT INTO Categorias (NomeCategoria) VALUES ('Jogo de mesa')
INSERT INTO Categorias (NomeCategoria) VALUES ('Praia')
INSERT INTO Categorias (NomeCategoria) VALUES ('Praia'),('teste')

INSERT INTO Usuarios (Nome, Senha) VALUES ('admin','admin')

INSERT INTO Produtos (NomeProduto, Preço, Marca, IdCategoria, Descrição) VALUES ('Boneca Docinho De Bebe','64.89','Divertoys','1','Uma linda boneca que imita sons de um Bebê de verdade.')
,('Bonecos Turma Super Mario Bros 6 Peças','89.90','ANIME','1','Bonecos com toda a turma do Super Mario Bros. Especial para colecionadores e fãs desse game incrível que marcou gerações!')
,('Boneca Barbie Princesa Penteados Mágicos','109.30','Mattel','1','Os encantos dos Reinos Mágicos da Barbie trazem uma nova brincadeira. Com longos cabelos coloridos e uma ferramenta fácil de usar, essa Barbie vai desfilar beleza com penteados criados pelas crianças. Uma boneca para usar e abusar da criatividade e inventar um visual incrível para cada momento.')
,('Carro Land Evok','7.99','Artoys','2','As crianças vão adorar o carro Land Evok Artoys. Os carrinhos da Artoys trazem alegria para a criançada, enquanto se divertem desenvolvem a coordenação motora.')
,('Carrinho Pick Up Vision Tuning','38.84','Roma Brinquedos','2',' Crianças gostam de imaginar situações e inventar histórias através de seus brinquedos. Além de ser saudável para o desenvolvimento da criatividade, essas brincadeiras são super divertidas. Para estimular ainda mais essa galerinha, a Roma Brinquedos traz o carrinho Pick Up Vision Tuning, que foi fabricado com material altamente resistente e durável, além de um designer muito moderno. Com Roma Brinquedos, seus filhos poderão criar emocionantes aventuras. Compre agora para seus filhos, a incrível Pick Up Vision Tuning! ')
,('Kit com 3 Veículos Carros','179.90','Toyng','2','Esse Kit da Toyng vem com 3 personagens do desenho Carros da Disney para a criançada brincar e se divertir. Mate e McQueen possuem rodas livres, já o Mack é movido a fricção.')
,('Jogo Pie Face!','105.90','Hasbro','3','Gire a roleta para descobrir quantas vezes você deve rodar as manivelas. Coloque o seu queixo no apoio através da máscara, de frente para o braço atirador, e rode as manivelas de acordo com o número que você conseguiu. Se completar a sua vez sem ser atingido, você marca o dobro do número de pontos indicados na roleta. Se for atingido, você não marca pontos. O primeiro jogador a marcar 25 pontos é o vencedor.
')
,('Jogo Pie Face: O Duelo','139.52','Hasbro','3','Coloque o rosto no local indicado na mesma estrutura e bata no botão a maior quantidade de vezes, ao chegar em uma das extremidades a mão irá subir e sujar o rosto de um dos participantes. O participante que sair com o rosto limpo ganha.')
,('Jogo Super Banco Imobiliário','169.90','Estrela','3',' As crianças vão se divertir fazendo bons negócios. Com o Super Banco Imobiliário elas vão comprar e vender grandes empresas, propriedades e ações de renomadas companhias. Nesse jogo, os pequenos irão mostrar suas habilidades administrativas e empresariais. Basta se reunir com os amiguinhos e começar a brincadeira. O melhor negociador vence.')
,('Conjunto de Praia','29.90','Monte Líbano','4','Garanta a diversão da criançada na praia com o Conjunto de Praia Monte Líbano. Esse conjunto é ideal para os pequenos curtirem altas aventuras e soltarem a imaginação e criatividade ao brincar com a areia da praia.')
,('Brinquedo Vou Pra Praia com 9 pecas','45.99','Monte Líbano','4','A diversão da garotada na praia está garantida com o Brinquedo Vou Pra Praia da Monte Líbano. Desenvolvido em Plástico o conjunto conta com 9 peças, sendo: 1 carrinho de mão; 1 baldinho; 1 rastelo; 1 regador e 4 formas de areia. Esse conjunto é ideal para os pequenos curtirem altas aventuras e soltarem a imaginação e criatividade ao brincar com a areia da praia.')
,('Tenda Praia Homem Aranha','45.99','Zippy Toys','4','Acampar é uma das experiências mais gostosas da infância. Porém, para vivê-la, os pequenos precisam de conforto. Então, para esta ocasião tão especial, nada melhor que a Tenda Praia Homem Aranha Zippy Toys. Prática e muito fácil de montar, o produto possui estrutura em alumínio e cobertura em nylon, materiais que concedem bastante leveza ao item sem deixar de lado a segurança e a resistência. Temática, leva para as aventuras da meninada seus personagens preferidos, dando uma pitada a mais de diversão ao momento.Para completar, basta dobrá-la para levá-la para outros locais, viagens ou mesmo guardar.')