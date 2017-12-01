package entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="customer")
public class Customer {
	private int customerId;
	@NotEmpty(message="用户名不能为空")  
	private String customerName;
	@NotEmpty(message="密码不能为空")  
	@Length(min=6,max=16,message="密码长度不正确，得在6-16之间") 
	private String customerPassword;
	private String customerTrueName;
	private String customerAddress;
	private String customerBirthday;
	private String customerPhone;
	private String customerImg;
	@Id
	@GeneratedValue(generator="my_gen")
    @GenericGenerator(name = "my_gen", strategy = "increment")
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerPassword() {
		return customerPassword;
	}
	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}
	public String getCustomerTrueName() {
		return customerTrueName;
	}
	public void setCustomerTrueName(String customerTrueName) {
		this.customerTrueName = customerTrueName;
	}
	public String getCustomerAddress() {
		return customerAddress;
	}
	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	public String getCustomerBirthday() {
		return customerBirthday;
	}
	public void setCustomerBirthday(String customerBirthday) {
		this.customerBirthday = customerBirthday;
	}
	public String getCustomerPhone() {
		return customerPhone;
	}
	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}
	public String getCustomerImg() {
		return customerImg;
	}
	public void setCustomerImg(String customerImg) {
		this.customerImg = customerImg;
	}
	

}
