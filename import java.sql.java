import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class CriarTabelas {

    public static void main(String[] args) {
        // Configurações de conexão com o banco de dados
        String url = "jdbc:mysql://localhost:3306/seu_banco_de_dados";
        String usuario = "seu_usuario";
        String senha = "sua_senha";

        // Comandos SQL para criar a tabela "Histórico de Jogos"
        String sqlHistorico = "CREATE TABLE Historico_de_Jogos ("
                            + "jogo_id INT PRIMARY KEY,"
                            + "jogador1_id INT,"
                            + "jogador2_id INT,"
                            + "data_jogo DATE,"
                            + "resultado VARCHAR(10),"
                            + "detalhes TEXT"
                            + ")";

        // Comandos SQL para criar a tabela "Estatísticas"
        String sqlEstatisticas = "CREATE TABLE Estatisticas ("
                               + "estatisticas_id INT PRIMARY KEY,"
                               + "jogador_id INT,"
                               + "partidas_jogadas INT,"
                               + "vitorias INT,"
                               + "empates INT,"
                               + "derrotas INT,"
                               + "gols_marcados INT,"
                               + "gols_sofridos INT"
                               + ")";

        // Comandos SQL para criar a tabela "Head To Head"
        String sqlHeadToHead = "CREATE TABLE Head_To_Head ("
                             + "head_to_head_id INT PRIMARY KEY,"
                             + "jogador1_id INT,"
                             + "jogador2_id INT,"
                             + "vitorias_jogador1 INT,"
                             + "vitorias_jogador2 INT,"
                             + "empates INT"
                             + ")";

        // Comando SQL para criar a tabela "Meu Perfil"
        String sqlMeuPerfil = "CREATE TABLE meu_perfil ("
                            + "perfil_id INT PRIMARY KEY,"
                            + "usuario_id INT,"
                            + "foto_perfil VARCHAR(255),"
                            + "biografia TEXT,"
                            + "localizacao VARCHAR(100),"
                            + "data_nascimento DATE,"
                            + "FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)"
                            + ")";

        try (Connection conexao = DriverManager.getConnection(url, usuario, senha);
             Statement declaracao = conexao.createStatement()) {

            // Executa os comandos SQL para criar as tabelas
            declaracao.executeUpdate(sqlHistorico);
            declaracao.executeUpdate(sqlEstatisticas);
            declaracao.executeUpdate(sqlHeadToHead);
            declaracao.executeUpdate(sqlMeuPerfil);

            System.out.println("Tabelas criadas com sucesso!");

        } catch (SQLException e) {
            System.out.println("Erro ao criar as tabelas: " + e.getMessage());
        }
    }
}