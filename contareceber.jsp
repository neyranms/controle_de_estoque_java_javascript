+-    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Conta Receber</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.cr_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else if (document.cadastro.cr_valorcontaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
		 }else if (document.cadastro.cr_datavencimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo taxa'; 
         }else if (document.cadastro.cr_datarecebimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
         }else if (document.cadastro.cr_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo das observaçoes';  
         }else {  
            document.cadastro.action='cadastrar_contareceber.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.cr_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else {  
            document.cadastro.action='consultar_contareceber.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
        
         if (document.cadastro.cr_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else if (document.cadastro.cr_valorcontaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
		 }else if (document.cadastro.cr_datavencimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo taxa'; 
         }else if (document.cadastro.cr_datarecebimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
         }else if (document.cadastro.cr_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo das observaçoes';  
         }else {  
            document.cadastro.action='cadastrar_contareceber.jsp';  
            document.cadastro.submit();  
         }    
      } else if (par == 'excluir'){  
     
         if (document.cadastro.cr_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else {  
            document.cadastro.action='excluir_contareceber.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_contareceber.jsp';  
         document.cadastro.submit();  
      }  
   }  
     
   </script>  
     
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
   String cr_codigo = request.getParameter("cr_codigo");  
   String cr_valorconta = request.getParameter("cr_valorconta");  
   String cr_datavencimento = request.getParameter("cr_datavencimento");  
   String cr_datarecebimento = request.getParameter("cr_datarecebimento");
   String nf_codigo = request.getParameter("nf_codigo");
   String cr_observacoes = request.getParameter("cr_observacoes");
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
          <input name="cr_codigoField" type="text" id="cr_codigoField" size="" value="<%=(cr_codigo==null)?"":nf_codigo%>"> </p>  
                  <p> <strong>Valor :</strong>  
          <input name="cr_valorconta" type="text" id="cr_valorconta" size="" value="<%=(cr_valorconta==null)?"":nf_valornf%>"></p>  
                  <p><strong>Data Vencimento:</strong>   
           <input name="cr_datavencimento" type="text" id="cr_datavencimento" size="" value="<%=(cr_datavencimento==null)?"":nf_taxaimpostonf%>"></p>              
                  <p><strong>Data Recebimento:</strong>   
           <input name="nf_codigo" type="text" id="nf_codigo" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>"></p>  
                  <p><strong>Codigo:</strong>
		   <input name="cr_observacoes" type="text" id="cr_observacoes" size="" value="<%=(cr_observacoes==null)?"":nf_codigo%>"></p>  
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