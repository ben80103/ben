// DAO: Database Access Object
// 專責與Dept Table之新增,修改,刪除與查詢

import java.sql.*;
import mvcdemo.bean.StudentBean;

public class StudentDAO {

  private Connection conn;

   //建構子
  public StudentDAO(Connection conn) {
		this.conn = conn;
  }

 
  //新增學生資料
  public boolean insertStudent(StudentBean studentData) {
    try {
      String sqlString = "insert into jwstudent values('"
	                  	   	+studentData.getId()+"','"
		                    +studentData.getName()+"','"
                            + studentData.getBirthyear()+"','"
                            + studentData.getBirthmonth()+"','"
                            + studentData.getBirthday()+"','" 
                            + studentData.getZipcode()+"','"
                            + studentData.getAddress()+"','"
                            + studentData.getPhone()+"','"
                            + studentData.getMailaddress()+ "')";
                           
      Statement stmt = conn.createStatement(); 
      System.out.println(sqlString);
	    int updatecount = stmt.executeUpdate(sqlString);
      stmt.close();
      if (updatecount >= 1) return true;
      else                  return false;
	  } catch (Exception e) {
	    System.err.println("新增學生資料時發生錯誤:" + e);
		  return false;
    }
  }


}