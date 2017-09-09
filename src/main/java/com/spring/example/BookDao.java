package com.spring.example;

import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.util.List;  
import org.springframework.jdbc.core.BeanPropertyRowMapper;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;  
  
public class BookDao {  
	
	JdbcTemplate template;  
  
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	}  
	public int save(Book p){  
	    String sql="insert into Book(book_name, price) values('"+p.getBookName()+"',"+p.getPrice()+")";  
	    return template.update(sql);  
	}  
	public int update(Book p){  
	    String sql="update Book set book_name='"+p.getBookName()+"', price="+p.getPrice() +" where id="+p.getId()+"";  
	    return template.update(sql);  
	}  
	public int delete(int id){  
	    String sql="delete from Book where id="+id+"";  
	    return template.update(sql);  
	}  
	public Book getBookById(int id){  
	    String sql="select * from Book where id=?";  
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Book>(Book.class));  
	}  
	public List<Book> getBooks() {  
		
	    return template.query("select * from Book",new RowMapper<Book>() {  
	        public Book mapRow(ResultSet rs, int row) throws SQLException {  
	        	Book e = new Book();  
	            e.setId(rs.getInt(1));  
	            e.setBookName(rs.getString(2));  
	            e.setPrice(rs.getDouble(3));  
	            //System.out.println("all--" + e);
	            return e;  
	        }  
	    });  
	}  
}  
