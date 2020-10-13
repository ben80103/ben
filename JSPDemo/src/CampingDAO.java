
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import mvcdemo.bean.CampingBean;


public class CampingDAO {

  private Connection conn;

   
  public CampingDAO(Connection conn) {
		this.conn = conn;
  }

 
 
  public boolean insertCamping(CampingBean campingData) {
    try {
      String sqlString = "insert into camping values('"
	                  	   	+campingData.getCampingname()+"','"
		                    +campingData.getCampingdate()+"','"
                            +campingData.getCampingcontent()+"','"
                            +campingData.getAddress()+"','"
                            +campingData.getPeople()+"')";
                           
      Statement stmt = conn.createStatement();
      System.out.println(sqlString);
	    int updatecount = stmt.executeUpdate(sqlString);
      stmt.close();
      if (updatecount >= 1) return true;
      else                  return false;
	  } catch (Exception e) {
	    System.err.println("新增資料發生錯誤:" + e);
		  return false;
    }
  }
  
  
	public ArrayList<CampingBean> selectCamping(String add){
		

		ArrayList<CampingBean> hBList = new ArrayList<>();
		
		try (
				
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("select * from camping ");
				){
			
			
	
			while(rs.next()) {
				CampingBean hB =new CampingBean();
				
				hB.setCampingname(rs.getString("campingname"));
				hB.setCampingdate(rs.getString("campingdate"));
				hB.setCampingcontent(rs.getString("campingcontent"));
				hB.setAddress(rs.getString("address"));
				hB.setPeople(rs.getString("people"));
				hBList.add(hB);
				
				
				}
				}catch (SQLException e) {
					e.printStackTrace();
		}
		return hBList;
		}



	public void deleteCamping(String del) {
		// TODO Auto-generated method stub
		
		try(
				Statement stmt = conn.createStatement();){
			
				PreparedStatement rs = conn.prepareStatement("delete from camping where campingname=?");
				rs.setString(1,del);
				rs.executeUpdate();
		}
				
	catch (SQLException e) {
		e.printStackTrace();
}
	}



	



	


	
	
    
  

}