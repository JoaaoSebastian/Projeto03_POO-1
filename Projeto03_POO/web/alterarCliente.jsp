<%-- 
    Document   : alterarCliente
    Created on : 25/09/2017, 12:50:30
    Author     : vitoria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.poo.Cliente"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <% int i = Integer.parseInt(request.getParameter("index"));
        %><%=i%><%
        try{
            if(request.getParameter("mudar") != null){
                %>aoee<%
            }
        }catch(Exception ex){
            %>Não foi possivel alterar<%
        }
        %>
        <h1>Alterar Cliente</h1>
        <form>
                Nome:
                <input type="text" name="nome" value="<%=Cliente.getList().get(i).getNome()%>"/><br/>
                RG:
                <input type="text" name="rg" value="<%=Cliente.getList().get(i).getRg()%>" /></><br/>
                Email:
                <input type="text" name="email" value="<%=Cliente.getList().get(i).getEmail()%>" /></><br/>
                Telefone:
                <input type="text" name="telefone" value="<%=Cliente.getList().get(i).getTelefone()%>" /></><br/>
                Endereço:
                <input type="text" name="endereco" value="<%=Cliente.getList().get(i).getEndereco()%>" /></><br/>
                <input type="submit" name="mudar" value="Confirmar"/>
        </form>   
    

