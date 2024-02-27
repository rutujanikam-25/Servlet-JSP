package dao;

import service.CustomerService;
import utility.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.BookFlight;
import model.Flight;
import model.User;

public class UseDao implements CustomerService{

	@Override
	public User signUp(User user) {
		try(Connection con=DBUtil.getConnect();){
		String regQuery="insert into UserTable(user_name,user_password,user_phone) values(?,?,?)";	
		PreparedStatement ps=con.prepareStatement(regQuery);
		ps.setString(1, user.getUserName());
		ps.setString(2, user.getPassword());
		ps.setLong(3, user.getPhone());
		int signUpStatus=ps.executeUpdate();
		if(signUpStatus>0) {
			return user;
		}
		
		}catch(Exception e) {
			System.out.println(e);
		}
		return null;
	}

	@Override
	public User getLogin(String userName, String pw) {
		User user=null;
		try(Connection con =DBUtil.getConnect()){
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
	
	public Flight getFlightById(int id) {
		try(Connection con=DBUtil.getConnect();){
			PreparedStatement ps=con.prepareStatement("select * from FlightInfo where flight_id=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				int fId=rs.getInt(1);
				String fName=rs.getString(2);
				String fSrc=rs.getString(3);
				String fDest=rs.getString(4);
				java.sql.Date d1=rs.getDate(5);
				double price=rs.getDouble(6);
				Flight f=new Flight();
				f.setFlightId(fId);
				f.setFlightName(fName);
				f.setfSrc(fSrc);
				f.setfDest(fDest);
				f.setfDate(d1.toLocalDate());
				f.setfPrice(price);
				return f;
				
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return null;
		
	}
	
	public BookFlight addFlight(BookFlight flight)
	{
		try(Connection con=DBUtil.getConnect();)
		{
			String insertQuery="insert into bookingDetails(prn_number,flight_name,flight_source,flight_dest,user_name,flight_price)values(?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(insertQuery);
			ps.setString(1, flight.getBookingPNR());
			ps.setString(2, flight.getFlightName());
			ps.setString(3, flight.getSourceAirport());
			ps.setString(4, flight.getDestAirport());
			ps.setString(5, flight.getUserName());
			ps.setDouble(6, flight.getFlightPrice());
			int status=ps.executeUpdate();
			if(status>0)
			{
				return flight;
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return null;
	}
	
	public static ArrayList<Integer> odd(int num){
		
	   ArrayList<Integer> list=new ArrayList<Integer>();
		 for(int i=0;i<=num;i++){
			   if(i%2!=0){
				  
				   list.add(i);
			   }
	}
		 
      return list;
}
}
