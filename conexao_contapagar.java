    package conexao_contapagar;  
      
    import java.sql.*;  
     
    public class Conexao_contapagar {  
        
       public Connection con;  
       public Statement stm;  
       public ResultSet res = null; 
 
      private int       cp_codigo = 0;  
      private float     cp_valorconta = 0; 
	  private String    cp_datavencimento = 0; 
	  private String    cp_datarecebimento = 0;
      private float     nf_codigo = 0;
      private String    cp_observacoes = 0; 	  
     
      public Conexao_contapagar() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_estoque2020","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
      }    
      public void setCp_codigo(int cp_codigo){  
         this.cp_codigo = cp_codigo;  
      
	  }  
      public void setCp_valorconta(float cp_valorconta){  
         this.cp_valorconta = cp_valorconta;  
      
	  }  
	  public void setCp_datavencimento(String cp_datavencimento){  
         this.cp_datavencimento = cp_datavencimento;  
     
   	  }  
	  public void setCp_datarecebimento(String cp_datarecebimento){  
         this.cp_datarecebimento = cp_datarecebimento;  
      
	  }  
        
	  public void SetNf_codigo(String nf_codigo){  
         this.nf_codigo = nf_codigo;  
      }  
       
	    public void SetCp_observacoes(String cp_observacoes){  
         this.cp_observacoes = cp_observacoes;  
      }  
	 
	 
	 
      public int getCp_codigo(){  
         return cp_codigo;  
      }  
           
      public float getCp_valorconta(){  
         return cp_valorconta;  
      }  
     
	 public String getCp_datavencimento(){  
         return cp_datavencimento;  
      }  
	  public String getCp_datarecebimento(){  
         return cp_datarecebimento;  
      }  
     
       public String getNf_codigo(){  
         return nf_codigo;  
      }  
	  
	   public String getCp_observacoes(){  
         return cp_observacoes;  
      }  
	  
	 
	
      public void inserirDados(){  
        
         try {  
            String query = "insert into contapagar(cp_codigo,cp_valorconta,cp_datavencimento,cp_datarecebimento,nf_codigo,cp_observacoes) "
                    + "values("+cp_codigo+","+cp_valorconta+","+cp_datavencimento+","+cp_datarecebimento+","+nf_codigo+","+cp_observacoes+")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update contapagar "+  
                        "cp_valorconta      =  "+cp_valorconta+", " +  
						"cp_datavencimento  =  " + cp_datavencimento + ", " +  
						"cp_datarecebimento =  " + cp_datarecebimento + " " + 
                        "cp_datarecebimento =  " + cp_datarecebimento + " " +
                        "nf_codigo          =  " + nf_codigo + " " +
                        "cp_observacoes     =  " + cp_observacoes + " " + 						
                        "where cp_codigo    = " + cp_codigo + "";  
     
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
            String query = "delete from contapagar where cp_codigo='" +cp_codigo+"'";  
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
           String query = "select * from contapagar where cp_codigo='" + cp_codigo+"'";  
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