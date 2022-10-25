package test;

import util.DaoFactory;

public class TestUser {
    public static void main(String[] args) {
        String stuname = DaoFactory.getUserDaoImpl().getUser("2019901356","123");
        if(stuname != null) {
            System.out.println(stuname + "登陆成功");
        } else {
            System.out.println("登录失败");
        }
    }
}
