<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_AR"/>

<section id="clientes">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <h4>Listado de Clientes</h4>
                </div>
                <table class="table table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th>#</th>
                            <th>Nombre</th>
                            <th>Saldo</th>
                            <th></th>
                        </tr>
                            
                    </thead>
                    <tbody>
                        <!--iteramos cad elemento de la lista de clientes-->
                        <c:forEach var="cliente" items="${listaClientes}" varStatus="status">
                            <tr>
                                <td>${status.count}</td>
                                <td>${cliente.nombre} ${cliente.apellido}</td>
                                <td><fmt:formatNumber value="${cliente.saldo}" type="currency" /></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/ServletControlador?accion=editar&idCliente=${cliente.idCliente}"
                                       class="btn btn-secondary">
                                        <i class="fas fa-angle-double-right"></i>Editar
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <!--Tarjet para los totales-->
            <div class="col-md-4">
                <div class="card text-white bg-danger text-center mb-3">
                    <div class="card-body">
                        <h3>Salto Total</h3>
                        <h4 class="display-4">
                            <fmt:formatNumber value="${saldoTotal}" type="currency"/>
                        </h4>
                    </div>
                </div>
                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Total Clientes</h3>
                        <h4 class="display-4">
                            <i class="fas fa-users"></i> ${totalClientes}
                        </h4>
                    </div>
                </div>
            </div>
            <!--fin de totales-->
        </div>
    </div>
</section>
<!--Agregar cliente Modal-->
<jsp:include page="/WEB-INF/paginas/cliente/agregarCliente.jsp"/>