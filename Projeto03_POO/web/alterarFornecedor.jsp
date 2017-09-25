<%-- 
    Document   : alterarCliente
    Created on : 25/09/2017, 12:50:30
    Author     : vitoria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.poo.Fornecedor"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Fornecedor</title>
    </head>
    
        <% int i = Integer.parseInt(request.getParameter("index"));
        try{
            if(request.getParameter("mudar") != null){
                String nome = request.getParameter("nome");
                String razao = request.getParameter("razao");
                String cnpj = request.getParameter("cnpj");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                String endereco = request.getParameter("endereco");
                
                Fornecedor.getList().get(i).setNome(nome);
                Fornecedor.getList().get(i).setCnpj(cnpj);
                Fornecedor.getList().get(i).setEmail(email);
                Fornecedor.getList().get(i).setTelefone(telefone);
                Fornecedor.getList().get(i).setEndereco(endereco);
                String url = "fornecedor.jsp";
                response.sendRedirect(url);                
                
            }
        }catch(Exception ex){
            %>Não foi possivel alterar<%
        }
        %>
        <h1>Alterar Cliente</h1>
        <form>
            <input type="hidden" name="index" value="<%=i%>">
            Nome:
            <input type="text" name="nome" value="<%=Fornecedor.getList().get(i).getNome()%>"/><br/>
            Razão:
            <input type="text" name="razao" value="<%=Fornecedor.getList().get(i).getRazao()%>" /></><br/>
            CNPJ:
            <input type="text" name="cnpj" value="<%=Fornecedor.getList().get(i).getCnpj()%>" /></><br/>
            Email:
            <input type="text" name="email" value="<%=Fornecedor.getList().get(i).getEmail()%>" /></><br/>
            Telefone:
            <input type="text" name="telefone" value="<%=Fornecedor.getList().get(i).getTelefone()%>" /></><br/>
            Endereço:
            <input type="text" name="endereco" value="<%=Fornecedor.getList().get(i).getEndereco()%>" /></><br/>
            <input type="submit" name="mudar" value="Confirmar"/>
        </form>       
    </body>
</html>
