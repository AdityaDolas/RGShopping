package com.OlShoping.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.OlShoping.config.DB_connection;
import com.OlShoping.pojo.Address;
import com.OlShoping.pojo.user;


public class AddreessDao {
	Connection con=DB_connection.getconnection();


	public boolean AddAddress(Address a)
	{
		try {
			String sql="insert into NEWADDRESS(STREET,BUILDINGNUMBER,LOCATION,CITY,STATE,PINCODE,EMAILID)values(?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,a.getStreet() );
			ps.setString(2,a.getBnum());
			ps.setString(3,a.getLocation());
			ps.setString(4,a.getCity());
			ps.setString(5,a.getState());
			ps.setString(6,a.getPincode() );
			ps.setString(7,a.getEmailId() );
			int i=ps.executeUpdate();
			if(i>0)
			{
				return true;	
			}

		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return false;


	}

	public boolean DeleteAddress(String Emailid)
	{
		try {
			String sql="delete from NEWADDRESS where Emailid=? ";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, Emailid);
			int i=ps.executeUpdate();
			if(i>0)
			{
				return true;		
			}

		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return false;

	}
	public boolean DeleteAddressByAddId(int id)
	{
		try {
			String sql="delete from NEWADDRESS where ADDRESSID=? ";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			if(i>0)
			{
				return true;		
			}

		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return false;

	}
	public boolean UpdateAddress(Address a)
	{
		try {
			String sql="Update  NEWADDRESS set STREET=?,BUILDINGNUMBER=?,LOCATION=?,CITY=?,STATE=?,PINCODE=? where EMAILID=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,a.getStreet() );
			ps.setString(2,a.getBnum());
			ps.setString(3,a.getLocation());
			ps.setString(4,a.getCity());
			ps.setString(5,a.getState());
			ps.setString(6,a.getPincode() );
			ps.setString(7,a.getEmailId() );
			int i=ps.executeUpdate();
			if(i>0)
			{
				return true;	
			}

		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return false;


	}
	
	public boolean UpdateAddressById(Address a)
	{
		try {
			String sql="Update  NEWADDRESS set STREET=?,BUILDINGNUMBER=?,LOCATION=?,CITY=?,STATE=?,PINCODE=? where ADDRESSID=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,a.getStreet() );
			ps.setString(2,a.getBnum());
			ps.setString(3,a.getLocation());
			ps.setString(4,a.getCity());
			ps.setString(5,a.getState());
			ps.setString(6,a.getPincode() );
			ps.setInt(7,a.getAddId());
			int i=ps.executeUpdate();
			if(i>0)
			{
				return true;	
			}

		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return false;


	}
	
	
	public Address GetAddressId(int id)
	{
		try {
			String sql="Select * from  NEWADDRESS where ADDRESSID=? ";
			PreparedStatement ps=con.prepareStatement(sql);
			Address a=new Address();
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				a.setAddId(rs.getInt(1));
				a.setStreet(rs.getString(2));
				a.setBnum(rs.getString(3));
				a.setLocation(rs.getString(4));
				a.setCity(rs.getString(5));
				a.setState(rs.getString(6));
				a.setPincode(rs.getString(7));
				a.setEmailId(rs.getString(8));

			}
			return a;


		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return null;


	}
	public List<Address> GetAddressListByEmail(String Emailid)
	{
		ArrayList<Address> al=new ArrayList<>();
		try {
			String sql="Select * from  NEWADDRESS where EMAILID=? ";
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, Emailid);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Address a=new Address();
				a.setAddId(rs.getInt(1));
				a.setStreet(rs.getString(2));
				a.setBnum(rs.getString(3));
				a.setLocation(rs.getString(4));
				a.setCity(rs.getString(5));
				a.setState(rs.getString(6));
				a.setPincode(rs.getString(7));
				a.setEmailId(rs.getString(8));
				
				al.add(a);
			}
			return al;


		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return null;


	}

	public List<Address> getlist()
	{
		List<Address> li=new ArrayList<>();
		String sql="select * from NEWADDRESS";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				Address a=new Address();
				a.setAddId(rs.getInt(1));
				a.setStreet(rs.getString(2));
				a.setBnum(rs.getString(3));
				a.setLocation(rs.getString(4));
				a.setCity(rs.getString(5));
				a.setState(rs.getString(6));
				a.setPincode(rs.getString(7));
				a.setEmailId(rs.getString(8));



				li.add(a);
			}


			return li;
		}
		catch (Exception e) {
			e.printStackTrace();
		}

		return null;	
	}
}
