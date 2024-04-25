CREATE TABLE Historico_de_Jogos (
    jogo_id INT PRIMARY KEY,
    jogador1_id INT,
    jogador2_id INT,
    data_jogo DATE,
    resultado VARCHAR(10),
    detalhes TEXT
);