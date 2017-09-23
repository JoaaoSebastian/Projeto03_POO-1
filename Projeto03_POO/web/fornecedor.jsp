
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.poo.Fornecedor"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <h1>Fornecedores</h1>
           <%
            try{
            if(request.getParameter("remove")!=null){
    int i = Integer.parseInt(request.getParameter("index"));
     //remove contatos        
    Fornecedor.getList().remove(i);}
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
                  response.sendRedirect(request.getRequestURI());}
    
            }catch(Exception ex){
    %>
        <div>Erro ao processar form! </div>
    <%}%>
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
                <input type="text" name="nome"/><br/>
                Razão Social:
                <input type="text" name="razao"/><br/>
                CNPJ:
                <input type="text" name="cnpj"/><br/>
                Email:
                <input type="text" name="email"/><br/>
                Telefone:
                <input type="text" name="telefone"/><br/>
                Endereço:
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
