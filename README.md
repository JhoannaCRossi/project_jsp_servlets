# project_jsp_servlets
Aplicacion web para el control de clientes deudores

## Propósito
ESte proyecto esta basado en una estructura cliente(peticiones)-servlet(controlador-MVC)-datos(logica DAO, DTO o VO)


Al cargar la app hace refresh y llama al servletcontrolador, el controlador a su vez hace un redireccionamiento hacia en jspclientes
observamos la informacion de la base de datos, conectando asi correctamente las capas de la app (desde la capa de presentación aplicando mvc, en el servlet controlador 
solamente recuperamos la información de la capa de dtos apoyandonos de la clase cliente jdbc y regresando un listado de objetos de tipo cliente
aplicando el patron de diseño DTO(data transfer object) o Value Object) 
esta informacion que se ha recuperado se comparte en algun alcance y se reenvia la información hacia el jsp clientes.

Con un diseño MVC control de clientes deudores, cuenta con un CRUD en java, que te permite hacer las 4 operaciones con facilidad.

El diseño esta implementado con el framework de boostrap.

Incursione en librerias de edicion de formatos como lo es @taglib, como también reforse el uso de sessiones, envio y recepcion de datos por medio de request y response con los servlets, y el expression languaje para interactuar con los datos sin importar el alcance de los atributos.

## Tecnologias

    Maven
    Hibernate
    JSP
    JSTL
    Servlets
    Hibernate maven plugin

Apunte el navegador en http: //localhost:8080/Control_de_clientes/index.jsp
