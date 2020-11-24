+-    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Itens Venda</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.itv_condigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';
         }else if (document.cadastro.ven_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  			
         }else if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
		 }else if (document.cadastro.tpp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código'; 
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';
         }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data de compra';
         }else if (document.cadastro.fun_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';
         }else if (document.cadastro.itv_embalagemField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo embalagem';
         }else if (document.cadastro.itv_qtdeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo quantidade';	
         }else if (document.cadastro.itv_valorunField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valorun';	
         }else if (document.cadastro.itv_descField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo desconto';	
         }else if (document.cadastro.itv_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';				
         }else {  
            document.cadastro.action='cadastrar_itensvendas.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.itv_condigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else {  
            document.cadastro.action='consultar_itensvendas.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.itv_condigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';
         }else if (document.cadastro.ven_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  			
         }else if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
		 }else if (document.cadastro.tpp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código'; 
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';
         }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data de compra';
         }else if (document.cadastro.fun_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';
         }else if (document.cadastro.itv_embalagemField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo embalagem';
         }else if (document.cadastro.itv_qtdeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo quantidade';	
         }else if (document.cadastro.itv_valorunField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valorun';	
         }else if (document.cadastro.itv_descField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo desconto';	
         }else if (document.cadastro.itv_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';				
         }else {  
            document.cadastro.action='alterar_itensvendas.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'excluir'){  
     
         if (document.cadastro.itv_condigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else {  
            document.cadastro.action='excluir_itensvendas.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_itensvendas.jsp';  
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
   String itv_condigo = request.getParameter("itv_condigo");   
   String ven_condigo = request.getParameter("ven_condigo");  
   String pro_codigo = request.getParameter("pro_codigo");  
   String tpp_codigo = request.getParameter("tpp_codigo");  
   String nf_codigo = request.getParameter("nf_codigo");
   String tpg_codigo = request.getParameter("tpg_codigo");
   String fun_codigo = request.getParameter("fun_codigo;);  
   String itv_embalagem = request.getParameter("itv_embalagem");
   String itv_qtde = request.getParameter("itv_qtde");
   String itv_valorun = request.getParameter("itv_valorun");
   String itv_desc = request.getParameter("itv_desc");
   String itv_valortotal = request.getParameter("itv_valortotal");   
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
          <input name="itv_condigoField" type="text" id="itv_condigoField" size="" value="<%=(itv_condigo==null)?"":itv_condigo%>"></p>
	        <p><strong>Codigo :</strong>  
          <input name="ven_condigoField" type="text" id="ven_condigoField" size="" value="<%=(ven_condigo==null)?"":ven_condigo%>"></p>  
            <p><strong>Codigo :</strong>  
          <input name="pro_codigoField" type="text" id="pro_codigoField" size="" value="<%=(pro_codigo==null)?"":pro_codigo%>"></p>  
            <p><strong>Codigo:</strong>   
          <input name="tpp_codigoField" type="text" id="tpp_codigoField" size="" value="<%=(tpp_codigo==null)?"":tpp_codigo%>"></p> 
            <p><strong>Codigo:</strong>   
          <input name="nf_codigoField" type="text" id="nf_codigo" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>"></p>		  
            <p><strong>Codigo:</strong>   
          <input name="tpg_codigoField" type="text" id="tpg_codigo" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>"></p>  
            <p><strong>Codigo:</strong>   
          <input name="fun_codigoField" type="text" id="fun_codigo" size="" value="<%=(fun_codigo==null)?"":fun_codigo%>"></p>  
            <p><strong>Emabalagem:</strong>   
          <input name="itv_embalagemField" type="text" id="ven_observacoes" size="" value="<%=(ven_observacoes==null)?"":ven_observacoes%>"></p>  
            <p><strong>Quantidade:</strong>   
          <input name="itv_qtdeField" type="text" id="itv_qtde" size="" value="<%=(itv_qtde==null)?"":itv_qtde%>"></p>  
            <p><strong>Valor Unitario:</strong>   
          <input name="itv_valorunField" type="text" id="itv_valorun" size="" value="<%=(itv_valorun==null)?"":itv_valorun%>"></p>  
            <p><strong>Descricao:</strong>   
          <input name="itv_descField" type="text" id="itv_desc" size="" value="<%=(itv_desc==null)?"":itv_desc%>"></p>  
            <p><strong>Valor Total:</strong>   
          <input name="itv_valortotalField" type="text" id="itv_valortotal" size="" value="<%=(itv_valortotal==null)?"":itv_valortotal%>"></p> 
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