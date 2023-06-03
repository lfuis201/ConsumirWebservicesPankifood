<%@ Page Language="C#" Inherits="PankiFoodWebForms.ActualizarAlimento" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>ActualizarAlimento</title>
</head>
<body>
         <h1> Actualizar Alimentos</h1>
    <form id="form2" runat="server">
        <asp:Label id="lblId" runat="server" Text="ID:" AssociatedControlID="txtId" />
        <asp:TextBox id="txtId" runat="server" />
        <br /><br />
        <asp:Label id="lblNombreAct" runat="server" Text="Nombre:" AssociatedControlID="txtNombreAct" />
        <asp:TextBox id="txtNombreAct" runat="server" />
        <br /><br />
        <asp:Label id="lblDescripcionAct" runat="server" Text="Descripcion:" AssociatedControlID="txtDescripcionAct" />
        <asp:TextBox id="txtDescripcionAct" runat="server" />
        <br /><br />
        <asp:Label id="lblPrecioAct" runat="server" Text="Precio:" AssociatedControlID="txtPrecioAct" />
        <asp:TextBox id="txtPrecioAct" runat="server" />
        <br /><br />
        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
    </form>
</body>
</html>
