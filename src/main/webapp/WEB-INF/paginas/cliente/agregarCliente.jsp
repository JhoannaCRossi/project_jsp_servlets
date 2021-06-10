<div class="modal fade" id="agregarClienteModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-info text-white">
                <h5 class="modal-title">Agregar Cliente</h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>

            <form action="${pageContext.request.contextPath}/ServletControlador?accion=insertar" method="POST" class="was-validated">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input tpype="text" class="form-control" required name="nombre">
                    </div>
                    <div class="form-group">
                        <label for="apellido">Apellido</label>
                        <input tpype="text" class="form-control" required  name="apellido">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input tpype="email" class="form-control" required  name="email">
                    </div>
                    <div class="form-group">
                        <label for="telefono">Teléfono</label>
                        <input tpype="tel" class="form-control" required  name="telefono">
                    </div>
                    <div class="form-group">
                        <label for="saldo">Saldo</label>
                        <input tpype="number" class="form-control" required  name="saldo" step="any">
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" type="submit">
                        Guardar
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>