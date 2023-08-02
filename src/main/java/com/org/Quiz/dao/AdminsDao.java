package com.org.Quiz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.org.Quiz.dto.Admins;
import com.org.Quiz.service.Provider;

public class AdminsDao {
	public static boolean doValidate(Admins ad) {

		boolean status = false;
		try {
			Connection con = Provider.getConnection();
			String sql = "select * from admintable where userid=? and password=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, ad.getUsername());
			pst.setString(2, ad.getPassword());
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				status = true;
			} else {
				status = false;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

}
