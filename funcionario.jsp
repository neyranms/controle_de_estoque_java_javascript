+-    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Funcionario</title>  
      
      
    <scpipt>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.fun_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else if (document.cadastro.fun_nomeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
		 }else if (document.cadastro.fun_enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereço'; 
         }else if (document.cadastro.fun_numeroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo numero';
        }else if (document.cadastro.fun_complementoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo complemento';  			
         }else if (document.cadastro.fun_bairroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo bairro';  
         }else if (document.cadastro.fun_cidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cidade'; 
		 }else if (document.cadastro.fun_ufField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo UF';  
         }else if (document.cadastro.fun_cnpjcpfField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo CNPJCPF';  
         }else if (document.cadastro.fun_rgieField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do RGIE'; 
         }else if (document.cadastro.fun_sexoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do sexo';  
         }else if (document.cadastro.fun_nascimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do nascimento';  			
         }else if (document.cadastro.fun_telefoneField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do telefone';  
         }else if (document.cadastro.fun_celularField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do celular';  
         }else if (document.cadastro.fun_emailField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do email';
         }else if (document.cadastro.fun_salarioField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do salario';  
         }			
         }else {  
            document.cadastro.action='cadastrar_funcionario.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.fun_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else {  
            document.cadastro.action='consultar_funcionario.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
        
         if (document.cadastro.fun_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código';  
         }else if (document.cadastro.fun_nomeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
		 }else if (document.cadastro.fun_enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereço'; 
         }else if (document.cadastro.fun_numeroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo numero';
        }else if (document.cadastro.fun_complementoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo complemento';  			
         }else if (document.cadastro.fun_bairroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo bairro';  
         }else if (document.cadastro.fun_cidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cidade'; 
		 }else if (document.cadastro.fun_ufField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo UF';  
         }else if (document.cadastro.fun_cnpjcpfField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo CNPJCPF';  
         }else if (document.cadastro.fun_rgieField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do RGIE'; 
         }else if (document.cadastro.fun_sexoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do sexo';  
         }else if (document.cadastro.fun_nascimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do nascimento';  			
         }else if (document.cadastro.fun_telefoneField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do telefone';  
         }else if (document.cadastro.fun_celularField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do celular';  
         }else if (document.cadastro.fun_emailField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do email';
         }else if (document.cadastro.fun_salarioField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo do salario';  
         } else if (par == 'excluir'){  
     
         if (document.cadastro.fun_codigoField.value == ''){  
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
   String fun_codigo = request.getParameter("fun_codigo");
   String fun_nome = request.getParameter("fun_nome");
   String fun_endereco = request.getParameter("fun_endereco");
   String fun_numero = request.getParameter("fun_numero");
   String fun_complemento = request.getParameter("fun_complemento");
   String fun_bairro = request.getParameter("fun_bairro");
   String fun_cidade = request.getParameter("fun_cidade");   
   String fun_uf = request.getParameter("fun_uf");  
   String fun_cnpjcpf = request.getParameter("fun_cnpjcpf");  
   String fun_rgie = request.getParameter("fun_rgie");
   String fun_sexo = request.getParameter("fun_sexo");
   String fun_nascimento = request.getParameter("fun_nascimento");
   String fun_telefone = request.getParameter("fun_telefone");
   String fun_celular = request.getParameter("fun_celular");
   String fun_email = request.getParameter("fun_email");
   String fun_salario = request.getParameter("fun_salario");
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
          <input name="fun_codigoField" type="text" id="fun_codigoField" size="" value="<%=(fun_codigo==null)?"":fun_codigo%>"> </p>  
                  <p> <strong>Nome :</strong>  
           <input name="fun_nome" type="text" id="fun_nome" size="" value="<%=(fun_nome==null)?"":fun_nome%>"></p>  
                  <p><strong>Endereco:</strong>
           <input name="fun_endereco" type="text" id="fun_endereco" size="" value="<%=(fun_endereco==null)?"":fun_endereco%>"></p>  
                  <p><strong>Numero:</strong> 
           <input name="fun_numero" type="text" id="fun_numero" size="" value="<%=(fun_numero==null)?"":fun_numero%>"></p>  
                  <p><strong>Bairro:</strong> 
           <input name="fun_bairro" type="text" id="fun_bairro" size="" value="<%=(fun_bairro==null)?"":fun_bairro%>"></p>  
                  <p><strong>Cidade:</strong> 
           <input name="fun_cidade" type="text" id="fun_cidade" size="" value="<%=(fun_cidade==null)?"":fun_cidade%>"></p>  
                  <p><strong>UF:</strong> 
           <input name="fun_uf" type="text" id="fun_uf" size="" value="<%=(fun_uf==null)?"":fun_uf%>"></p>  
                  <p><strong>CNPJCPF:</strong> 				  
           <input name="fun_cnpjcpf" type="text" id="fun_cnpjcpf" size="" value="<%=(fun_cnpjcpf==null)?"":fun_cnpjcpf%>"></p>              
                  <p><strong>RGIE:</strong>   
           <input name="fun_rgie" type="text" id="fun_rgie" size="" value="<%=(fun_rgie==null)?"":fun_rgie%>"></p>  
                  <p><strong>Telefone:</strong>
		   <input name="fun_telefone" type="text" id="fun_telefone" size="" value="<%=(fun_telefone==null)?"":fun_telefone%>"></p>  
                  <p><strong>FAX:</strong>
           <input name="fun_fax" type="text" id="fun_fax" size="" value="<%=(fun_fax==null)?"":fun_fax%>"></p>  
                  <p><strong>Celular:</strong>
           <input name="fun_celular" type="text" id="fun_celular" size="" value="<%=(fun_celular==null)?"":fun_celular%>"></p>  
                  <p><strong>Email:</strong>
           <input name="fun_email" type="text" id="fun_email" size="" value="<%=(fun_email==null)?"":fun_email%>"></p>  
                   			 			 				  
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