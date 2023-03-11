package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import pojo.User;



public interface UserDao {
	
	/* 通过用户名查询用户 */
	@Select("select * from user where userName=#{userName}")
	public User checkSqlUname(String userName);

	/* 获取用户的登录状态 */
	  @Select("select  state from user where userName=#{userName}") 
	  public User checkSqlState(String userName);
	  /* 添加用户 */
	@Insert("insert into user(userName,password,state) values(#{arg0},#{arg1},#{arg2})")
	public int insertSql(String userName,String password2,String state);
	/* 获取数据库的用户表 */
	@Select("select * from user")
	public List<User> getUserList();
	/* 修改用户的登录状态 */
	@Update("update user set state=#{arg0}"+"where userId=#{arg1}")
	public void updateState(String state,int userId);
	/* 删除用户 */
	@Delete("delete from user where userId=#{userId}")
	public void deleteUser(int userId);
	/* 通过用户号查询用户 */
	@Select("select * from user where userId=#{userId}")
	public User checkSqlId(int userId);
	/* 修改用户 */
	@Update ("update user set userName=#{arg0},password=#{arg1}"+"where userId=#{arg2}")
	public void updateuser(String userName,String password,int userId);

	
	
	
}
