package com.example.demo.model;

import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "persistent_logins")
public class PersistenceLogins {

	@Id
	@Column(name = "series", columnDefinition = "varchar(64)")
	private String series;

	@ManyToOne
	@JoinColumn(name = "username", referencedColumnName = "username")
	private Account username;

	@Column(name = "token", columnDefinition = "varchar(64) not null")
	private String token; 

	@Column(name = "last_used", columnDefinition = "datetime")
	private LocalTime last_used;

	public String getSeries() {
		return series;
	}

	public void setSeries(String series) {
		this.series = series;
	}

	public Account getUsername() {
		return username;
	}

	public void setUsername(Account username) {
		this.username = username;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public LocalTime getLast_used() {
		return last_used;
	}

	public void setLast_used(LocalTime last_used) {
		this.last_used = last_used;
	}

}
