package br.com.fatec.poo;

import java.util.ArrayList;

public class Fornecedor {
   private String nome;
   private String razao;
   private String cnpj;
   private String email;
   private String telefone;
   private String endereco;
   
   public static ArrayList<Fornecedor> list;
public static ArrayList<Fornecedor> getList(){
    if(list==null){
    list = new ArrayList<>();
    Fornecedor f1 =new Fornecedor();
    f1.setNome("Exemplo");
    f1.setRazao("Exemplo LTDA");
    f1.setCnpj("XX.XXX.XXX/XXX-XX");
    f1.setEmail("exemplo@gmail.com");
    f1.setTelefone("XX X XXXX-XXXX");
    f1.setEndereco("Rua:XXXX, Numero:XXX, Complemmento: XX");
    list.add(f1);
    }
return list;
}

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setRazao(String razao) {
        this.razao = razao;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
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

    public String getNome() {
        return nome;
    }

    public String getRazao() {
        return razao;
    }

    public String getCnpj() {
        return cnpj;
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
}