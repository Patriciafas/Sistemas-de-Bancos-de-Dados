public class Pessoa{
    private String nome;
    private int idade;

    public Pessoa(){
        this(null, 0);
    }

    public Pessoa (String nome, int idade){
        setNome(nome); 
        setIdade(idade);
    }

    public void setNome(String nome){
        this.nome = nome;
    }
    public String getNome(){
        return this.nome;
    }

    public void setIdade(int idade){
        this.idade = idade;
    }
    public int getIdade(){
        return this.idade;
    }
    
    @Override
    public String toString(){
        return String.format("Pessoa [Nome: %s, Idade: %d]", getNome(), getIdade());
    }
    
        
    

}