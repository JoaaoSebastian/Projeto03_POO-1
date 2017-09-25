<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <style>
            h4{
                margin-top:0px;
                margin-left: 750px;
                padding: 0.2%;
                background-color:rgb(0,0,0);
                text-align: center;
                width: 23%;
                height: 50%;
                float: left;
                color: #fff;
            }
            p{
                background-color:rgb(0,0,0);
                width: 15%;
                margin-top:20px;
                text-align:center;
                font-weight:bold;
                margin-left:820px;
                font:45px Verdana, Arial, Helvetica, sans-serif;
                color: red;
            }
            ul.nav{
                margin:0;
                padding:0;
                margin-left:850px;
                width:99%;
                height:30px;
                margin-top:200px;
                position:absolute;
                
            }
            ul.nav li{
                list-style:none;	
                display:inline;
            }
            ul.nav li a{
                float:left;
                width:7.0em;
                font:0.98em  Verdana, Arial, Helvetica, sans-serif;
                background: rgb(0, 0, 0);
                color:#fff;
                text-align:center;
                padding:0  0.3em 0.3em  0;
                text-decoration:none;
            }
            ul.nav a:hover{
                background:rgb(255, 255, 255);
                color:rgb(0, 0, 0);
                border-color:rgb(0,0,0);
	}
            body {
                background-color:rgb(115, 115, 115);
                 }
        </style>
    </head>
    <body>
        <p align ="center">Projeto 03</p>
        <ul class="nav">
            <li><a href="cliente.jsp">Lista de Clientes</a></li>
            <li><a href="fornecedor.jsp">Lista de Fornecedores</a></li>
        </ul>
        <h4>João Victor, Leonardo Umbelino e Vitoria Nadejda</h4>
    </body>
 
</html>
