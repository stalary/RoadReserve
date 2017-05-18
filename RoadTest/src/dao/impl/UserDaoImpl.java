package dao.impl;

import dao.UserDao;
import dbconnect.GetConnect;
import entity.Reserve;
import entity.Road;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Stalary on 17/5/11.
 */
public class UserDaoImpl implements UserDao{
    private PreparedStatement pstmt = null;
    private Connection conn = null;
    private ResultSet rs = null;
    private String sql = null;
    private Statement stmt = null;
    private String queryPassword = null;

    @Override
    public List reserve() {
        List<Road> listRoad = new ArrayList<>();
        try {
            conn = GetConnect.connect();
            stmt = conn.createStatement();
            sql = "select * from road where state = '未预约'";
            rs = stmt.executeQuery(sql);
            while(rs.next()) {
                Road road = new Road();
                road.setId(rs.getString("id"));
                listRoad.add(road);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            GetConnect.close();
        }
        return listRoad;
    }

    @Override
    public List cancelReserve() {
        List<Road> listRoad = new ArrayList<>();
        try {
            conn = GetConnect.connect();
            stmt = conn.createStatement();
            sql = "select * from road where state = '已预约'";
            rs = stmt.executeQuery(sql);
            while(rs.next()) {
                Road road = new Road();
                road.setId(rs.getString("id"));
                listRoad.add(road);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            GetConnect.close();
        }
        return listRoad;
    }

    @Override
    public List queryRoad() {
        List<Road> listRoad = new ArrayList<>();
        try {
            conn = GetConnect.connect();
            stmt = conn.createStatement();
            sql = "select * from road";
            rs = stmt.executeQuery(sql);
            while(rs.next()) {
                Road road = new Road();
                road.setId(rs.getString("id"));
                road.setState(rs.getString("state"));
                listRoad.add(road);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            GetConnect.close();
        }
        return listRoad;
    }

    @Override
    public List queryReserve() {
        List<Reserve> listReserve = new ArrayList<>();
        try {
            conn = GetConnect.connect();
            stmt = conn.createStatement();
            sql = "select * from reserve";
            rs = stmt.executeQuery(sql);
            while(rs.next()) {
                Reserve reserve = new Reserve();
                reserve.setId(rs.getString("id"));
                reserve.setName(rs.getString("name"));
                listReserve.add(reserve);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            GetConnect.close();
        }
        return listReserve;
    }
}
