package br.com.fatec.poo;

import java.util.ArrayList;

public class Cliente {
   private String nome;
   private String rg;
   private String cpf;
   private String email;
   private String telefone;
   private String endereco;
   
   public static ArrayList<Cliente> list;
public static ArrayList<Cliente> getList(){
    if(list==null){
    list = new ArrayList<>();
    Cliente c1 =new Cliente();
    c1.setNome("fulano");
    c1.setRg("88.888.888-8");
    c1.setEmail("fulano@gmail.com");
    c1.setTelefone("13 9 8888-8888");
    c1.setEndereco("Rua-888");
    list.add(c1);
    Cliente c2 =new Cliente();
    c2.setNome("fulano");
    c2.setRg("88.888.888-8");
    c2.setEmail("fulano@gmail.com");
    c2.setTelefone("13 9 8888-8888");
    c2.setEndereco("Rua-888");
    list.add(c2);
    Cliente c3 =new Cliente();
    c3.setNome("fulano");
    c3.setRg("88.888.888-8");
    c3.setEmail("fulano@gmail.com");
    c3.setTelefone("13 9 8888-8888");
    c3.setEndereco("Rua-888");
    list.add(c3);
    }
return list;
}

    public String getNome() {
        return nome;
    }

    public String getRg() {
        return rg;
    }

    public String getCpf() {
        return cpf;
    }

    public String getEmail() {
        return email;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
   
}
