+-    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Vendas</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.ven_condigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else if (document.cadastro.fun_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
		 }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código'; 
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';
         }else if (document.cadastro.ven_datavendaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data de compra';
         }else if (document.cadastro.ven_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';
         }else if (document.cadastro.ven_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo observaçoes';			
         }else {  
            document.cadastro.action='cadastrar_vendas.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.ven_condigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else {  
            document.cadastro.action='consultar_vendas.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.ven_condigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else if (document.cadastro.fun_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
		 }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo taxa'; 
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';
         }else if (document.cadastro.ven_datavendaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data de compra';
         }else if (document.cadastro.ven_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';
         }else if (document.cadastro.ven_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo observaçoes';				
         }else {  
            document.cadastro.action='alterar_vendas.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'excluir'){  
     
         if (document.cadastro.ven_condigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else {  
            document.cadastro.action='excluir_vendas.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_vendas.jsp';  
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
   String ven_condigo = request.getParameter("ven_condigo");  
   String fun_codigo = request.getParameter("fun_codigo");  
   String tpg_codigo = request.getParameter("tpg_codigo");  
   String nf_codigonf = request.getParameter("nf_codigonf");
   String nf_codigonf = request.getParameter("ven_datavenda");
   String nf_codigonf = request.getParameter("ven_valortotal;
   String nf_codigonf = request.getParameter("ven_observacoes");   
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
          <input name="ven_condigoField" type="text" id="ven_condigoField" size="" value="<%=(ven_condigo==null)?"":ven_condigo%>"></p>  
            <p><strong>Codigo :</strong>  
          <input name="fun_codigoField" type="text" id="fun_codigoField" size="" value="<%=(fun_codigo==null)?"":fun_codigo%>"></p>  
            <p><strong>Codigo:</strong>   
          <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>"></p> 
            <p><strong>Codigo:</strong>   
          <input name="nf_codigonfField" type="text" id="nf_codigonf" size="" value="<%=(nf_codigonf==null)?"":nf_codigonf%>"></p>  
            <p><strong>Data compra:</strong>   
          <input name="ven_datavendaField" type="text" id="ven_datavenda" size="" value="<%=(ven_datavenda==null)?"":ven_datavenda%>"></p>  
            <p><strong>Valor Total:</strong>   
          <input name="ven_valortotalField" type="text" id="ven_valortotal" size="" value="<%=(ven_valortotal==null)?"":ven_valortotal%>"></p>  
            <p><strong>Observacoes:</strong>   
          <input name="ven_observacoesField" type="text" id="ven_observacoes" size="" value="<%=(ven_observacoes==null)?"":ven_observacoes%>"></p>  
             
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