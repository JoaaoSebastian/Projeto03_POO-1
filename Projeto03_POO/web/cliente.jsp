<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.oo.Cliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <h1>Cliente</h1>
    table border ="1">
            <tr>
                <th>índice</th>
                 <th>Nome</th>
                   <th>RG</th>
                    <th>email</th>
                     <th>Telefone</th>
                      <th>Endereço</th>
            </tr>
          
            <h2>Novo Cliente</h2>
            <form>
                Nome:<br/>
                <input type="text" name="nome"/>
                RG:<br/>
                <input type="text" name="rg"/>
                Email:<br/>
                <input type="text" name="email"/>
                Telefone:<br/>
                <input type="text" name="telefone"/>
                Endereço:<br/>
                <input type="text" name="endereco"/><br/>
                <input type="submit" name="add" value="adcionar"/>
            </form>
         <h2>lista</h2>
            <%try{%>
        <%int i=0;%>
        <%for(Cliente c: Cliente.getList()){%>
        <tr>
            <td><%=i%></td>
            <td><%=c.getNome()%></td>
             <td><%=c.getRg()%></td>
              <td><%=c.getEmail()%></td>
               <td><%=c.getTelefone()%></td>
                <td><%=c.getEndereco()%></td>
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
            <td colspan="5">
                Erro ao carregar a lista<%=ex.getMessage()%>
            </td>
            <%}%>
        </table>
        </tr>
    </body>
</html>