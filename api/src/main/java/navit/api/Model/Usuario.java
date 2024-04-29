package navit.api.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;


// notação poderosa por gerar de forma automatica de metodos como ToString, equals, hashCode, getter e setter
@Data 
// estabelece a ligação entre o modelo de objetos da sua aplicação e as tabelas do banco de dados
@Entity
@Table(name = "usuario")
public class Usuario {
    @Id
    private long id;
    private String nome;
    private String email;

    
    

}
