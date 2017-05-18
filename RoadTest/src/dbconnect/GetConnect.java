package dbconnect;
import java.sql.*;
/**
 * Created by Stalary on 17/5/11.
 */
public class GetConnect {
    private static PreparedStatement pstmt=null;
    private static Connection conn=null;
    private static ResultSet rs=null;
    private static Statement stmt = null;
    private static String driver="com.mysql.jdbc.Driver";
    private static String url="jdbc:mysql://localhost:3306/roadReserve?useUnicode=true&characterEncoding=UTF-8";
    private static String username="root";
    private static String password="li197910";
    public GetConnect(){
    }
    public static Connection connect() {

        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
    public static void close() {
        try {
            if (rs != null){
                rs.close();
            }
            if (pstmt != null){
                pstmt.close();
            }
            if (conn != null){
                conn.close();
            }
            if (stmt != null){
                stmt.close();
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }

    }
}