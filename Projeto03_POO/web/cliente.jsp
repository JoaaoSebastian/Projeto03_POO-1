<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.poo.Cliente"%>
<%@include file="WEB-INF/menu.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
        <link rel="stylesheet" type="text/css" href="css.css">
    </head>
    <body>
        <h1>Clientes</h1>
           <%
            try{
            if(request.getParameter("remove")!=null){
                int i = Integer.parseInt(request.getParameter("index"));
                 //remove contatos        
                Cliente.getList().remove(i);
                }
            else if((request.getParameter("add")!=null)){
                String nome = request.getParameter("nome");
                String cpf = request.getParameter("cpf");
                String rg = request.getParameter("rg");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                String endereco = request.getParameter("endereco");
                      Cliente c = new Cliente();
                      c.setNome(nome);
                      c.setRg(cpf);
                      c.setRg(rg);
                      c.setEmail(email);
                      c.setTelefone(telefone);
                      c.setEndereco(endereco);
                      Cliente.getList().add(c);
                  response.sendRedirect(request.getRequestURI());
            }
  
            }catch(Exception ex){
    %>
        <div>Erro ao processar form! </div>
        <%}%>   
        <section id="addCliente">    
            <h2>Adicionar novo Cliente:</h2>
            <form>
                <label>Nome:</label>
                <input type="text" name="nome" required/><br/>
                <label>CPF:</label>
                <input type="text" name="cpf"/><br/>
                <label>RG:</label>
                <input type="text" name="rg"/><br/>
                <label>Email:</label>
                <input type="text" name="email"/><br/>
                <label>Telefone:</label>
                <input type="text" name="telefone"/><br/>
                <label>Endereço:</label>
                <input type="text" name="endereco"/><br/>
                <input type="submit" name="add" value="Adicionar"/>
            </form>
        </section>
        <section id="cliente">
            <table border ="1" cellpadding="5px" cellspacing="0" ID="alter">
            <tr>
                <th>Índice</th>
                <th class="dif">Nome</th>
                <th>CPF</th>
                <th class="dif">RG</th>
                <th>email</th>
                <th class="dif">Telefone</th>
                <th>Endereço</th>
                <th class="dif">Alteração</th>
                <th>Exclusão</th>
            </tr>
         <h2>Lista de Clientes</h2>
            <%try{%>
        <%int i=0;%>
        <%for(Cliente c: Cliente.getList()){%>
        <tr>
            <td><%=i%></td>
            <td><%=c.getNome()%></td>
            <td><%=c.getCpf()%></td>
            <td><%=c.getRg()%></td>
            <td><%=c.getEmail()%></td>
            <td><%=c.getTelefone()%></td>
            <td><%=c.getEndereco()%></td>
            <td>
            <form action="alterarCliente.jsp">
                <input type="hidden" name="index" value="<%=i%>"/>
                <input type="submit" name="change" value="Alterar"/>
            </form>
            </td>
            <td>
            <form>
                <input type="hidden" name="index" value="<%=i++%>"/>
                <input type="submit" name="remove" value="Excluir"/>
            </form>
            </td>
        </tr>
        <%}%>
        <%}catch(Exception ex){%>
            <tr>
                <td colspan="8">
                    Erro ao carregar a lista<%=ex.getMessage()%>
                </td>
                <%}%>
            </tr>
        </table>
        </section>
    </body>
</html>
