package com.strata.tickets.ticketsapi.DAO;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.sql.Timestamp;

@Entity
@Table(name="USER_DTL")
public class UserDetail {

    @Column(name="S_NO")
    private int sNO;
    @Column(name="USER_NAME")
    private String userName;

    @Id
    @Column(name="USER_ID")
    private Long userId;
    @Column(name="ROLE")
    private String role;
    @Column(name="PASSWORD")
    private String password;
    @Column(name="CREATED_DT")
    private Timestamp createdDt;

    public int getsNO() {
        return sNO;
    }

    public void setsNO(int sNO) {
        this.sNO = sNO;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Timestamp getCreatedDt() {
        return createdDt;
    }

    public void setCreatedDt(Timestamp createdDt) {
        this.createdDt = createdDt;
    }
}
