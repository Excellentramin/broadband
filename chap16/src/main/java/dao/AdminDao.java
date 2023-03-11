package dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import pojo.Admin;

public interface AdminDao {
	@Select("select * from admin where adminName=#{adminName}")
	public Admin checkSqlAname(String adminName);

	@Insert("insert into admin(adminName,password) values(#{arg0},#{arg1})")
	public int insertSql(String userName,String password2);
}
