package model;

public class CartModel {
	private String product_name;
	private String unit_price;
	private String product_quantity;

	
	public CartModel(String product_name, String unit_price, String product_quantity) {
		this.product_name = product_name;
		this.unit_price = unit_price;
		this.product_quantity = product_quantity;

	}
	
	public String getProductName() {
		return product_name;
	}
	public void setProductName(String product_name) {
		this.product_name = product_name;
	}
	public String getUnitPrice() {
		return unit_price;
	}
	public void setUnitPrice(String unit_price) {
		this.unit_price = unit_price;
	}
	
	public String getProductQuantity() {
		return product_quantity;
	}
	public void setProductQuantity(String product_quantity) {
		this.product_quantity = product_quantity;
	}
}