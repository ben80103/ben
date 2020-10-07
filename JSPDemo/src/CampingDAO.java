
import java.sql.*;
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


}