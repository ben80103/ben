// DAO: Database Access Object
// �M�d�PDept Table���s�W,�ק�,�R���P�d��

import java.sql.*;
import mvcdemo.bean.StudentBean;

public class StudentDAO {

  private Connection conn;

   //�غc�l
  public StudentDAO(Connection conn) {
		this.conn = conn;
  }

 
  //�s�W�ǥ͸��
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
	    System.err.println("�s�W�ǥ͸�Ʈɵo�Ϳ��~:" + e);
		  return false;
    }
  }


}