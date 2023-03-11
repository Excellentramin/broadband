package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import pojo.Customer;
import pojo.User;

public interface CusDao {
	/* 保存数据库的customer */
	@Select("select * from customer")
	public List<Customer> getCusList();

	/* 删除客户 */
	@Delete("delete from customer where cusId=#{cusId}")
	public void deleteCus(int cusId);
	@Select("select * from customer where cusId=#{cusId}")
	public Customer checkSqlcusId(int cusId);
	/* 更新客户 */
	@Update ("update customer set cusName=#{arg0},address=#{arg1},cusPhone=#{arg2},cusType=#{arg3}"+"where cusId=#{arg4}")
	public void updatecus(String cusName,String address,String cusPhone,String cusType,int cusId);
	/* 以客户名进行模糊查询 */
	@Select("select * from customer where cusName like concat('%',#{search},'%')")
	public List<Customer> getCusList1(String search);
	/* 添加客户 */
	@Insert("insert into customer(cusName,address,cusPhone,cusType) values(#{arg0},#{arg1},#{arg2},#{arg3})")
	public int addcus(String cusName,String address,String cusPhone,String cusType);
	
	
}
