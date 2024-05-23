<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina2.aspx.cs" Inherits="Test.Pagina2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        body {
            font-family: Calibri, Arial, sans-serif;
        }

        .container {
            max-width: 500px;
            margin: auto;
            padding: 20px;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px; /* Espacio entre los campos de texto */
        }

        button {
            padding: 10px 15px;
            color: #fff;
            border: none;
            cursor: pointer;
            font-family: Calibri, Arial, sans-serif;
            margin-right: 10px;
            border-radius: 5px;
        }

        .concatenate-button {
            background-color: #28a745; /* Color verde */
        }

        .return-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #dc3545; /* Color rojo */
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 10px; /* Espacio entre el botón y el resultado */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div>
                <img src="img/LOGO-FONDO-BLANCO-JPG.jpg" alt="logo" width="300" height="200">
            </div>
            <div>
                <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre" Required="true"></asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="txtApellido" runat="server" placeholder="Apellido" Required="true"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnConcatenar" runat="server" Text="Concatenar" OnClick="ConcatenarNombres" CssClass="concatenate-button" />
            </div>
            <div>
                <asp:Label ID="lblResultado" runat="server"></asp:Label>
            </div>
            <div>
                <asp:Button ID="btnVolver" runat="server" Text="Volver Atrás" CssClass="return-button" OnClick="VolverAtras" />
            </div>
        </div>
    </form>
</body>
</html>
