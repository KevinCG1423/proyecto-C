<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina3.aspx.cs" Inherits="Test.Pagina3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Formulario</title> 
    <link rel="stylesheet" type="text/css">
    <style>
        body {
            font-family: Calibri, Arial, sans-serif;
            margin: 20px;
        }

        .container {
            max-width: 500px;
            margin: auto;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        button {
            padding: 10px 15px;
            color: #fff;
            border: none;
            cursor: pointer;
            font-family: Calibri, Arial, sans-serif;
            border-radius: 5px;
        }

        .send-button {
            background-color: #28a745; /* Color verde */
            margin-right: 10px;
        }

        .return-button {
            background-color: #dc3545; /* Color rojo */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div>
                <img src="img/LOGO-FONDO-BLANCO-JPG.jpg" alt="logo" width="300" height="200">
            </div>
            <div class="form-group">
                <label for="txtNombre">Nombre:</label>
                <input type="text" id="txtNombre" runat="server" required />
            </div>
            <div class="form-group">
                <label for="txtApellido">Apellido:</label>
                <input type="text" id="txtApellido" runat="server" required />
            </div>
            <div class="form-group">
                <label for="txtCelular">Celular:</label>
                <input type="text" id="txtCelular" runat="server" required />
            </div>
            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <input type="email" id="txtEmail" runat="server" required />
            </div>
            <div class="form-group">
                <label for="txtDescripcion">Descripción del problema:</label>
                <textarea id="txtDescripcion" runat="server" required></textarea>
            </div>
            <div>
                <button type="submit" class="send-button">Enviar</button>
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" CssClass="send-button" />
                <button type="button" class="return-button" onclick="goBack()">Volver Atrás</button>
            </div>
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>

    <script>
        // Función para retroceder en la historia del navegador
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>
