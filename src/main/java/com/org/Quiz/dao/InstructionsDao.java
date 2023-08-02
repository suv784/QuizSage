package com.org.Quiz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.org.Quiz.dto.Instructions;
import com.org.Quiz.service.Provider;

public class InstructionsDao {
	public static boolean insertInstruction(Instructions ist) {

		boolean status = false;
		try {

			Connection con = Provider.getConnection();
			String sql = "insert into instructiontable values(?)"; 
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, ist.getInstruction());

			int val = pst.executeUpdate();
			if (val > 0) {
				status = true;
			} else {
				status = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public static ArrayList<Instructions> getAllRecords() {
		ArrayList<Instructions> samp = new ArrayList<Instructions>();
		try {

			samp.clear();
			Connection con = Provider.getConnection();   
			String sql = "select * from instructiontable"; 
			PreparedStatement pst = con.prepareStatement(sql);

			ResultSet rs = pst.executeQuery(sql);
			while (rs.next()) {
				Instructions i = new Instructions();
				i.setInstruction(rs.getString(1));
				samp.add(i);

			}

		} catch (Exception e2) {
			e2.printStackTrace();
		}
		return samp;
	}

	public static int deleteRecord(Instructions ist) {
		int val = 0;
		try {

			Connection con = Provider.getConnection();
			String sql = "delete from instructiontable where instruction=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, ist.getInstruction());

			val = pst.executeUpdate();
			

		} catch (Exception e) {
			val = -1;
		}
		return val;
	}

	public static int doUpdateNowRecord(String instaoriginal, String instamodified) {
		int status = 0;
		try {

			Connection con = Provider.getConnection();
			String sql = "update instructiontable set instruction=? where instruction=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, instamodified);
			pst.setString(2, instaoriginal);

			int val = pst.executeUpdate();
			if (val > 0) {
				status = 1;
			} else {
				status = -1;
			}
		} catch (Exception f) {
			status = 2;
			f.printStackTrace();
		}

		return status;
	}

}
