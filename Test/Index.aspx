<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Test.Index" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>kevin canales</title>
    <link rel="stylesheet" href="css/StyleSheet1.css" type="text/css">
    <style>
       
        a {
            font-family: Calibri, Arial, sans-serif; 
            display: inline-block;
            text-decoration: none;
            padding: 10px 0; 
            margin-bottom: 10px; 
            position: relative; 
        }

        
        a::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            height: 3px; 
            width: 100%; 
            background-color: transparent; 
            transition: background-color 0.3s ease; 
        }

        
        a:hover::after {
            background-color: #000; 
        }

        
        a[href="Pagina1.aspx"] {
            color: green; /* Calcular epe + eva verde */
        }

        a[href="Pagina2.aspx"] {
            color: black; /* Union de nombre y apellido negro */
        }

        a[href="Pagina3.aspx"] {
            color: red; /* Formulario de contacto rojo */
        }
    </style>
</head>
<body>
    <div>
        <img src="img/LOGO-FONDO-BLANCO-JPG.jpg" alt="logo" width="300" height="200">
    </div>
    <div>
        <h1>kevin canales</h1>
        <!-- Botones de diferentes colores -->
        <div>
            <a href="Pagina1.aspx">Calcular epe + eva</a>
        </div>
        <div>
            <a href="Pagina2.aspx">union de nombre y apellido</a>
        </div>
        <div>
            <a href="Pagina3.aspx">Formulario de contacto</a>
        </div>
    </div>
</body>
</html>
