package dao.impl;
import dao.LoginDao;
import dao.RegisterDao;
import dbconnect.GetConnect;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import entity.User;
/**
 * Created by Stalary on 17/5/11.
 */
public class LoginDaoImpl implements LoginDao{
    private PreparedStatement pstmt = null;
    private Connection conn = null;
    private ResultSet rs = null;
    private String sql = null;
    private Statement stmt = null;
    private String queryPassword = null;
    User user = new User();
    List<String> list = new ArrayList<>();
    public LoginDaoImpl(){}

    public LoginDaoImpl(String account) {
        user.setAccount(account);
    }

    @Override
    public String queryUser() {
        try {
            conn = GetConnect.connect();
            sql = "select password from users where account = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,user.getAccount());
            rs = pstmt.executeQuery();
            rs.next();
            queryPassword = rs.getString("password");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            GetConnect.close();
        }
        return queryPassword;
    }

    @Override
    public String queryManager() {
        try {
            conn = GetConnect.connect();
            sql = "select password from manager where account = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,user.getAccount());
            rs = pstmt.executeQuery();
            rs.next();
            queryPassword = rs.getString("password");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            GetConnect.close();
        }
        return queryPassword;
    }

    @Override
    public List existUser() {
        RegisterDaoImpl re = new RegisterDaoImpl();
        return re.queryUser();
    }

    @Override
    public List existManager() {
        try {
            conn = GetConnect.connect();
            stmt = conn.createStatement();
            sql = "select account from manager";
            rs = stmt.executeQuery(sql);
            while(rs.next()) {
                list.add(rs.getString("account"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            GetConnect.close();
        }
        return list;
    }
}
