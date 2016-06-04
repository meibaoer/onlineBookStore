package com.bookstore.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager {
	private Connection con;
	private Statement sta;
	private ResultSet rs;
	
	/**
	 * 用来执行查询语句
	 */
	public ResultSet query(String sql) {
		String url = "jdbc:mysql://127.0.0.1:3306/test";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,"root", "root");
			sta = con.createStatement();
			rs = sta.executeQuery(sql);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	


	/**
	 * 用来执行insert,update,delete SQL语句
	 * @param sql 要执行的SQL语句
	 * @return sql语句影响的行数
	 */
	public int update(String sql) {
		System.out.println(sql);
		int rows = 0;
		//String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=BookStore";
		String url = "jdbc:mysql://127.0.0.1:3306/test";
		try {
			//Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, "root", "root");
			sta = con.createStatement();
			rows = sta.executeUpdate(sql);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return rows;
	}
	/**
	 * 关闭资源
	 */
	public void close() {
		try {
			if (rs != null) {
				rs.close();
				rs = null;
			}
			if (sta != null) {
				sta.close();
				sta = null;
			}	
			if (con != null) {
				con.close();
				con = null;
			}	
		} catch (Exception e) {
			System.out.println("关闭资源时发生异常");
			e.printStackTrace();
		}
	}
}

