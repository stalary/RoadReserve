package dao.impl;

import dao.AdminDao;
import dbconnect.GetConnect;
import entity.Reserve;
import entity.Road;

import java.sql.*;

/**
 * Created by Stalary on 17/5/17.
 */
public class AdminDaoImpl implements AdminDao{
    private PreparedStatement pstmt = null;
    private Connection conn = null;
    private ResultSet rs = null;
    private String sql = null;
    private Statement stmt = null;
    private String queryPassword = null;
    Road road = new Road();
    Reserve reserve = new Reserve();

    public AdminDaoImpl(){}

    public AdminDaoImpl(String id){
        road.setId(id);
        reserve.setId(id);
    }

    @Override
    public int deleteReserve() {
        try {
            conn = GetConnect.connect();
            sql = "delete from reserve where id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,reserve.getId());
            pstmt.executeUpdate();
            return 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            GetConnect.close();
        }
        return -1;
    }

    @Override
    public int deleteRoad() {
        try {
            conn = GetConnect.connect();
            sql = "delete from road where id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,road.getId());
            pstmt.executeUpdate();
            return 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            GetConnect.close();
        }
        return -1;
    }
}
