+-    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Conta Pagar</title>  
      
      
    <scpipt>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.cp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else if (document.cadastro.cp_valorcontaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
		 }else if (document.cadastro.cp_datavencimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo taxa'; 
         }else if (document.cadastro.cp_datarecebimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
         }else if (document.cadastro.cp_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo das observaçoes';  
         }else {  
            document.cadastro.action='cadastrar_contapagar.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.cp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else {  
            document.cadastro.action='consultar_contapagar.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
        
         if (document.cadastro.cp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else if (document.cadastro.cp_valorcontaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
		 }else if (document.cadastro.cp_datavencimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo taxa'; 
         }else if (document.cadastro.cp_datarecebimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
         }else if (document.cadastro.cp_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo das observaçoes';  
         }else {  
            document.cadastro.action='cadastrar_contapagar.jsp';  
            document.cadastro.submit();  
         }    
      } else if (par == 'excluir'){  
     
         if (document.cadastro.cp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else {  
            document.cadastro.action='excluir_contapagar.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_contapagar.jsp';  
         document.cadastro.submit();  
      }  
   }  
     
   </scpipt>  
     
   <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
   <style type="text/css">  
   <!--  
   .style {&nbsp; &nbsp;font-size: px;  
   &nbsp; &nbsp;font-weight: bold;  
   }  
   -->  
   </style>  
   </head>  
     
   <%  
   String cp_codigo = request.getParameter("cp_codigo");  
   String cp_valorconta = request.getParameter("cp_valorconta");  
   String cp_datavencimento = request.getParameter("cp_datavencimento");  
   String cp_datarecebimento = request.getParameter("cp_datarecebimento");
   String nf_codigo = request.getParameter("nf_codigo");
   String cp_observacoes = request.getParameter("cp_observacoes");
   String status = request.getParameter("status");  
   %>  
     
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro pessoa </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="red"><p> <strong>Codigo :</strong>  
          <input name="cp_codigoField" type="text" id="cp_codigoField" size="" value="<%=(cp_codigo==null)?"":nf_codigo%>"> </p>  
                  <p> <strong>Valor :</strong>  
          <input name="cp_valorconta" type="text" id="cp_valorconta" size="" value="<%=(cp_valorconta==null)?"":nf_valornf%>"></p>  
                  <p><strong>Data Vencimento:</strong>   
           <input name="cp_datavencimento" type="text" id="cp_datavencimento" size="" value="<%=(cp_datavencimento==null)?"":nf_taxaimpostonf%>"></p>              
                  <p><strong>Data Recebimento:</strong>   
           <input name="nf_codigo" type="text" id="nf_codigo" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>"></p>  
                  <p><strong>Codigo:</strong>
		   <input name="cp_observacoes" type="text" id="cp_observacoes" size="" value="<%=(cp_observacoes==null)?"":nf_codigo%>"></p>  
                  <p><strong>Observações:</strong>	  
            </p>      
      </td>  
    </tr>  
    <tr>  
      <td height="" bgcolor="red"><p>   
          <input type="button" onClick="enviar('cadastrar')" name="bt" value="cadastrar">  
          <input type="button" onClick="enviar('consultar')" name="bt" value="consultar">  
          <input type="button" onClick="enviar('alterar')" name="bt" value="alterar">  
          <input type="button" onClick="enviar('excluir')" name="bt" value="excluir">  
          <input type="button" onClick="enviar('listar')" name="bt" value="listar">  
        </p>  
        <p> <strong>Status:  
     <input name="statusField" disabled type="text" id="statusField" size="" value="<%=(status==null)?"":status%>">  
        </strong></p>  
     </td>  
    </tr>  
  </table>  
  </form>  
  </body>  
  </html>  