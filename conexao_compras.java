    package conexao_compras;  
      
    import java.sql.*;  
     
    public class Conexao_compras {  
        
       public Connection con;  
       public Statement stm;  
       public ResultSet res = null; 
 
      private int       com_codigo = 0;  
      private int       tpg_codigo = 0; 
	  private int       for_codigo = 0; 
      private int       nf_codigo = 0;
      private String    com_datacompra = 0;
      private String    com_datavenda = 0;
	  private float     com_valortotal = 0;
      private String    com_observacoes = 0; 	  
     
      public Conexao_compras() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_estoque2020","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
      }    
      public void setCom_codigo(int com_codigo){  
         this.com_codigo = com_codigo;  
      
	  }  
      public void setTpg_codigo(int tpg_codigo){  
         this.tpg_codigo = tpg_codigo;  
      
	  }  
	  public void setFor_codigo(int for_codigo){  
         this.for_codigo = for_codigo;  
     
   	  }  
	  public void setNf_codigo(int nf_codigo){  
         this.nf_codigo = nf_codigo;  
      
	  }  
        
	  public void SetCom_datacompra(String com_datacompra){  
         this.com_datacompra = com_datacompra;  
      }  
       
	    public void SetCom_valortotal(float com_valortotal){  
         this.com_valortotal = com_valortotal;  
      }  
	 
	   public void SetCom_observacoes(String com_observacoes){  
         this.com_observacoes = com_observacoes;  
      }  
	 
	 
	 
	 
      public int getCp_codigo(){  
         return com_codigo;  
      }  
           
      public float getCp_valorconta(){  
         return com_valorconta;  
      }  
     
	 public String getCp_datavencimento(){  
         return com_datavencimento;  
      }  
	  public String getCp_datarecebimento(){  
         return com_datarecebimento;  
      }  
     
       public String getNf_codigo(){  
         return nf_codigo;  
      }  
	  
	   public String getCp_observacoes(){  
         return com_observacoes;  
      }  
	  
	 
	
      public void inserirDados(){  
        
         try {  
            String query = "insert into contapagar(com_codigo,com_valorconta,com_datavencimento,com_datarecebimento,nf_codigo,com_observacoes) "
                    + "values("+com_codigo+","+com_valorconta+","+com_datavencimento+","+com_datarecebimento+","+nf_codigo+","+com_observacoes+")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update contapagar "+  
                        "com_valorconta      =  "+com_valorconta+", " +  
						"com_datavencimento  =  " + com_datavencimento + ", " +  
						"com_datarecebimento =  " + com_datarecebimento + " " + 
                        "com_datarecebimento =  " + com_datarecebimento + " " +
                        "nf_codigo          =  " + nf_codigo + " " +
                        "com_observacoes     =  " + com_observacoes + " " + 						
                        "where com_codigo    = " + com_codigo + "";  
     
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
            String query = "delete from contapagar where com_codigo='" +com_codigo+"'";  
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
           String query = "select * from contapagar where com_codigo='" + com_codigo+"'";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from contapagar");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  