
package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;


public class Conexion {
    
   private static final String JDBC_URL ="jdbc:mysql://localhost:3306/control_clientes?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
   private static final String JDBC_USER = "root";
   private static final String JDBC_PASSWORD = "";
   private static BasicDataSource data;
      //pool de conexiones
   public static DataSource getDataSource(){
       
       try { 
           Class.forName("com.mysql.cj.jdbc.Driver");
       } catch (ClassNotFoundException ex) {
          ex.printStackTrace(System.out);
       }

        data = new BasicDataSource();
        data.setUrl(JDBC_URL);
        data.setUsername(JDBC_USER);
        data.setPassword(JDBC_PASSWORD);
        data.setInitialSize(50);


       return data;
   }
   
    public static Connection getConnection() throws SQLException{
       return getDataSource().getConnection();
   }
    
     public static void close(ResultSet rs){
       try {
           rs.close();
       } catch (SQLException ex) {
           ex.printStackTrace(System.out);
       }
   }
   public static void close(PreparedStatement ps){
       try {
           ps.close();
       } catch (SQLException ex) {
           ex.printStackTrace(System.out);
       }
   }
   public static void close(Connection conn){
       try {
           conn.close();
       } catch (SQLException ex) {
           ex.printStackTrace(System.out);
       }
   }
   
}
