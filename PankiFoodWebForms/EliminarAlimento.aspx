<%@ Page Language="C#" Inherits="PankiFoodWebForms.EliminarAlimento" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>EliminarAlimento</title>
</head>
<body>
     <h1> Eliminar Alimentos</h1>
            
	<form id="form1" runat="server">
            <asp:Label ID="lblId" runat="server" Text="ID del alimento:" />
            <asp:TextBox ID="txtId" runat="server"  AssociatedControlID="txtId"/>
            <br /><br />
            
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
	</form>
</body>
</html>
