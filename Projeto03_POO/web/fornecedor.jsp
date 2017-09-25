
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.poo.Fornecedor"%>
<%@include file="WEB-INF/menu.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedores</title>
        <link rel="stylesheet" type="text/css" href="css.css">
    </head>
    <body>
          <h1>Fornecedores</h1>
           <%
            try{
            if(request.getParameter("remove")!=null){
                int i = Integer.parseInt(request.getParameter("index"));
                 //remove contatos        
                Fornecedor.getList().remove(i);
            }
            else if((request.getParameter("add")!=null)){
                String nome = request.getParameter("nome");
                String razao = request.getParameter("razao");
                String cnpj = request.getParameter("cnpj");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                String endereco = request.getParameter("endereco");
                    Fornecedor c = new Fornecedor();
                    c.setNome(nome);
                    c.setRazao(razao);
                    c.setCnpj(cnpj);
                    c.setEmail(email);
                    c.setTelefone(telefone);
                    c.setEndereco(endereco);
                    Fornecedor.getList().add(c);
                    response.sendRedirect(request.getRequestURI());
            }
    
            }catch(Exception ex){
                 %><div>Erro ao processar form! </div>
            <%}%>
            <section id="addCliente">
            <h2>Novo Fornecedor</h2>
            <form>
                <label>Empresa:</label>
                <input type="text" name="nome" required/><br/>
                <label>Razão Social:</label>
                <input type="text" name="razao"/><br/>
                <label>CNPJ:</label>
                <input type="text" name="cnpj" /><br/>
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
         <h2>Lista de Fornecedores</h2>
            <table border ="1">
            <tr>
                <th>Índice</th>
                <th>Empresa</th>
                <th>Razão Social</th> 
                <th>CNPJ</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Alteração</th>
                <th>Exclusão</th>
            </tr>
            <%try{%>
        <%int i=0;%>
        <%for(Fornecedor f: Fornecedor.getList()){%>
        <tr>
            <td><%=i%></td>
            <td><%=f.getNome()%></td>
            <td><%=f.getRazao()%></td>
            <td><%=f.getCnpj()%></td>
            <td><%=f.getEmail()%></td>
            <td><%=f.getTelefone()%></td>
            <td><%=f.getEndereco()%></td>
            <td>
            <form action = "alterarFornecedor.jsp">
                <input type="hidden" name="index" value="<%=i%>"/>
                <input type="submit" name="change" value="Alterar"/>
            </form>
            </td>
            <td>
            <form>
                <input type="hidden" name="index" value="<%=i++%>"/>
                <input type="submit" name="remove" value="Excluir"/>
            </form>
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
