package entity;


import java.util.HashSet;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="orders")
public class orders {
	private int ordersId;
	private Customer customerId;
	private double money;
	private	Set<orders_detail> orders_detail = new HashSet<orders_detail>();
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getShoppingId() {
		return ordersId;
	}
	public void setShoppingId(int shoppingId) {
		this.ordersId = shoppingId;
	}
	@OneToMany(mappedBy = "orders",targetEntity=orders_detail.class,cascade=CascadeType.ALL)
	public Set<orders_detail> getOrders() {
		return orders_detail;
	}
	public void setOrders(Set<orders_detail> orders) {
		this.orders_detail = orders;
	}
	
	@ManyToOne
	@JoinColumn(name="customerId")
	public Customer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Customer customerId) {
		this.customerId = customerId;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	
}