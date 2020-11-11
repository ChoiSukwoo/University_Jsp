package ch16.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import ch16.vo.courseBean;

public class courseDAO {

	   DataSource ds;
	   Connection con;
	   Statement  stmt;
	   PreparedStatement pstmt;
	   ResultSet rs;

	  public courseDAO() {
		   try{
			      Context init = new InitialContext();
			      ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			   } catch(Exception ex){
			      System.out.println("DB   : " + ex);
			      return;
			   }
			}
	// SELECT 
	  public List<courseBean> getCourseList(){
	     String sql="select * from course where course_fees > 0";
	     List<courseBean> list = new ArrayList<courseBean>();
	     try{
	        con = ds.getConnection();
	        stmt = con.createStatement();
	        rs = stmt.executeQuery(sql);

	        while(rs.next()){
	           courseBean subj = new courseBean();
	           subj.setCourse_id(rs.getString("course_id"));
	           subj.setTitle(rs.getString("title"));
	           subj.setC_number(rs.getInt("c_number"));
	           subj.setProfessor_id(rs.getString("professor_id"));
	           subj.setCourse_fees(rs.getInt("course_fees"));
	           list.add(subj);
	        }
	        rs.close();
	        stmt.close();
	        con.close();
	        return list;
	     } catch(Exception ex){
	        System.out.println("getCourseList  : " + ex);
	     }
	     return null;
	    }
}
