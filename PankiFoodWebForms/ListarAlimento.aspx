<%@ Page Language="C#" Inherits="PankiFoodWebForms.ListarAlimento" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />

	<title>ListarAlimento</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

</head>
<body>
         <h1> Listar Alimentos</h1>
	<form id="form1" runat="server">
        <div class="container">
            <table class="table table-striped table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Descripcion</th>
                        <th>Precio</th>
                    </tr>
                </thead>
                <tbody>
                    <%= GenerarTablaAlimentos() %>
                </tbody>
            </table>
        </div>

	</form>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
