package entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="orders_detail")
public class orders_detail {
	private int orders_detailId;
	private Customer customer;
	private orders orders;
	private int count;
	private Goods goods;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getOrderId() {
		return orders_detailId;
	}
	public void setOrderId(int orderId) {
		this.orders_detailId = orderId;
	}
	@ManyToOne
	@JoinColumn(name="customer")
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	@ManyToOne
	@JoinColumn(name="ordersId")
	public orders getOrders() {
		return orders;
	}
	public void setOrders(orders orders) {
		this.orders = orders;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@ManyToOne
	@JoinColumn(name="goods")
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
}
