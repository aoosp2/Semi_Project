package model.vo;

import java.io.Serializable;

public class ShopMenu implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9001365691493623424L;

	private int No;			// 메뉴번호
	private int shopId;		// 식당번호
	private String Code;	// 메뉴코드
	private String Name;	// 메뉴이름
	private int Price;	// 메뉴가격
	private String info;	// 메뉴설명

	public ShopMenu() {
		super();
	}

	public ShopMenu(int no, int shopId, String code, String name, int price, String info) {
		super();
		No = no;
		this.shopId = shopId;
		Code = code;
		Name = name;
		Price = price;
		this.info = info;
	}

	public ShopMenu(int no, int shopId, String code, String name, int price) {
		super();
		No = no;
		this.shopId = shopId;
		Code = code;
		Name = name;
		Price = price;
	}

	public int getNo() {
		return No;
	}

	public void setNo(int no) {
		No = no;
	}

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
	}

	public String getCode() {
		return Code;
	}

	public void setCode(String code) {
		Code = code;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	@Override
	public String toString() {
		return "ShopMenu [No=" + No + ", shopId=" + shopId + ", Code=" + Code + ", Name=" + Name + ", Price=" + Price
				+ ", info=" + info + "]";
	}

}
