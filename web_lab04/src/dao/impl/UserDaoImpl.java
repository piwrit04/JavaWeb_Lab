package dao.impl;

import dao.UserDao;
import util.DatabaseBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {
    @Override
    public String getUser(String stuno, String password) {
        Connection conn = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        String stuname = null;
        String sql = "select stuname from user where stuno = ? and password = ?";
        try {
            conn = DatabaseBean.getConnection();
            psmt = conn.prepareStatement(sql);
            psmt.setString(1,stuno);
            psmt.setString(2,password);
            rs = psmt.executeQuery();
            if(rs.next()) {
                stuname = rs.getString("stuname");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            DatabaseBean.close(rs,psmt,conn);
        }
        return stuname;
    }
}
