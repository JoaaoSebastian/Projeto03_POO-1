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
        <title>Alterar Cliente</title>
    </head>
    
        <% int i = Integer.parseInt(request.getParameter("index"));
        try{
            if(request.getParameter("mudar") != null){
                String nome = request.getParameter("nome");
                String rg = request.getParameter("rg");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                String endereco = request.getParameter("endereco");
                
                Cliente.getList().get(i).setNome(nome);
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
    </body>
</html>
