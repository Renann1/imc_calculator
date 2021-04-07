<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo IMC</title>
    </head>
    <body>
        <%-- comentario de bloco --%>
        <h2>Calcular IMC</h2>
        
        <div id="div_imc">
            <p>IMC = Indica a massa corpórea</p>
            <form action="calculo.jsp" method="get" target="result">
                Peso: <input type="text" name="peso"><br>
                Altura: <input type="text" name="altura"><br>
                
                <input type="submit" name="enviar" value="Calcular">
            </form>            
        </div>
        <br><br>
        <div id="div_resultado">
            <iframe name="result" width="300" height="200"></iframe>
        </div>
        
    </body>
</html>