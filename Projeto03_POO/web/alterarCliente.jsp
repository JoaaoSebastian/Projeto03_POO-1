<%-- 
    Document   : alterarCliente
    Created on : 25/09/2017, 12:50:30
    Author     : vitoria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.poo.Cliente"%>
<%@include file="WEB-INF/menu.jspf" %>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Cliente</title>
        <link rel="stylesheet" type="text/css" href="css.css">
    </head>
    
        <% int i = Integer.parseInt(request.getParameter("index"));
        try{
            if(request.getParameter("mudar") != null){
                String nome = request.getParameter("nome");
                String cpf = request.getParameter("cpf");
                String rg = request.getParameter("rg");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                String endereco = request.getParameter("endereco");
                
                Cliente.getList().get(i).setNome(nome);
                Cliente.getList().get(i).setCpf(cpf);
                Cliente.getList().get(i).setRg(rg);
                Cliente.getList().get(i).setEmail(email);
                Cliente.getList().get(i).setTelefone(telefone);
                Cliente.getList().get(i).setEndereco(endereco);
                String url = "cliente.jsp";
                response.sendRedirect(url);
                
            }
        }catch(Exception ex){
            %>Não foi possivel alterar<%
        }
        %>
        <h1>Alterar Cliente</h1>
        
        <form>
            <input type="hidden" name="index" value="<%=i%>">
                <label>Nome:</label>
                <input type="text" name="nome" value="<%=Cliente.getList().get(i).getNome()%>"/><br/>
                <label>CPF:</label>
                <input type="text" name="cpf" value="<%=Cliente.getList().get(i).getCpf()%>" /></><br/>
                <label>RG:</label>
                <input type="text" name="rg" value="<%=Cliente.getList().get(i).getRg()%>" /></><br/>
                <label>Email:</label>
                <input type="text" name="email" value="<%=Cliente.getList().get(i).getEmail()%>" /></><br/>
                <label>Telefone:</label>
                <input type="text" name="telefone" value="<%=Cliente.getList().get(i).getTelefone()%>" /></><br/>
                <label>Endereço:</label>
                <input type="text" name="endereco" value="<%=Cliente.getList().get(i).getEndereco()%>" /></><br/>
                <input type="submit" name="mudar" value="Confirmar"/>
        </form>   
    </body>
</html>
    

