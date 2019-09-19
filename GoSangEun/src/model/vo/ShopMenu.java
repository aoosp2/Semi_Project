package model.vo;

import java.io.Serializable;

public class ShopMenu implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9001365691493623424L;

	private int shopId; 		// 식당번호
	private String menuNo;		// 메뉴번
	private String menuName;	// 메뉴이름
	private int menuPrice;		// 가격
	private String menuInfo;	// 메뉴설명

	public ShopMenu() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ShopMenu(int shopId, String menuNo, String menuName, int menuPrice, String menuInfo) {
		super();
		this.shopId = shopId;
		this.menuNo = menuNo;
		this.menuName = menuName;
		this.menuPrice = menuPrice;
		this.menuInfo = menuInfo;
	}

	public ShopMenu(int shopId, String menuNo, String menuName, int menuPrice) {
		super();
		this.shopId = shopId;
		this.menuNo = menuNo;
		this.menuName = menuName;
		this.menuPrice = menuPrice;
	}

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
	}

	public String getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(String menuNo) {
		this.menuNo = menuNo;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}

	public String getMenuInfo() {
		return menuInfo;
	}

	public void setMenuInfo(String menuInfo) {
		this.menuInfo = menuInfo;
	}

	@Override
	public String toString() {
		return "ShopMenu [shopId=" + shopId + ", menuNo=" + menuNo + ", menuName=" + menuName + ", menuPrice="
				+ menuPrice + ", menuInfo=" + menuInfo + "]";
	}

}
