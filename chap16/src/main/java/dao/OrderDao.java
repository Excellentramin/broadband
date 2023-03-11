package dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import pojo.Customer;
import pojo.Order;
import pojo.User;

public interface OrderDao {
	/* 添加订单 */
	@Insert("insert into order1(orderCus,orderUser,orderTime,dueTime,orderType,total) values(#{arg0},#{arg1},#{arg2},#{arg3},#{arg4},#{arg5})")
	public int addorder(String orderCus,String orderUser,String orderTime,String dueTime,String orderType,float total);
	/* 保存订单 */
	@Select("select * from order1")
	public List<Order> getOrderList();
	/* 删除订单 */
	@Delete("delete from order1 where orderId=#{arg0}")
	public void deleteOrder(int orderId);
	/* 修改订单 */
	  @Update("update order1 set dueTime=#{arg0},total=#{arg1}"+"where orderId=#{arg2}") 
	  public void renewOrder(String dueTime,float total,int ordeId);
	  /* 按客户名模糊查询订单 */
	@Select("select * from order1 where orderCus like concat('%',#{searchOrder},'%')")
	public List<Order> getOrderList1(String searchOrder);
	/* 按订单号查询订单 */
	@Select("select * from order1 where orderId=#{orderId}")
	public Order checkSqlOId(int orderId);
	/* 修改订单 */
	@Update("update order1 set orderCus=#{arg0},orderUser=#{arg1},orderType=#{arg2}"+"where orderId=#{arg3}") 
	  public void editOrder(String orderCus,String orderUser,String orderType,int ordeId);
	/* 添加订单的到期时间 */
	@Select("select * from order1 where orderTime between #{arg0} and #{arg1}")
	public List<Order>count(String time,String time1);

	
}
