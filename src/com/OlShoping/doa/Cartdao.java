package com.OlShoping.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.OlShoping.config.DB_connection;
import com.OlShoping.pojo.Cart;

public class Cartdao {
	Connection con=DB_connection.getconnection();
	public boolean AddToCart(int pid,String email)
	{

		String sql="insert into CARTMENU(pid,EMAIL) values(?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, pid);
			ps.setString(2, email);
			int i=ps.executeUpdate();
			if(i>0)
			{
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public List<Cart> GetList(String email)
	{
		String sql="select p.PRODUCT_NAME ,p.PRODUCT_PRICE ,p.PRODUCT_DESCRIPTION, c.CARTID   from PRODUCT p inner join  CARTMENU  c on p.PRODUCT_ID =c.PID  where email= ?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			List<Cart> li=new ArrayList<Cart>();
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Cart c=new Cart();
				c.setPname(rs.getString(1));
				c.setPprice(rs.getDouble(2));
				c.setDiscription(rs.getString(3));
				c.setCid(rs.getInt(4));
				
				li.add(c);

			}
			return li;
		} 
		catch (Exception e) {
			e.printStackTrace();		
			}
		return null;
	}
	public boolean DeleteCart(int cid)
	{
		String sql="delete from CARTMENU where CARTID=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, cid);
			int i=ps.executeUpdate();
			if(i>0)
			{
				return true;
			}
			
		} catch (Exception e) {
e.printStackTrace();		}
		return false;
	}

}
