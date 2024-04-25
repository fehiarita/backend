package navit.api;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class DataConfiguration {
    
    // metodo para fazer conexão com o banco de dados
    @Bean
    public DataSource dataSource(){
        // instanciei um abjeto para fazer a conexao
       DriverManagerDataSource dataSource = new DriverManagerDataSource();
       dataSource.setDriverClassName(null);




       



       




    }
}
