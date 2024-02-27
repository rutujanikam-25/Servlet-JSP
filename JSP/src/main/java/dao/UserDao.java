package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DBUtility.DBConnection;
import model.User;



public class UserDao {
	public User getLogin(String userName, String pw) {
		User user=null;
		try(Connection con =DBConnection.getDBConnect()){
			String loginQuery="select * from UserTable where user_name=? and user_password=?";
			PreparedStatement ps=con.prepareStatement(loginQuery);
			ps.setString(1, userName);
			ps.setString(2, pw);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				int id=rs.getInt(1);
				String un=rs.getString(2);
				String pwd=rs.getString(3);
				long ph=rs.getLong(4);
				user = new User();
				user.setUserId(id);
				user.setUserName(un);
				user.setPassword(pwd);
				user.setPhone(ph);
				return user;
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return null;
	}
}
