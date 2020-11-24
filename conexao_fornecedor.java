    package conexao_fornecedor;  
      
    import java.sql.*;  
     
    public class Conexao_fornecedor {  
        
       public Connection con;  
       public Statement stm;  
       public ResultSet res = null; 
      
	  private int          for_codigo = 0
      private String       for_nome = 0;  
      private String       for_endereco = 0;
	  private String       for_numero = 0; 
      private String       for_bairro = 0;
	  private String       for_cidade = 0;
	  private char         for_uf = 0; 
      private String       for_cnpjcpf = 0;
	  private String       for_rgie = 0;
	  private String       for_telefone = 0;
      private String       for_fax = 0; 	  
      private String       for_celular = 0;
	  
	  
      public Conexao_fornecedor() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_estoque2020","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
		 
		
	
	  public void setFor_codigo(int for_codigo){  
         this.for_codigo = for_codigo;  
          
      }    
      public void setFor_codigo(String for_nome){  
         this.for_nome = for_nome;  
      
	  }  
      public void setFor_endereco(String for_endereco){  
         this.for_endereco = for_endereco;  
      
	  }  
	  public void setFor_numero(String for_numero){  
         this.for_numero = for_numero;  
     
   	  }  
	  public void setFor_bairro(String for_bairro){  
         this.for_bairro = for_bairro;  
      
	  }    
	  public void setFor_cidade(String for_cidade){  
         this.for_cidade = for_cidade;  
      
	  }  
       
      public void setFor_uf(char for_uf){  
         this.for_uf = for_uf;  
      
	  }
	   
	    public void setFor_cnpjcpf(String for_cnpjcpf){  
         this.for_cnpjcpf = for_cnpjcpf;  
      }  
       
	    public void setFor_rgie(String for_rgie){  
         this.for_rgie = for_rgie;  
      }  
	 
	   public void setFor_telefone(String for_telefone){  
         this.for_telefone = for_telefone;  
      }  
	 
	   public void setFor_fax(String for_fax){  
         this.for_fax = for_fax;  
      }
	  
	  public void setFor_celular(String for_celular){  
         this.for_celular = for_celular;  
      }
	  
	  public void setFor_email(String for_email){  
         this.for_email = for_email;  
      }
	 
	 
      public int getFor_codigo(){  
         return for_codigo;  
      }  
           
      public float getFor_nome(){  
         return for_nome;  
      }  
     
	  public String getFor_endereco(){  
         return for_endereco;  
      }  
	  
       public String getFor_numero(){  
         return for_numero;  
      }  
	  
	   public String getFor_bairro(){  
         return for_bairro;  
      }
	  
	   public String getFor_cidade(){  
         return for_cidade;  
      } 
	  
	   public String getFor_uf(){  
         return for_uf;  
      } 
	 
	  public String getFor_cnpjcpf(){  
         return for_cnpjcpf;  
      } 
	 
	  public String getFor_rgie(){  
         return for_rgie;  
      } 
	 
	  public String getFor_telefone(){  
         return for_telefone;  
      } 
	 
      public String getFor_fax(){  
         return for_fax;  
      } 
	 	 
	 public String getFor_celular(){  
         return for_celular;  
      } 
	 
	 public String getFor_email(){  
         return for_email;  
      }

	  
      public void inserirDados(){  
        
         try {  
            String query = "insert into fornecedor(for_codigo,for_nome,for_endereco,for_numero,for_bairro,for_codigo,for_uf,for_cnpjcpf,for_rgie,for_telefone,for_fax,for_celular,for_email) "
                    + "values("+for_codigo+","+for_nome+","+for_endereco+","+for_numero+","+for_bairro+","+for_codigo+","+for_uf+","+for_cnpjcpf+","+for_rgie+","+for_telefone+","+for_fax+","+for_celular+","+for_email+")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update fornecedor "+  
                        "for_codigo    =  "+ for_codigo+" " +
                        "for_nome      =  "+ for_nome+" " + 					
                        "for_endereco  =  "+ for_endereco+ " " +  
                        "for_numero    =  "+ for_numero + " " +
                        "for_bairro    =  "+ for_bairro + " " +
                        "for_codigo    =  "+ for_codigo + " " +
                        "for_uf        =  "+ for_uf +" " +
                        "for_cnpjcpf   =  "+ for_cnpjcpf+" " + 					
                        "for_rgie      =  "+ for_rgie+ " " +  
                        "for_telefone  =  "+ for_telefone + " " +
                        "for_fax       =  "+ for_fax + " " +
                        "for_celular   =  "+ for_celular + " " +
                        "for_email     =  "+ for_email + " " +						
                        "where for_codigo = "+ for_codigo + " ";  
     
            int linhas = stm.executeUpdate(query);  
              
            if (linhas >0 )  
               testa = true;  
            else  
               testa = false;  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
         return testa;  
      }  
        
      public boolean excluirDados(){  
        
       boolean testa = false;  
        
         try {  
            String query = "delete from fornecedor where for_codigo='" +for_codigo+"'";  
            int linhas = stm.executeUpdate(query);  
              
            if (linhas > 0)  
               testa = true;  
            else  
               testa = false;  
     
        }catch (SQLException e){System.out.println("Erro na exclusão:" + e.getMessage());}  
          
        return testa;  
     }  
       
     public boolean consultarDados(){  
          
        boolean testa = false;  
             
        try {  
           String query = "select * from fornecedor where for_codigo='" + for_codigo+"'";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from fornecedor");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  