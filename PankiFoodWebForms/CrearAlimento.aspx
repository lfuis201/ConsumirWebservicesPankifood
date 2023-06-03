<%@ Page Language="C#" Inherits="PankiFoodWebForms.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Default</title>
</head>
<body>
         <h1> Crear Alimentos</h1>
	<form id="form1" runat="server">
		
        <asp:Label id="lblNombre" runat="server" Text="Nombre:" AssociatedControlID="txtNombre" />
        <asp:TextBox id="txtNombre" runat="server" />
        <br /><br />
        
        <asp:Label id="lblDescripcion" runat="server" Text="Descripcion:" AssociatedControlID="txtDescripcion" />
        <asp:TextBox id="txtDescripcion" runat="server" />
        <br /><br />
            
        <asp:Label id="lblPrecio" runat="server" Text="Precio:" AssociatedControlID="txtPrecio" />
        <asp:TextBox id="txtPrecio" runat="server" />
        <br /><br />
        
         <asp:Button id="button1" runat="server" Text="Crear" OnClick="button1Clicked" />
	</form>
        
    
        
     
</body>
</html>
