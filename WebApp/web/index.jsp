<%-- 
    Document   : index
    Created on : 31-jul-2018, 18:34:01
    Author     : Fab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="WebApp.servlet.index"%>
  

  <!DOCTYPE html>
<html>
  <head>
    <title>Cobros</title>
         <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' href='css/bootstrap.min.css' />
  </head>

  <body>



    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="index.html">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      
    </nav>

<div class="container">
    <div class="row justify-content-center">
      <div class="p-5">
        <h1>Monedas de cobro</h1>
      </div>

          <div class="container">
  <div class="row justify-content-center">
      <form>
        <table id="example" class="table  table-hover display">
  <thead>
    <tr >
      <th scope="col">Moneda</th>
      <th scope="col">Cantidad</th>
      <th scope="col">Total</th>
      
    </tr>
  </thead>
  <tbody>
      
  
        <tr >
          <td>Q200</td>
          <td> <input type="number" class="form-control" id="m_200" value="0" min="0">    </td>
          <td><div id="r_200" value="0"></td>
        </tr>
        <tr >
          <td>Q100</td>
          <td> <input type="number" class="form-control" id="m_100" value="0" min="0">    </td>
          <td><div id="r_100" value="0"></td>
        </tr>
        
         <tr >
          <td>Q50</td>
          <td> <input type="number" class="form-control" id="m_50" value="0" min="0">    </td>
          <td><div id="r_50" value="0"></td>
        </tr>
        
        <tr >
          <td>Q20</td>
          <td> <input type="number" class="form-control" id="m_20" value="0" min="0">    </td>
          <td><div id="r_20" value="0"></td>
        </tr>
        
        <tr >
          <td>Q10</td>
          <td> <input type="number" class="form-control" id="m_10" value="0" min="0">    </td>
          <td><div id="r_10" value="0"></td>
        </tr>
        
        <tr >
          <td>Q5</td>
          <td> <input type="number" class="form-control" id="m_5" value="0" min="0">    </td>
          <td><div id="r_5" value="0"></td>
        </tr>
        
         <tr >
          <td>Q1</td>
          <td> <input type="number" class="form-control" id="m_1" value="0" min="0">    </td>
          <td><div id="r_1" value="0"></td>
        </tr>
        
         <tr >
          <td>Q0.5</td>
          <td> <input type="number" class="form-control" id="m_c50" value="0" min="0">    </td>
          <td><div id="r_c50" value="0"></td>
        </tr>
        
         <tr >
          <td>Q0.25</td>
          <td> <input type="number" class="form-control" id="m_c25" value="0" min="0">    </td>
          <td><div id="r_c25" value="0"></td>
        </tr>
        
         <tr >
          <td>Q0.10</td>
          <td> <input type="number" class="form-control" id="m_c10" value="0" min="0">    </td>
          <td><div id="r_c10" value="0"></td>
        </tr>
        
         <tr >
          <td>Q0.05</td>
          <td> <input type="number" class="form-control" id="m_c5" value="0" min="0">    </td>
          <td><div id="r_c5" value="0"></td>
        </tr>
        
         <tr >
          <td>Q0.01</td>
          <td> <input type="number" class="form-control" id="m_c1" value="0" min="0">    </td>
          <td><div id="r_c1" value="0"></td>
        </tr>
        <tr >
            <td><b>Total</b></td>
            <td></td>
          <td><div id="total" value="0"></td>
        </tr>
        
  
  </tbody>
</table>
        <div class="text-center">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#respuesta">Guardar</button>

        </div>
          <input id="entrada" type ="hidden" value = "<%= request.getParameter("monto")%>"> </input>
          
  </form>      
</div>
</div>  
     
              
<div class="modal" tabindex="-1" role="dialog" id = "respuesta">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Detalle de cobro</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <p>Monto: Q <a id="monto"></a> </p>
          <p>Abonado: Q <a id="abonado"></a> </p>
          <p>Vuelto: Q <a id="vuelto"></a> </p>
          <p><a id="resta"></a> </p>
      </div>
      <div class="modal-footer">
        <div id= "aceptar" onclick="Comprobar()" type="btn btn-success" class="btn btn-primary">Aceptar</div>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Volver</button>
      </div>
    </div>
  </div>
</div>  
              
    <footer class="footer">
        <div class="container"> 
            <span class="text-muted">  <a>&nbsp; </a> </span>
      </div>
    </footer>
        
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
   
    
</html>

