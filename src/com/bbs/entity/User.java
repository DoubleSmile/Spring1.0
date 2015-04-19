package com.bbs.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
@Entity
@Table(name="user")
public class User {
	private int id;
	private String name;
	private String account;
	private String password;
	private String content;
	private Date time;
	
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", account=" + account
				+ ", password=" + password + ", content=" + content + ", time="
				+ time + "]";
	}
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@NotBlank(message="用户名不能为空")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}	
	@NotBlank(message="账号不能为空")
	@Pattern(regexp="\\w{6,16}",message="输入字符必须在6-16位之间")
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	@NotBlank(message="密码不能为空")
	@Size(min=6,max=16,message="密码长度必须在6-16位之间")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	} 

}
