<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.poo.Cliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
          <h1>Cliente</h1>
           <%
            try{
            if(request.getParameter("remove")!=null){
                int i = Integer.parseInt(request.getParameter("index"));
                 //remove contatos        
                Cliente.getList().remove(i);
            }
            else if((request.getParameter("add")!=null)){
                String nome = request.getParameter("nome");
                String rg = request.getParameter("rg");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                String endereco = request.getParameter("endereco");
                      Cliente c = new Cliente();
                      c.setNome(nome);
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
            <h2>Novo Cliente</h2>
            <form>
                Nome:
                <input type="text" name="nome" required/><br/>
                RG:
                <input type="text" name="rg"/><br/>
                Email:
                <input type="text" name="email"/><br/>
                Telefone:
                <input type="text" name="telefone"/><br/>
                Endereço:
                <input type="text" name="endereco"/><br/>
                <input type="submit" name="add" value="Adicionar"/>
            </form>
            <h2>Lista de Clientes</h2>
            <table border ="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>RG</th>
                <th>email</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Alteração</th>
                <th>Exclusão</th>
            </tr>         
        <%try{
        int i=0;
        for(Cliente c: Cliente.getList()){%>
        <tr>
            <td><%=i%></td>
            <td><%=c.getNome()%></td>
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
        
    </body>
</html>
