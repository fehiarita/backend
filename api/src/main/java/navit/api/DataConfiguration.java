package navit.api;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jd;

@Configuration
public class DataConfiguration {
    
    // metodo para fazer conexão com o banco de dados
    @Bean
    public DataSource dataSource(){
       DriverManagerDataSource dataSource = new DriverManagerDataSource
    }
}
