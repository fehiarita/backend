CREATE TABLE Historico_de_Jogos (
    jogo_id INT PRIMARY KEY,
    jogador1_id INT,
    jogador2_id INT,
    data_jogo DATE,
    resultado VARCHAR(10),
    detalhes TEXT
);
CREATE TABLE Estatisticas (
    estatisticas_id INT PRIMARY KEY,
    jogador_id INT,
    partidas_jogadas INT,
    vitorias INT,
    empates INT,
    derrotas INT,
    gols_marcados INT,
    gols_sofridos INT
);
CREATE TABLE Head_To_Head (
    head_to_head_id INT PRIMARY KEY,
    jogador1_id INT,
    jogador2_id INT,
    vitorias_jogador1 INT,
    vitorias_jogador2 INT,
    empates INT
);
CREATE TABLE meu_perfil (
    perfil_id INT PRIMARY KEY,
    usuario_id INT,
    foto_perfil VARCHAR(255),
    biografia TEXT,
    localizacao VARCHAR(100),
    data_nascimento DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);
CREATE TABLE pesquisas (
    pesquisa_id INT PRIMARY KEY,
    termo VARCHAR(255),
    postagem_id INT,
    FOREIGN KEY (postagem_id) REFERENCES postagens(postagem_id)
);
CREATE TABLE meus_rankings (
    ranking_id INT PRIMARY KEY,
    usuario_id INT,
    nome_ranking VARCHAR(255),
    posicao INT,
    pontos INT,
    classificacao VARCHAR(255),
    quantidade_jogadores INT,
    data DATE,
    quadra VARCHAR(255),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);
CREATE TABLE meus_torneios (
    torneio_id INT PRIMARY KEY,
    usuario_id INT,
    nome_torneio VARCHAR(255),
    posicao_final INT,
    data_torneio DATE,
    premios TEXT,
    pontos INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);
CREATE TABLE encontre_torneios (
    torneio_id INT PRIMARY KEY,
    pesquisa_id INT,
    nome_torneio VARCHAR(255),
    data_torneio DATE,
    local_torneio VARCHAR(255),
    descricao TEXT,
    lista_torneios TEXT,
    amigos_participantes TEXT,
    FOREIGN KEY (pesquisa_id) REFERENCES pesquisas(pesquisa_id)
);
CREATE TABLE Minhas_Aulas (
    aula_id INT PRIMARY KEY,
    usuario_id INT,
    professor_id INT,
    data_aula DATE,
    hora_inicio TIME,
    hora_fim TIME,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (professor_id) REFERENCES Professores(professor_id)
);
CREATE TABLE Agende_uma_Aula (
    agendamento_id INT PRIMARY KEY,
    usuario_id INT,
    professor_id INT,
    data_aula DATE,
    hora_inicio TIME,
    hora_fim TIME,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (professor_id) REFERENCES Professores(professor_id)
);
CREATE TABLE Agende_sua_reposicao (
    reposicao_id INT PRIMARY KEY,
    usuario_id INT,
    professor_id INT,
    data_reposicao DATE,
    hora_inicio TIME,
    hora_fim TIME,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (professor_id) REFERENCES Professores(professor_id)
);
CREATE TABLE Alugue_uma_Quadra (
    aluguel_id INT PRIMARY KEY,
    quadra_id INT,
    data_aluguel DATE,
    hora_inicio TIME,
    hora_fim TIME,
    FOREIGN KEY (quadra_id) REFERENCES Quadras(quadra_id)
);
CREATE TABLE Reserve_um_horario_de_Clube (
    reserva_id INT PRIMARY KEY,
    horario_clube_id INT,
    data_reserva DATE,
    hora_inicio TIME,
    hora_fim TIME,
    FOREIGN KEY (horario_clube_id) REFERENCES Horarios_Clube(horario_clube_id)
);
CREATE TABLE Pagamentos (
    pagamento_id INT PRIMARY KEY,
    usuario_id INT,
    tipo_pagamento VARCHAR(100),
    valor DECIMAL(10, 2),
    data_pagamento DATE,
    status VARCHAR(50)
);
CREATE TABLE Notificacoes (
    notificacao_id INT PRIMARY KEY,
    usuario_id INT,
    mensagem TEXT,
    data_envio DATETIME,
    status VARCHAR(50)
);
CREATE TABLE Painel_de_Jogos (
    painel_id INT PRIMARY KEY,
    jogo_id INT,
    data_jogo DATE,
    hora_jogo TIME,
    local_jogo VARCHAR(255),
    detalhes TEXT
);
CREATE TABLE Comentarios (
    comentario_id INT PRIMARY KEY,
    usuario_id INT,
    postagem_id INT,
    texto TEXT,
    data_comentario DATETIME,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (postagem_id) REFERENCES Postagens(postagem_id)
);
CREATE TABLE Respostas_Comentarios (
    resposta_id INT PRIMARY KEY,
    usuario_id INT,
    comentario_id INT,
    texto TEXT,
    data_resposta DATETIME,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (comentario_id) REFERENCES Comentarios(comentario_id)
);
CREATE TABLE Comentarios_Removidos (
    comentario_removido_id INT PRIMARY KEY,
    postagem_id INT,
    usuario_id INT,
    texto TEXT,
    data_remocao DATETIME,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (postagem_id) REFERENCES Postagens(postagem_id)
);
CREATE TABLE Curtidas_Comentarios (
    curtida_comentario_id INT PRIMARY KEY,
    usuario_id INT,
    comentario_id INT,
    data_curtida DATETIME,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (comentario_id) REFERENCES Comentarios(comentario_id)
);
CREATE TABLE Postagens_Imagens (
    postagem_imagem_id INT PRIMARY KEY,
    usuario_id INT,
    legenda TEXT,
    data_postagem DATETIME,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id)
);
CREATE TABLE Curtidas_Postagens_Imagens (
    curtida_postagem_imagem_id INT PRIMARY KEY,
    usuario_id INT,
    postagem_imagem_id INT,
    data_curtida DATETIME,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (postagem_imagem_id) REFERENCES Postagens_Imagens(postagem_imagem_id)
);
