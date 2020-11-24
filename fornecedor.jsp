+-    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Conta Pagar</title>  
      
      
    <scpipt>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else if (document.cadastro.for_nomeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
		 }else if (document.cadastro.for_enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereço'; 
         }else if (document.cadastro.for_numeroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo numero';  
         }else if (document.cadastro.for_bairroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo bairro';  
         }else if (document.cadastro.for_cidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cidade'; 
		 }else if (document.cadastro.for_ufField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo UF';  
         }else if (document.cadastro.for_cnpjcpfField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo CNPJCPF';  
         }else if (document.cadastro.for_rgieField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do RGIE';  
         }else if (document.cadastro.for_telefoneField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do telefone';  
         }else if (document.cadastro.for_faxField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do fax';  
         }else if (document.cadastro.for_faxField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do celular';
         }else if (document.cadastro.for_emailField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do e-mail';  
         }			
         }else {  
            document.cadastro.action='cadastrar_funcionario.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else {  
            document.cadastro.action='consultar_funcionario.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
        
         if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else if (document.cadastro.for_nomeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
		 }else if (document.cadastro.for_enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereço'; 
         }else if (document.cadastro.for_numeroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo numero';  
         }else if (document.cadastro.for_bairroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo bairro';  
         }else if (document.cadastro.for_cidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cidade'; 
		 }else if (document.cadastro.for_ufField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo UF';  
         }else if (document.cadastro.for_cnpjcpfField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo CNPJCPF';  
         }else if (document.cadastro.for_rgieField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do RGIE';  
         }else if (document.cadastro.for_telefoneField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do telefone';  
         }else if (document.cadastro.for_faxField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do fax';  
         }else if (document.cadastro.for_faxField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do celular';
         }else if (document.cadastro.for_emailField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do e-mail';  
         }else {  
            document.cadastro.action='cadastrar_funcionario.jsp';  
            document.cadastro.submit();  
         }    
         } else if (par == 'excluir'){  
     
         if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else {  
            document.cadastro.action='excluir_funcionario.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_funcionario.jsp';  
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
   String for_codigo = request.getParameter("for_codigo");
   String for_nome = request.getParameter("for_nome");
   String for_endereco = request.getParameter("for_endereco");
   String for_numero = request.getParameter("for_numero");
   String for_bairro = request.getParameter("for_bairro");
   String for_cidade = request.getParameter("for_cidade");   
   String for_uf = request.getParameter("for_uf");  
   String for_cnpjcpf = request.getParameter("for_cnpjcpf");  
   String for_rgie = request.getParameter("for_rgie");
   String for_telefone = request.getParameter("for_telefone");
   String for_fax = request.getParameter("for_fax");
   String for_fax = request.getParameter("for_fax");
   String for_email = request.getParameter("for_email");
   String status = request.getParameter("status");  
   %>  
     
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro Funcionario </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="red">
	              <p> <strong>Codigo :</strong>  
          <input name="for_codigoField" type="text" id="for_codigoField" size="" value="<%=(for_codigo==null)?"":for_codigo%>"> </p>  
                  <p> <strong>Nome :</strong>  
           <input name="for_nome" type="text" id="for_nome" size="" value="<%=(for_nome==null)?"":for_nome%>"></p>  
                  <p><strong>Endereco:</strong>
           <input name="for_endereco" type="text" id="for_endereco" size="" value="<%=(for_endereco==null)?"":for_endereco%>"></p>  
                  <p><strong>Numero:</strong> 
           <input name="for_numero" type="text" id="for_numero" size="" value="<%=(for_numero==null)?"":for_numero%>"></p>  
                  <p><strong>Bairro:</strong> 
           <input name="for_bairro" type="text" id="for_bairro" size="" value="<%=(for_bairro==null)?"":for_bairro%>"></p>  
                  <p><strong>Cidade:</strong> 
           <input name="for_cidade" type="text" id="for_cidade" size="" value="<%=(for_cidade==null)?"":for_cidade%>"></p>  
                  <p><strong>UF:</strong> 
           <input name="for_uf" type="text" id="for_uf" size="" value="<%=(for_uf==null)?"":for_uf%>"></p>  
                  <p><strong>CNPJCPF:</strong> 				  
           <input name="for_cnpjcpf" type="text" id="for_cnpjcpf" size="" value="<%=(for_cnpjcpf==null)?"":for_cnpjcpf%>"></p>              
                  <p><strong>RGIE:</strong>   
           <input name="for_rgie" type="text" id="for_rgie" size="" value="<%=(for_rgie==null)?"":for_rgie%>"></p>  
                  <p><strong>Telefone:</strong>
		   <input name="for_telefone" type="text" id="for_telefone" size="" value="<%=(for_telefone==null)?"":for_telefone%>"></p>  
                  <p><strong>FAX:</strong>
           <input name="for_fax" type="text" id="for_fax" size="" value="<%=(for_fax==null)?"":for_fax%>"></p>  
                  <p><strong>Celular:</strong>
           <input name="for_celular" type="text" id="for_celular" size="" value="<%=(for_celular==null)?"":for_celular%>"></p>  
                  <p><strong>Email:</strong>
           <input name="for_email" type="text" id="for_email" size="" value="<%=(for_email==null)?"":for_email%>"></p>  
                   			 			 				  
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