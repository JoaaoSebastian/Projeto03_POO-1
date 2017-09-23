
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.oo.Fornecedor"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <h1>Fornecedores</h1>
    table border ="1">
            <tr>
                <th>índice</th>
                 <th>Empresa</th>
                  <th>Razão Social</th> 
                   <th>CNPJ</th>
                    <th>Email</th>
                     <th>Telefone</th>
                      <th>Endereço</th>
            </tr>
          
            <h2>Novo Fornecedor</h2>
            <form>
                Empresa:<br/>
                <input type="text" name="nome"/>
                Razão Social:<br/>
                <input type="text" name="razao"/>
                CNPJ:<br/>
                <input type="text" name="cnpj"/>
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
