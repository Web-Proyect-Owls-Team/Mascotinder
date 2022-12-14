<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registrar nueva Mascota</title>
<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<!-- CSS only -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/login_styles.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<body>

	<%@include file="../templates/banner_interno.html"%>
<section class="h-100 h-custom" style="background-color: #670039;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-8 col-xl-6">
        <div class="card rounded-3">
          <img src="${pageContext.request.contextPath}/images/paws.jpg"
            class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
            alt="Sample photo">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Actualizar información de ${mascota.nombre}</h3>

            <form method="post" action="ActualizarMascotaController" class="px-md-2">

              <div class="form-outline mb-4">
              <input  type="hidden" name="txtId" id="txtId" class="form-control" value ="${mascota.id}"/>
              <label class="form-label" for="txtNombre">Nombre</label>
                <input type="text" name="txtNombre" id="txtNombre" class="form-control" value ="${mascota.nombre}"/>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4">

                  <div class="form-outline datepicker">
                  <label class="form-label" for="txtFechaNacimiento">Edad</label>
                    <input type="number" class="form-control" name="txtFechaNacimiento" id="txtFechaNacimiento" value="${mascota.edad}" required min="1" pattern="^[0-9]+"  max="15"/> <br> <br>
                  </div>

                </div>
                <div class="col-md-6 mb-4">
                  <label class="form-label" for="txtSexo">Sexo</label>
                  <select class="select" name="txtSexo" id="sexo">
                    <option value="Macho">Macho</option>
                    <option value="Hembra">Hembra</option>
                </select>

                </div>
              </div>

              <div class="form-outline mb-4">
              <label class="form-label" for="txtEspecie">Especie</label>
              
              <select name="txtEspecie" id="especie">
                    <option value="Perro">Perro</option>
                    <option value="Gato">Gato</option>
                    <option value="Hammster">Hamster</option>
                    <option value="Ave">Ave</option>
                </select>
              </div>
              <div class="form-outline mb-4">
              <h6 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Copie y pegue las url de las fotos de su mascota</h6>
                 <input type="text" name="txtFoto1" class="form-control" value ="${mascota.foto[0].foto}"><br>
                 <input type="text" name="txtFoto2" class="form-control" value ="${mascota.foto[1].foto}"> <br>
                 <input type="text" name="txtFoto3" class="form-control" value ="${mascota.foto[2].foto}"><br>
               </div>
              	
				
              <input type="submit" class="btn login_btn" value="Actualizar perfil" /> <br>

            </form>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>