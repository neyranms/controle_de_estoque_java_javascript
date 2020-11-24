    package conexao_tipopagto;  
      
    import java.sql.*;  
     
    public class Conexao_tipopagto {  
        
       public Connection con;  
       public Statement stm;  
       public ResultSet res = null; 
 
      private int    tpg_codigo = 0;  
      private String tpg_descricao = 0; 
	  private int    tpg_qtde = 0; 
	  private char   tpg_ativo = 0; 	  
     
      public Conexao_tipopagto() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_estoque2020","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
      }  
        
      public void setTpg_codigo(int tpg_codigo){  
         this.tpg_codigo = tpg_codigo;  
      }  
     public void setTpg_descricao(String tpg_descricao){  
         this.tpg_descricao = tpg_descricao;  
      }  
	  public void setTpg_qtde(int tpg_qtde){  
         this.tpg_qtde = tpg_qtde;  
      }  
	  public void setTpg_ativo(char tpg_ativo){  
         this.tpg_ativo = tpg_ativo;  
      }  
     
	 
      public int getTpg_codigo(){  
         return tpg_codigo;  
      }  
           
      public float getTpg_descricao(){  
         return tpg_descricao;  
      }  
     
	 public float getTpg_qtde(){  
         return tpg_qtde;  
      }  
	  public float getTpg_ativo(){  
         return tpg_ativo;  
      }  
     
     
      public void inserirDados(){  
        
         try {  
            String query = "insert into tipopagto(tpg_codigo,tpg_descricao,tpg_qtde,tpg_ativo) "
                    + "values("+tpg_codigo+","+tpg_descricao+","+tpg_qtde+","+tpg_ativo+")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update tipopagto "+  
                        "tpg_descricao = "+tpg_descricao+", " +  
						"tpg_qtde = " + tpg_qtde + ", " +  
						"tpg_ativo = " + tpg_ativo + " " +  
                        "where tpg_codigo = " + tpg_codigo + "";  
     
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
            String query = "delete from tipopagto where tpg_codigo='" +tpg_codigo+"'";  
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
           String query = "select * from tipopagto where tpg_codigo='" + tpg_codigo+"'";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from tipopagto");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  