package house.hList.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import dB.DataS;
import house.hList.model.HouseBeen;

public class MountainHouseDAO_JDBC {

	
	DataS dataS = new DataS();
	public List<HouseBeen> listMH(String add){
		List<HouseBeen> hBList = new ArrayList<>();
		dataS.setUsername("HI");
		dataS.setUserPassword("HI");
		DataSource datasoure = dataS.getDatasoure();
		System.out.println("1");
		try (
				Connection connection = datasoure.getConnection();
				){
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("select * from mountainhouse ");
			
	
			while(rs.next()) {
				HouseBeen hB =new HouseBeen();c
				
				hB.setMountainName(rs.getString("mountainname"));
				hB.setName(rs.getString("name"));
				hB.setSeat(rs.getInt("seat"));
				hB.setCampSeat(rs.getInt("campseat"));
				hB.setHight(rs.getString("hight"));
				hBList.add(hB);
				
				
				}
				}catch (SQLException e) {
					e.printStackTrace();
		}
		return hBList;
		}
			
	public List<HouseBeen> selectMountain(String add){
		List<HouseBeen> hBList =new ArrayList<>();
		dataS.setUsername("HI");
		dataS.setUserPassword("HI");
		DataSource datasoure = dataS.getDatasoure();
		System.out.println("3");
	
		try (
				Connection connection = datasoure.getConnection();
				PreparedStatement stmt = connection.prepareStatement("select * from mountainhouse where mountainname like ?");
//			ResultSet rs = stmt.executeQuery();
				){
		
			stmt.setString(1, "%"+add+"%");
			ResultSet rs=stmt.executeQuery();
			
			while(rs.next()) {
				HouseBeen hB =new HouseBeen();
				
				hB.setMountainName(rs.getString("mountainname"));
				hB.setName(rs.getString("name"));
				hB.setSeat(rs.getInt("seat"));
				hB.setCampSeat(rs.getInt("campseat"));
				hB.setHight(rs.getString("hight"));
				hBList.add(hB);
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return hBList;
	}
	
	public List<HouseBeen> selectName(String add){
		List<HouseBeen> hBList =new ArrayList<>();
		dataS.setUsername("HI");
		dataS.setUserPassword("HI");
		DataSource datasoure = dataS.getDatasoure();
		System.out.println("name");
		
		try (
				Connection connection = datasoure.getConnection();
				PreparedStatement stmt = connection.prepareStatement("select * from mountainhouse where name like ?");
//			ResultSet rs = stmt.executeQuery();
				){
		
			stmt.setString(1, "%"+add+"%");
			ResultSet rs=stmt.executeQuery();
			
			while(rs.next()) {
				HouseBeen hB =new HouseBeen();
				
				hB.setMountainName(rs.getString("mountainname"));
				hB.setName(rs.getString("name"));
				hB.setSeat(rs.getInt("seat"));
				hB.setCampSeat(rs.getInt("campseat"));
				hB.setHight(rs.getString("hight"));
				hBList.add(hB);
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return hBList;
	}
	
}
