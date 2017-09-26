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
    c1.setNome("Exemplo");
    c1.setRg("XX-XXX-XXX-X");
    c1.setCpf("XXX.XXX.XXX-XX");
    c1.setEmail("exemplo@gmail.com");
    c1.setTelefone("XX X XXXX-XXXX");
    c1.setEndereco("Cidade, Rua, n°, complemento");
    list.add(c1);
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
