--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL COMMENT 'Título do livro',
  `autores` varchar(150) NOT NULL,
  `unitario` decimal(18,2) NOT NULL,
  `saldo_atual` int(11) NOT NULL,
  `ativo` char(1) DEFAULT 'S',
  `data_criacao` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Cadastro de livros';

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`id`, `titulo`, `autores`, `unitario`, `saldo_atual`, `ativo`, `data_criacao`) VALUES
(3, 'Leituras Desarquivadas', 'João Alexandre Barbosa', 56.00, 0, 'S', '2021-02-27 09:49:23'),
(4, 'Leituras Imediatas', 'Jerusa Pires Ferreira', 33.00, 0, 'S', '2021-02-27 09:49:23'),
(5, 'Leituras Indispensáveis 2', 'Aziz Ab Sáber', 23.00, 0, 'S', '2021-02-27 09:49:23'),
(6, 'Lembranças de Esquecer', 'Camilo Guimarães', 29.80, 0, 'S', '2021-02-27 09:49:23'),
(7, 'Leniza & Elis', 'Ariovaldo José Vidal, Joaquim Alves de Aguiar', 44.00, 0, 'S', '2021-02-27 09:49:23'),
(8, 'Leopardo dos Olhos de Fogo', 'Carlos Eugênio Marcondes de Moura', 52.00, 0, 'S', '2021-02-27 09:49:23'),
(9, 'Letras e Memória - Uma Breve História da Escrita', 'Adovaldo Fernandes Sampaio', 98.00, 0, 'S', '2021-02-27 09:49:23'),
(10, 'Leão, o Africano', 'Murilo Sebe Bon Meihy', 51.00, 0, 'S', '2021-02-27 09:49:23'),
(11, 'Lições de Taxidermia', 'Fernando Antônio Dusi Rocha', 45.00, 0, 'S', '2021-02-27 09:49:23'),
(12, 'Lições do Acaso', 'Luis Carlos de Menezes', 45.00, 0, 'S', '2021-02-27 09:49:23'),
(13, 'Lição Aproveitada, A - Modernismo e Cinema em Mário de Andrade', 'João Manuel dos Santos Cunha', 48.00, 0, 'S', '2021-02-27 09:49:23'),
(14, 'Liberalismo e Natureza - A Propriedade em John Locke', 'Rodrigo Suzuki Cintra', 45.00, 0, 'S', '2021-02-27 09:49:23'),
(15, 'Linguística Cognitiva - Uma Visão Geral e Aplicada', 'Antônio Suárez Abreu', 43.00, 0, 'S', '2021-02-27 09:49:23'),
(16, 'Lira dos Vinte Anos', 'Álvares de Azevedo, José Emílio Major Neto', 43.00, 0, 'S', '2021-02-27 09:49:23'),
(17, 'Literatulogia', 'Janilto Andrade', 26.00, 0, 'S', '2021-02-27 09:49:23'),
(18, 'Literatura Comparada e Relações Comunitárias, Hoje', 'Benjamin Abdala Jr.', 50.00, 0, 'S', '2021-02-27 09:49:23'),
(19, 'Literatura e Memória Política - Angola. Brasil. Moçambique. Portugal', 'Benjamin Abdala Jr., Rejane Vecchia Rocha e Silva', 52.00, 0, 'S', '2021-02-27 09:49:23'),
(20, 'Literatura Grega: Irradiações', 'Donaldo Schüler', 57.00, 0, 'S', '2021-02-27 09:49:23'),
(21, 'Literatura, História e Política (3a. ed.)', 'Benjamin Abdala Jr.', 65.00, 0, 'S', '2021-02-27 09:49:23'),
(22, 'Livro - Revista do NELE', 'NELE - Núcleo de Estudos do Livro e da Edição/USP', 33.00, 0, 'S', '2021-02-27 09:49:23'),
(23, 'Livro 7/8 - revista do NELE', 'NELE - Núcleo de Estudos do Livro e da Edição/USP', 88.00, 0, 'S', '2021-02-27 09:49:23'),
(24, 'Livro e Liberdade', 'Luciano Canfora', 31.00, 0, 'S', '2021-02-27 09:49:23'),
(25, 'Livro n. 6 - Revista do NELE', 'NELE - Núcleo de Estudos do Livro e da Edição/USP', 88.00, 0, 'S', '2021-02-27 09:49:23'),
(26, 'Livro n.3 - Revista do NELE', 'NELE - Núcleo de Estudos do Livro e da Edição/USP', 53.00, 0, 'S', '2021-02-27 09:49:23'),
(27, 'Livro n.4 - Revista do NELE', 'NELE - Núcleo de Estudos do Livro e da Edição/USP', 55.00, 0, 'S', '2021-02-27 09:49:23'),
(28, 'Livro n.5 - Revista do NELE', 'NELE - Núcleo de Estudos do Livro e da Edição/USP', 77.00, 0, 'S', '2021-02-27 09:49:23'),
(29, 'Livro no Jornal, O', 'Isabel Travancas', 42.00, 0, 'S', '2021-02-27 09:49:23'),
(30, 'Livros e Leituras na Espanha do Século de Ouro', 'Antonio Castillo Gómez', 49.00, 0, 'S', '2021-02-27 09:49:23'),
(31, 'Livros e Subversão - Seis Estudos', 'Sandra Reimão', 52.00, 0, 'S', '2021-02-27 09:49:23'),
(32, 'Livros Proibidos, Ideias Malditas', 'Maria Luiza Tucci Carneiro', 57.00, 0, 'S', '2021-02-27 09:49:23'),
(33, 'Livros, Editoras & Projetos', 'Jerusa Pires Ferreira, Jacó Guinsburg, Plinio Martins Filho, Maria Otilia Bocchini', 30.00, 0, 'S', '2021-02-27 09:49:23'),
(34, 'Lodo', 'Luis Dolhnikoff', 62.00, 0, 'S', '2021-02-27 09:49:23'),
(35, 'Lâmina do Tempo', 'Moacyr Godoy Moreira', 37.50, 0, 'S', '2021-02-27 09:49:23'),
(36, 'Lâmpada da Memória, A', 'John Ruskin', 38.00, 0, 'S', '2021-02-27 09:49:23'),
(37, 'Luci Collin - Antologia Poética (1984-2018)', 'Luci Collin', 39.90, 0, 'S', '2021-02-27 09:49:23'),
(38, 'Lugar, Tempo, Olhar - Arte Brasileira na França Românica', 'Anne Louyot', 75.00, 0, 'S', '2021-02-27 09:49:23'),
(39, 'Lusíadas, Os - Episódios', 'Luís de Camões, Ivan Teixeira', 39.00, 0, 'S', '2021-02-27 09:49:23'),
(40, 'Machado e Rosa - Leituras Críticas', 'Marli Fantini Scarpelli', 85.00, 0, 'S', '2021-02-27 09:49:23'),
(41, 'Macunaíma', 'Mário de Andrade', 310.00, 0, 'S', '2021-02-27 09:49:23'),
(42, 'Maias, Os', 'Eça de Queirós', 83.00, 0, 'S', '2021-02-27 09:49:23'),
(43, 'Males do Tabaco e Outras Peças em um Ato, Os', 'Anton Tchékhov', 34.00, 0, 'S', '2021-02-27 09:49:23'),
(44, 'Males do Tabaco, Os (3a. ed.)', 'Anton Tchékhov', 39.00, 0, 'S', '2021-02-27 09:49:23'),
(45, 'Malhas da Cultura 1, As', 'José Guilherme Pereira Leite', 43.00, 0, 'S', '2021-02-27 09:49:23'),
(46, 'Malhas da Cultura 2, As', 'José Guilherme Pereira Leite', 45.00, 0, 'S', '2021-02-27 09:49:23'),
(47, 'Manuais de Desenho da Escrita, Os', 'Maria Helena Werneck Bomeny', 210.00, 0, 'S', '2021-02-27 09:49:23'),
(48, 'Manual de Versificação Românica Medieval', 'Segismundo Spina', 41.00, 0, 'S', '2021-02-27 09:49:23'),
(49, 'Manual do Estilo Desconfiado', 'Fernando Paixão', 36.00, 0, 'S', '2021-02-27 09:49:23'),
(50, 'Manuel Bandeira e a Música - com Três Poemas Visitados', 'Pedro Marques', 42.00, 0, 'S', '2021-02-27 09:49:23'),
(51, 'Marca do Leviatã, A - Linguagem e Poder em Hobbes', 'Renato Janine Ribeiro', 42.00, 0, 'S', '2021-02-27 09:49:23'),
(52, 'Mariannita Luzzati', 'Gabriel Pérez Barreiro', 41.00, 0, 'S', '2021-02-27 09:49:23'),
(53, 'Marx, Zola e a Prosa Realista', 'Salete de Almeida Cara', 46.00, 0, 'S', '2021-02-27 09:49:23'),
(54, 'MASSAO OHNO, Editor', 'Massao Ohno, Jose Armando Pereira da Silva', 180.00, 0, 'S', '2021-02-27 09:49:23'),
(55, 'Matéria Lítica: Drummond, Cabral, Neruda e Paz', 'Mario Higa', 52.00, 0, 'S', '2021-02-27 09:49:23'),
(56, 'Matinas & Bagatelas', 'Maria do Carmo Campos', 49.00, 0, 'S', '2021-02-27 09:49:23'),
(57, 'Matrizes Impressas do Oral: Conto Russo no Sertão', 'Jerusa Pires Ferreira', 68.00, 0, 'S', '2021-02-27 09:49:23'),
(58, 'Matzá com Moussaká - Histórias de Judeus e Gregos', 'Táki Athanássios Cordás', 52.00, 0, 'S', '2021-02-27 09:49:23'),
(59, 'Máquina Peluda, A', 'Ademir Assunção', 42.00, 0, 'S', '2021-02-27 09:49:23'),
(60, 'Mário, Otávio - Cartas de Mário de Andrade a Otávio Dias Leite', 'Marcos Antonio de Moraes', 42.00, 0, 'S', '2021-02-27 09:49:23'),
(61, 'Medeia', 'Trupersa - Trupe de Tradução de Teatro Antigo, Eurípides', 42.00, 0, 'S', '2021-02-27 09:49:23'),
(62, 'Medicina de Os Lusíadas, A', 'Pedro Nava', 32.00, 0, 'S', '2021-02-27 09:49:23'),
(63, 'Melancolias, Mercadorias: Dorival Caymmi, Chico Buarque, o Pregão de Rua e a Canção Popular-Comercial no Brasil', 'Walter Garcia', 56.00, 0, 'S', '2021-02-27 09:49:23'),
(64, 'Memória Futura', 'Paulo Franchetti', 35.00, 0, 'S', '2021-02-27 09:49:23'),
(65, 'Memórias Biográficas de Pintores Extraordinários', 'William Beckford', 36.00, 0, 'S', '2021-02-27 09:49:23'),
(66, 'Memórias de um Sargento de Milícias', 'Mamede Mustafa Jarouche, Manuel Antônio de Almeida', 42.00, 0, 'S', '2021-02-27 09:49:23'),
(67, 'Memórias Póstumas de Brás Cubas', 'Antonio Medina Rodrigues, Machado de Assis', 39.00, 0, 'S', '2021-02-27 09:49:23'),
(68, 'Memorial de Mogi das Cruzes', 'José Sebastião Witter', 48.00, 0, 'S', '2021-02-27 09:49:23'),
(69, 'Memorial de um Herege', 'Samuel Reibscheid', 45.00, 0, 'S', '2021-02-27 09:49:23'),
(70, 'Mensagem', 'António Apolinário Lourenço, Fernando Pessoa', 41.00, 0, 'S', '2021-02-27 09:49:23'),
(71, 'Meu Fausto (Esboços)', 'Paul Valéry', 49.00, 0, 'S', '2021-02-27 09:49:23'),
(72, 'Milton Hatoum - Itinerário para um Certo Relato', 'Marleine Paula Marcondes e Ferreira de Toledo', 42.00, 0, 'S', '2021-02-27 09:49:23'),
(73, 'Mistério do Leão Rampante, O', 'Rodrigo Lacerda', 92.00, 0, 'S', '2021-02-27 09:49:23'),
(74, 'Mistérios do Dicionário', 'João Alexandre Barbosa', 58.00, 0, 'S', '2021-02-27 09:49:23'),
(75, 'Modernidade entre Tapumes, A', 'Vagner Camilo', 112.00, 0, 'S', '2021-02-27 09:49:23'),
(76, 'Modernização pelo Avesso - Impasses da Representação Literária em Os Contos de Belazarte, de Mário de Andrade', 'Wilson José Flores Jr.', 46.00, 0, 'S', '2021-02-27 09:49:23'),
(77, 'Moeda da Arte, A - A Dinâmica dos Campos Artístico e Econômico no Patrocínio', 'Eduardo Fragoaz', 69.50, 0, 'S', '2021-02-27 09:49:23'),
(78, 'Moleque de Fábrica - Uma Arqueologia da Memória Social', 'José de Souza Martins', 82.00, 0, 'S', '2021-02-27 09:49:23'),
(79, 'Morte aos Papagaios', 'Gustavo Piqueira', 62.00, 0, 'S', '2021-02-27 09:49:23'),
(80, 'Música do Parnaso', 'Manuel Botelho de Oliveira, Ivan Teixeira', 115.00, 0, 'S', '2021-02-27 09:49:23'),
(81, 'Muita Sorte & Pouco Juízo', 'José Roberto de Alencar', 36.00, 0, 'S', '2021-02-27 09:49:23'),
(82, 'Mulher no Escuro, A', 'Cláudia Vasconcellos', 42.00, 0, 'S', '2021-02-27 09:49:23'),
(83, 'Mulheres de Passagem', 'M. A. Amaral Rezende', 41.00, 0, 'S', '2021-02-27 09:49:23'),
(84, 'Museu da Infância Eterna', 'Miguel Sanches Neto', 40.00, 0, 'S', '2021-02-27 09:49:23'),
(85, 'Na Conquista do Brasil', 'Donaldo Schüler', 52.00, 0, 'S', '2021-02-27 09:49:23'),
(86, 'Na Madrugada das Formas Poéticas', 'Segismundo Spina', 36.00, 0, 'S', '2021-02-27 09:49:23'),
(87, 'Na Pureza do Sacrilégio', 'Carlos Cardoso', 58.00, 0, 'S', '2021-02-27 09:49:23'),
(88, 'Na Senda das Noites: Os Quatro Talismãs de Charles Nodier e Les mille et une nuits', 'Christiane Damien', 51.00, 0, 'S', '2021-02-27 09:49:23'),
(89, 'Nações Literárias', 'Wander Melo Miranda', 52.00, 0, 'S', '2021-02-27 09:49:23'),
(90, 'Narciso em Sacrifício - A Poética de Mário de Sá-Carneiro', 'Fernando Paixão', 48.00, 0, 'S', '2021-02-27 09:49:23'),
(91, 'Nas Águas do Mesmo Rio', 'Giselda Leirner', 38.00, 0, 'S', '2021-02-27 09:49:23'),
(92, 'Nas Tramas da Ficção - História, Literatura e Leitura', 'Clóvis Gruner, Cláudio DeNipoti', 52.00, 0, 'S', '2021-02-27 09:49:23'),
(93, 'Nebulosa, A', 'Joaquim Manuel de Macedo', 39.80, 0, 'S', '2021-02-27 09:49:23'),
(94, 'Neguinho', 'Guga Stroeter', 48.00, 0, 'S', '2021-02-27 09:49:23'),
(95, 'Nós e as Palavras', 'Luís Bueno', 62.00, 0, 'S', '2021-02-27 09:49:23'),
(96, 'No Fim das Terras', 'Milton Torres', 76.00, 0, 'S', '2021-02-27 09:49:23'),
(97, 'No Rastro de Afrodite - Plantas Afrodisíacas e Culinária', 'Gil Felippe', 90.00, 0, 'S', '2021-02-27 09:49:23'),
(98, 'Nome do Cuidado, O', 'Leo Lama, Paulo Hersch Rosenbaum', 38.00, 0, 'S', '2021-02-27 09:49:23'),
(99, 'Normas Gerais para os Trabalhos de Grau', 'Segismundo Spina', 28.00, 0, 'S', '2021-02-27 09:49:23'),
(100, 'Notícia Histórica da Vida e das Obras de José Haydn', 'J. Le Breton', 34.00, 0, 'S', '2021-02-27 09:49:23');

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;