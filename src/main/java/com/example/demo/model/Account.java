package com.example.demo.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "users")
@SecondaryTable(name = "authorities", pkJoinColumns = @PrimaryKeyJoinColumn(name = "username", referencedColumnName = "username"))
public class Account {

    @Id
    @NotBlank(message = "username not blank")
    private String username;

    @NotBlank(message = "firstname not blank")
    private String firstname;

    @NotBlank(message = "lastname not blank")
    private String lastname;

    @Email(message = "email invalid")
    @NotBlank(message = "email not blank")
    private String email;

    @NotBlank(message = "password not blank")
    private String password;

    @Column(name = "enabled", columnDefinition = "tinyint default 1")
    private byte enabled = 1;

    @Column(name = "authority", table = "authorities", columnDefinition = "varchar(50) default 'ROLE_USER'")
    private String authority = "ROLE_USER";
    
    @OneToMany(mappedBy = "account")
    private List<Order> orders = new ArrayList<>();

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public byte getEnabled() {
        return enabled;
    }

    public void setEnabled(byte enabled) {
        this.enabled = enabled;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
