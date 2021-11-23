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
                <h2 class="h2 text-center text-info my-4">Personas</h2>
            </div>
            <div class="col-lg-2"></div>
        </div>
        
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <a href="create.htm" class="btn btn-success my-4 ">Insertar Persona  <i class="bi bi-plus-circle"></i></a>
                <table class="table table-info">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>DNI</th>
                            <th>Nombre</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="persona" items="${lista}">
                        <tr>
                            <td>${persona.id}</td>
                             <td>${persona.dni}</td>
                              <td>${persona.nombre}</td>
                              <td>
                                  <a href="show.htm?id=${persona.id}" class="btn btn-info">Mostrar  <i class="bi bi-eye"></i></a>
                                  <a href="edit.htm?id=${persona.id}"class="btn btn-warning">Editar  <i class="bi bi-pencil-square"></i></a>
                                  <a href="destroy.htm?id=${persona.id}"  class="btn btn-danger">Eliminar  <i class="bi bi-eraser"></i></a>
                              </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-2"></div>
        </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
