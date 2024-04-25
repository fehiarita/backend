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
