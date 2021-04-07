<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="TratarError.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%
           
            try{
            String peso_txt, altura_txt;
            
            float peso, altura;
            peso = 0f;
            altura = 0f;
            
            //receber dados externos    
            peso_txt = request.getParameter("peso");
            altura_txt = request.getParameter("altura");
            
            // converter string para float
            peso = Float.parseFloat(peso_txt);
            altura = Float.parseFloat(altura_txt);
            
            // calcular e exibir IMC
            float imc = peso /(altura * altura);
            out.println ("IMC =" + imc + "<br>");
      
            
            if (imc < 18.5)
            {
              out.println("Você está abaixo do peso");
            }
            else if (imc >= 18.5 && imc < 25)
            {
              out.println("Você esta no peso normal");
            }
              else if (imc >= 25 && imc < 30)
            {
              out.println("Você esta com sobrepeso");
            }
              else if (imc >= 30 && imc < 35)
            {
              out.println("Você esta com obesidade grau 1");
            }
              else if (imc >= 35 && imc < 40)
            {
              out.println("Você esta com obesidade grau 2");
            }
              else if (imc >= 40)
            {
              out.println("Você esta com obesidade grau 2");
            }
        
            }catch(NumberFormatException e){
                out.println("Digite apenas números!");
            }

        %>
    </body>
</html>