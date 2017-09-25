<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.poo.Fornecedor"%>
<%@include file="WEB-INF/menu.jspf" %>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Fornecedor</title>
        <link rel="stylesheet" type="text/css" href="css.css">
    </head>
    <body>
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
                Fornecedor.getList().get(i).setRazao(razao);
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
        <h1>Alterar Fornecedor</h1>
        <form>
            <input type="hidden" name="index" value="<%=i%>">
            <label>Nome:</label>
            <input type="text" name="nome" value="<%=Fornecedor.getList().get(i).getNome()%>"/><br/>
            <label>Razão Social:</label>
            <input type="text" name="razao" value="<%=Fornecedor.getList().get(i).getRazao()%>" /></><br/>
            <label>CNPJ:</label>
            <input type="text" name="cnpj" value="<%=Fornecedor.getList().get(i).getCnpj()%>" /></><br/>
            <label>Email:</label>
            <input type="text" name="email" value="<%=Fornecedor.getList().get(i).getEmail()%>" /></><br/>
            <label>Telefone:</label>
            <input type="text" name="telefone" value="<%=Fornecedor.getList().get(i).getTelefone()%>" /></><br/>
            <label>Endereço:</label>
            <input type="text" name="endereco" value="<%=Fornecedor.getList().get(i).getEndereco()%>" /></><br/>
            <input type="submit" name="mudar" value="Confirmar"/>
        </form>   
    </body>
</html>

