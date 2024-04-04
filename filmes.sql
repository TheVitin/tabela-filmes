-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 04/04/2024 às 15:55
-- Versão do servidor: 8.0.36-0ubuntu0.22.04.1
-- Versão do PHP: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Filmes`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `ENTRETERIMENTO`
--

CREATE TABLE `ENTRETERIMENTO` (
  `ID` int NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `TIPO` enum('FILME','SÉRIE') NOT NULL,
  `DIRETOR` varchar(100) DEFAULT NULL,
  `ATOR_PRINCIPAL` varchar(100) DEFAULT NULL,
  `ATRIZ_PRINCIPAL` varchar(100) DEFAULT NULL,
  `ANO_LANCAMENTO` int DEFAULT NULL,
  `DURACAO_MINUTOS` int DEFAULT NULL,
  `CLASSIFICACAO_ETARIA` varchar(5) DEFAULT NULL,
  `GENERO` varchar(50) DEFAULT NULL,
  `NACIONALIDADE` varchar(50) DEFAULT NULL,
  `RANKING` int DEFAULT NULL,
  `RANKING_TIPO` varchar(50) DEFAULT NULL,
  `RANKING_NOME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `ENTRETERIMENTO`
--

INSERT INTO `ENTRETERIMENTO` (`ID`, `NOME`, `TIPO`, `DIRETOR`, `ATOR_PRINCIPAL`, `ATRIZ_PRINCIPAL`, `ANO_LANCAMENTO`, `DURACAO_MINUTOS`, `CLASSIFICACAO_ETARIA`, `GENERO`, `NACIONALIDADE`, `RANKING`, `RANKING_TIPO`, `RANKING_NOME`) VALUES
(1, 'Stranger Things', 'SÉRIE', 'Irmãos Duffer', 'Millie Bobby Brown', 'Winona Ryder', 2016, 60, '16+', 'Suspense', 'Estados Unidos', 4, 'Mundial', 'Netflix'),
(2, 'Black Mirror', 'SÉRIE', 'Charlie Brooker', 'Bryce Dallas Howard', 'Hayley Atwell', 2011, 45, '18+', 'Ficção Científica', 'Reino Unido', 3, 'Mundial', 'Netflix'),
(3, 'The Irishman', 'FILME', 'Martin Scorsese', 'Robert De Niro', 'Anna Paquin', 2019, 209, '16+', 'Crime', 'Estados Unidos', 5, 'Mundial', 'Netflix'),
(4, 'Breaking Bad', 'SÉRIE', 'Vince Gilligan', 'Bryan Cranston', 'Aaron Paul', 2008, 45, '18+', 'Drama', 'Estados Unidos', 5, 'Mundial', 'Netflix'),
(5, 'The Crown', 'SÉRIE', 'Peter Morgan', 'Jonathan Pryce', 'Olivia Colman', 2016, 60, '16+', 'Drama', 'Reino Unido', 3, 'Mundial', 'Netflix'),
(6, 'Inception', 'FILME', 'Christopher Nolan', 'Leonardo DiCaprio', 'Ellen Page', 2010, 148, '14+', 'Ação', 'Estados Unidos', 5, 'Mundial', 'Netflix'),
(7, 'Friends', 'SÉRIE', 'James Burrows', 'Jennifer Aniston', 'Matthew LeBlanc', 1994, 22, 'Livre', 'Comédia', 'Brasil', 5, 'Mundial', 'Netflix'),
(8, 'The Godfather', 'FILME', 'Francis Ford Coppola', 'Marlon Brando', 'Al Pacino', 1972, 175, '16+', 'Crime', 'Estados Unidos', 4, 'Mundial', 'Netflix'),
(9, 'La Casa de Papel', 'SÉRIE', 'Álex Pina', 'Úrsula Corberó', 'Álvaro Morte', 2017, 50, '16+', 'Drama', 'Espanha', 5, 'Mundial', 'Netflix'),
(10, 'Pulp Fiction', 'FILME', 'Quentin Tarantino', 'John Travolta', 'Uma Thurman', 1994, 154, '18+', 'Crime', 'Estados Unidos', 4, 'Mundial', 'AmazonP rime'),
(11, 'The Witcher', 'SÉRIE', 'Lauren Schmidt Hissrich', 'Henry Cavill', 'Anya Chalotra', 2019, 60, '16+', 'Fantasia', 'Estados Unidos', 5, 'Mundial', 'Netflix'),
(12, 'The Matrix', 'FILME', 'Lana Wachowski e Lilly Wachowski', 'Keanu Reeves', 'Carrie-Anne Moss', 1999, 136, '14+', 'Ação', 'Estados Unidos', 5, 'Mundial', 'Amazon Prime'),
(13, 'Money Heist', 'SÉRIE', 'Álex Pina', 'Úrsula Corberó', 'Álvaro Morte', 2017, 50, '16+', 'Crime', 'Brasil', 4, 'Mundial', 'Netflix'),
(14, 'Forrest Gump', 'FILME', 'Robert Zemeckis ', 'Tom Hanks ', 'Robin Wright', 1994, 142, '12+ ', 'Drama', 'Estados Unidos', 5, 'Mundial', 'Netflix'),
(15, 'Vikings ', 'SÉRIE', 'Michael Hirst', 'Travis Fimmel', 'Katheryn Winnick', 2013, 44, '18+ ', 'Drama', 'Brasil', 3, 'Mundial', 'Netflix'),
(16, 'The Dark Knight ', 'FILME', 'Christopher Nolan ', 'Christian Bale ', 'Heath Ledger ', 2008, 152, '14+ ', 'Ação', 'Estados Unidos', 4, 'Mundial', 'Apple TV'),
(17, 'Grey’s Anatomy ', 'SÉRIE', 'Shonda Lynn Rhimes', 'Patrick Dempsey', 'Katherine Heigl', 2005, 41, '14+ ', 'Drama', 'Brasil', 5, 'Mundial', 'Star+'),
(18, 'The Shawshank Redemption ', 'FILME', 'Frank Darabont ', 'Tim Robbins ', 'Morgan Freeman ', 1994, 142, '16+ ', 'Drama', 'Estados Unidos', 5, 'Mundial', 'Amazon Prime'),
(19, 'Gladiador ', 'FILME', 'Ridley Scott ', 'Tim Robbins ', 'Connie Nielsen ', 2000, 155, '16+ ', 'Ação/Drama', 'Brasil', 5, 'Mundial', 'Netflix'),
(20, 'O Senhor dos Anéis: A Sociedade do Anel ', 'FILME', 'Peter Jackson ', 'Elijah Wood ', 'Liv Tyler ', 2001, 178, '12+ ', 'Aventura/Fantasia', 'Estados Unidos', 4, 'Mundial', 'Netflix'),
(21, 'Clube da Luta ', 'FILME', 'David Fincher ', 'Brad Pitt ', 'Helena Bonham Carter ', 1999, 139, '18+ ', 'Drama', 'Brasil', 5, 'Mundial', 'Netflix'),
(22, 'Cidade de Deus ', 'FILME', 'Fernando Meirelles e Kátia Lund ', 'Alexandre Rodrigues ', 'Alice Braga ', 2002, 130, '18+ ', 'Crime/Drama', 'Brasil', 5, 'Mundial', 'Netflix'),
(23, 'Kill Bill: Volume 1 ', 'FILME', 'Quentin Tarantino ', 'David Carradine ', 'Uma Thurman ', 2003, 111, '16+ ', 'Ação/Thriller', 'Estados Unidos', 4, 'Mundial', 'Netflix'),
(24, 'Entrevista com o Vampiro ', 'FILME', 'Neil Jordan ', 'Brad Pitt ', 'Tom Cruise ', 1994, 123, '16+ ', 'Ação/Thriller', 'Estados Unidos', 5, 'Mundial', 'Amazon Prime'),
(25, 'Bastardos Inglórios ', 'FILME', 'Quentin Tarantino ', 'Brad Pitt ', 'Melanie Laurentz  ', 2009, 153, '18+ ', 'Drama/Guerra', 'Estados Unidos', 5, 'Mundial', 'Netflix'),
(26, 'Sr. e Sra. Smith ', 'FILME', 'Doug Liman ', 'Brad Pitt ', 'Angelina Jolie ', 2005, 120, '14+ ', 'Ação/Comédia', 'Estados Unidos', 3, 'Mundial', 'Netflix'),
(27, 'Tropa de Elite ', 'FILME', 'José Padilha ', 'Wagner Moura ', 'Maria Ribeiro ', 2007, 115, '18+ ', 'Ação/Drama', 'Estados Unidos', 5, 'Mundial', 'Netflix'),
(28, 'Central do Brasil ', 'FILME', 'Walter Salles ', 'Vinícius de Oliveira ', 'Fernanda Montenegro ', 1998, 113, 'livre', 'Drama', 'Estados Unidos', 3, 'Mundial', 'Netflix'),
(29, 'O Auto da Compadecida ', 'FILME', 'Guel Arraes ', 'Matheus Nachtergaele ', 'Denise Fraga ', 2000, 104, '12+ ', 'Comédia/Drama', 'Brasil', 4, 'Mundial', 'Netflix'),
(30, 'Sr. e Sra. Smith ', 'FILME', 'Doug Liman ', 'Brad Pitt ', 'Angelina Jolie ', 2005, 120, '14+ ', 'Ação/Comédia', 'Estados Unidos', 3, 'Mundial', 'Netflix'),
(31, 'O Senhor dos Anéis: As Duas Torres', 'FILME', 'Peter Jackson', 'Elijah Wood', 'Liv Tyler', 2002, 201, '12+', 'Aventura/Fantasia', 'Nova Zelândia', 4, 'Nacional', 'Netflix'),
(32, 'The Boys', 'FILME', 'Eric Kripke', 'Karl Urban', 'Erin Moriarty', 2019, 202, '16+', 'Ação/Drama', 'Estados Unidos', 5, 'Nacional', 'Netflix'),
(33, 'Mad Max: Estrada da Fúria', 'FILME', 'George Miller', 'Tom Hardy', 'Charlize Theron', 2015, 203, '16+', 'Ação/Aventura', 'Austrália', 5, 'Nacional', 'Amazon Prime'),
(34, 'The Marvelous Mrs. Maisel', 'FILME', 'Amy Sherman-Palladino', 'Rachel Brosnahan', 'Alex Borstein', 2017, 204, '16+', 'Comédia/Drama', 'Estados Unidos', 4, 'Nacional', 'Netflix'),
(35, 'Matrix Reloaded', 'FILME', 'Lana Wachowski e Lilly Wachowski', 'Keanu Reeves', 'Carrie-Anne Moss', 2003, 205, '14+', 'Ação/Ficção Científica', 'Estados Unidos', 4, 'Nacional', 'Netflix'),
(36, 'Deadpool', 'FILME', 'Tim Miller', 'Ryan Reynolds', 'Morena Baccarin', 2016, 206, '18+', 'Ação/Comédia', 'Estados Unidos', 4, 'Nacional', 'Conhecido');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
