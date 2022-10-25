package model;

public class User {
    private String stuno;
    private String stuname;
    private String password;

    public User (){
    }

    public User(String stuno, String stuname, String password) {
        this.stuno = stuno;
        this.stuname = stuname;
        this.password = password;
    }

    public String getStuno() {
        return stuno;
    }

    public void setStuno(String stuno) {
        this.stuno = stuno;
    }

    public String getStuname() {
        return stuname;
    }

    public void setStuname(String stuname) {
        this.stuname = stuname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
