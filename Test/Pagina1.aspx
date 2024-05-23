<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina1.aspx.cs" Inherits="Test.Pagina1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="es">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Calculadora de Notas</title>
    <link rel="stylesheet" type="text/css">
    <style>
        body {
            font-family: Arial, sans-serif;
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

        input[type="number"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        button {
            padding: 10px 15px;
            color: #fff;
            border: none;
            cursor: pointer;
            font-family: Calibri, Arial, sans-serif;
        }

        .calculate-button {
            background-color: #28a745; /* Color verde */
        }

        button:hover {
            background-color: #218838;
        }

        .result {
            margin-top: 20px;
            font-size: 1.2em;
        }

        /* Estilos para el botón de retorno */
        .return-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #dc3545; /* Rojo */
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }

        .return-button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div>
                <img src="img/LOGO-FONDO-BLANCO-JPG.jpg" alt="logo" width="300" height="200">
            </div>
            <h1>Nombre del Alumno: Kevin Canales</h1>
            <div class="form-group">
                <label for="eva1">EVA 1 (7%)</label>
                <asp:TextBox ID="eva1" runat="server" TextMode="Number" Min="0" Max="10" Step="0.01" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="eva2">EVA 2 (7%)</label>
                <asp:TextBox ID="eva2" runat="server" TextMode="Number" Min="0" Max="10" Step="0.01" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="eva3">EVA 3 (14%)</label>
                <asp:TextBox ID="eva3" runat="server" TextMode="Number" Min="0" Max="10" Step="0.01" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="epe1">EPE 1 (7%)</label>
                <asp:TextBox ID="epe1" runat="server" TextMode="Number" Min="0" Max="10" Step="0.01" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="epe2">EPE 2 (14%)</label>
                <asp:TextBox ID="epe2" runat="server" TextMode="Number" Min="0" Max="10" Step="0.01" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="epe3">EPE 3 (21%)</label>
                <asp:TextBox ID="epe3" runat="server" TextMode="Number" Min="0" Max="10" Step="0.01" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="finalExam">Examen Final (30%)</label>
                <asp:TextBox ID="finalExam" runat="server" TextMode="Number" Min="0" Max="10" Step="0.01" Required="true"></asp:TextBox>
            </div>
            <asp:Button ID="calculateButton" runat="server" Text="Calcular Nota Final" OnClick="CalculateGrade" CssClass="calculate-button" />
            <div class="result">
                <asp:Label ID="resultLabel" runat="server"></asp:Label>
            </div>
            <!-- Enlace para volver atrás -->
            <a class="return-button" href="javascript:history.back()">Volver Atrás</a>
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
