<%-- 
    Document   : processadados
    Created on : 14/09/2021, 10:22:15
    Author     : jotap
--%>

<%@page import="javafx.scene.control.CheckBox"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sugestões</title>
    </head>
    <body>
        
        
        Nome Aluno(a): <%= request.getParameter("nome")%> <br/>
        Bairro onde mora : <%= request.getParameter("selecionarbairro")%> <br/>
        Matriculado no: <%= request.getParameter("semestreatual")%> semestre <br/>

        
        <%
         
        String nome = request.getParameter("nome"); 
        
        String bairro = request.getParameter("selecionarbairro");
        
        String semestre = request.getParameter("semestreatual"); 
        
        String curso = request.getParameter("atualizacao");
        
        
         if(bairro != null && bairro.equals("AF")){
        
            out.println("<p>" + "Ônibus que passam no Anália Franco:" + "<br/>" + "Metrô Belem 141" + "<br/>" + "Jd. Bonifácio" + "<br/>" + "Lotação no Term. Carrão" + "</p>" + "<br/>");

         } else if (bairro != null && bairro.equals("SMP")){
        
            out.println("<p>" + "Ônibus que passam no sÃO Miguel Paulista:" + "<br/>" + "489 > 825" + "<br/>" + "248 > 825" + "<br/>" + "489 > 038" + "</p>" + "<br/>");
         
       
         }else{
            
            out.println("<p>" + "Você não escolheu um bairro"  + "</p>" + "<br/>");
         }
               
             if(semestre.equals("1") || semestre.equals("2")){
        
                    out.println("<p>" + "Biblioteca e Labs" + "<br/>" + 
                    "Como funciona a Biblioteca e o Lab.:" + "<br/>" + 
                    "A biblioteca funciona das 10:00 às 22:00" + "<br/>" + 
                    "O Lab. de informática é de uso livre até às 19:20"  + "</p>" + "<br/>");
        
         
        
             } else if (semestre.equals("8") || semestre.equals("7")){
        
        
                    out.println("<p>" + "Pos-Graduação" + "<br/>" +
                    "É muito bom. Veja cursos de pós-graduação que são oferecidos atualmente, suponhamos: Informática na Educação, Engenharia de Websites e Master Business in Information Systems"  + "</p>" + "<br/>");

        
             } if (semestre.equals("3") || semestre.equals("4")){
        
                    out.println("<p>" + "Matérias EAD e Workshops" + "<br/>" +
                     "Como funciona as matérias EAD e como realizar Workshops.:" + "<br/>" +
                     "As matérias EAD tem o prazo especificado pelo professor, e termina no final do semestre, os Workshops podem ser realizados durante o semestre fora da faculdade" + "</p>" + "<br/>");

             }if (semestre.equals("5") || semestre.equals("6")){
        
                    out.println("<p>" + "Atividades Complementares e TCC" + "<br/>" +
                    "As atividades complementares devem ser preenchidas até o término do curso, e o TCC começa a ser feito a partir desse semestre.:" + "<br/>" +
                    "Você pode obter mais informações no portal do Aluno e com os professores responsáveis pelo seu Curso e TCC." + "</p>" + "<br/>");
             }
       
   
        if (curso != null && curso.equals("sim")){
        
        out.println("<p>" + "Cursos de atualização na UNICSUL, por exemplo, mostre:" + "<br/>" +
        "C#.NET e o processamento de BDs, Desenvolvimento Flutter, Curso React e Vue, Spring Web MVC" + "</p>" + "<br/>");
        
        }else{
        
            out.println("<p>" + "Pelo visto não deseja ter um curso de atualização" + "</p>");
        }
        
        %>
        
       
     
       
        
        
    </body>
</html>
