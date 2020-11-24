+-    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Compras</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
		 }else if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código'; 
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';
         }else if (document.cadastro.com_datacompraField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data de compra';
         }else if (document.cadastro.com_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';
         }else if (document.cadastro.com_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo observaçoes';			
         }else {  
            document.cadastro.action='cadastrar_compras.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else {  
            document.cadastro.action='consultar_compras.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
		 }else if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo taxa'; 
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';
         }else if (document.cadastro.com_datacompraField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data de compra';
         }else if (document.cadastro.com_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';
         }else if (document.cadastro.com_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo observaçoes';				
         }else {  
            document.cadastro.action='alterar_compras.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'excluir'){  
     
         if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else {  
            document.cadastro.action='excluir_compras.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_compras.jsp';  
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
   String com_codigo = request.getParameter("com_codigo");  
   String tpg_codigo = request.getParameter("tpg_codigo");  
   String for_codigo = request.getParameter("for_codigo");  
   String nf_codigonf = request.getParameter("nf_codigonf");
   String nf_codigonf = request.getParameter("com_datacompra");
   String nf_codigonf = request.getParameter("com_valortotal;
   String nf_codigonf = request.getParameter("com_observacoes");   
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
       <td height="" bgcolor="red">
	        <p><strong>Codigo :</strong>  
          <input name="com_codigoField" type="text" id="com_codigoField" size="" value="<%=(com_codigo==null)?"":com_codigo%>"></p>  
            <p><strong>Codigo :</strong>  
          <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>"></p>  
            <p><strong>Codigo:</strong>   
          <input name="for_codigoField" type="text" id="for_codigoField" size="" value="<%=(for_codigo==null)?"":for_codigo%>"></p> 
            <p><strong>Codigo:</strong>   
          <input name="nf_codigonfField" type="text" id="nf_codigonf" size="" value="<%=(nf_codigonf==null)?"":nf_codigonf%>"></p>  
            <p><strong>Data compra:</strong>   
          <input name="com_datacompraField" type="text" id="com_datacompra" size="" value="<%=(com_datacompra==null)?"":com_datacompra%>"></p>  
            <p><strong>Valor Total:</strong>   
          <input name="com_valortotalField" type="text" id="com_valortotal" size="" value="<%=(com_valortotal==null)?"":com_valortotal%>"></p>  
            <p><strong>Observacoes:</strong>   
          <input name="com_observacoesField" type="text" id="com_observacoes" size="" value="<%=(com_observacoes==null)?"":com_observacoes%>"></p>  
             
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