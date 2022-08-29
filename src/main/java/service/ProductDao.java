package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Member;

public class ProductDao {
	public Connection getConnection() {
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
				"c##kic", "1111");
        return conn;
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	return null;
}

public void close(Connection conn,
		PreparedStatement pstmt, ResultSet rs) {
	try {
		if (rs != null)rs.close(); 
		if (pstmt != null)pstmt.close(); 
		if (conn != null)conn.close(); 
	} catch (SQLException e) {
		e.printStackTrace();
	}
}

public int insertProduct(ProductDao mem) {
	Connection conn = getConnection();
	PreparedStatement pstmt = null;
	String sql = "insert into Category values (?,?,?,?,?,?,?)";
	
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,  mem.getCnum());
		pstmt.setString(2,  mem.getCname());
		pstmt.setString(3,  mem.getCpicture());
		pstmt.setInt(4,  mem.getCtext());
		pstmt.setString(5,  mem.getCprice());
		pstmt.setString(6,  mem.getCqty());
		pstmt.setString(7,  mem.getCmenu());
		
		return pstmt.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close(conn, pstmt, null);
	}
	
	return 0;
}
	public ProductDao selectOne(String cname) {
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		String sql = "select * from member where id = ?";
		
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cname);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				//반복자로 사용한다.
				ProductDao m = new ProductDao();
				m.setCnum(rs.getString("cnum"));
				m.setCname(rs.getString("cname"));
				m.setCpicture(rs.getString("cpicture"));
				m.setCtext(rs.getInt("ctext"));
				m.setCprice(rs.getString("cprice"));
				m.setCqty(rs.getString("cqty"));
				m.setCmenu(rs.getString("cmenu"));
				return m;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn, pstmt, rs);
		}
		
		return null;
	}
	
	/*
	public int updateMember(Member mem) {
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		String sql = "update member set name=?, gender=?, tel=?,"
				+ "email=?, picture=? where id = ?";
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  mem.getName());
			pstmt.setInt(2,  mem.getGender());
			pstmt.setString(3,  mem.getTel());
			pstmt.setString(4,  mem.getEmail());
			pstmt.setString(5,  mem.getPicture());
			pstmt.setString(6,  mem.getId());
			
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(conn, pstmt, null);
		}
		
		return 0;
	}
	
	public int deleteMember(String id) {
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		String sql = "delete member where id = ?";
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(conn, pstmt, null);
		}
		
		return 0;
	}
	
	public int chagePass(String id, String pass) {
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		String sql = "update member set pass=? where id =?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, pass);
			pstmt.setString(2, id);
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(conn, pstmt, null);
		}
		
		return 0;
	}
	
	public List<Member> memberList() {
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		String sql = "select * from member ";
		ResultSet rs = null;
		List<Member> li = new ArrayList<Member>();
		
		try {
			pstmt = conn.prepareStatement(sql);
		
			rs=pstmt.executeQuery();
			while (rs.next()) {
				//반복자로 사용한다.
				Member m = new Member();
				m.setId(rs.getString("id"));
				m.setPass(rs.getString("pass"));
				m.setName(rs.getString("name"));
				m.setGender(rs.getInt("gender"));
				m.setTel(rs.getString("tel"));
				m.setEmail(rs.getString("email"));
				m.setPicture(rs.getString("picture"));
				li.add(m);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn, pstmt, rs);
		}
		
		return li;
	}
	*/
}	//end member
