<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    </head>
    <body>
        
 <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <h2 class="h2 text-center text-info my-4">Editar Datos de ${lista[0].nombre} </h2>
            </div>
            <div class="col-lg-2"></div>
        </div>
        
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <form method="POST" >
                   
                    <div class="input-group my-4">
                        <label class="input-group-text" for="dni">DNI:</label>
                        <input type="number" class="form-control" name="dni" id="dni" value="${lista[0].dni}" required>
                    </div>
                    
                       <div class="input-group my-4">
                        <label class="input-group-text" for="nombre">Nombre:</label>
                        <input type="text" class="form-control" name="nombre" id="nombre" value="${lista[0].nombre}" required>
                    </div>
                        
                      <div class="input-group">
                          <a  href="index.htm" class="btn btn-secondary mx-4 form-control "><i class="bi bi-arrow-left"></i>     Volver </a>
                          <button class="btn btn-warning mx-4 form-control" type="submit" > Actualizar  <i class="bi bi-arrow-repeat"></i> </button>
                    </div>
             
                </form>
            </div>
            <div class="col-lg-2"></div>
        </div>    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>


