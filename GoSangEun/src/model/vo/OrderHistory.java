package model.vo;

import java.io.Serializable;
import java.sql.Date;

public class OrderHistory implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8067454364625858491L;

	private String shopName;
	private String menuName;
	private int ordergroup;
	private int orderno;
	private int shopid;
	private String userId;
	private int menuNo;
	private int orderCount;
	private int orderSum;
	private String orderInfo;
	private String orderCheck;
	private Date orderDate;
	private String dvAddress;
	private int menuPrice;
	private int shopDvPrice;
	private String shopLogo;
	private String menuCode;
	
	public OrderHistory() {}

	public OrderHistory(String shopName, String menuName, int ordergroup, int orderno, int shopid, String userId,
			int menuNo, int orderCount, int orderSum, String orderInfo, String orderCheck, Date orderDate,
			String dvAddress, int menuPrice, int shopDvPrice, String shopLogo, String menuCode) {
		super();
		this.shopName = shopName;
		this.menuName = menuName;
		this.ordergroup = ordergroup;
		this.orderno = orderno;
		this.shopid = shopid;
		this.userId = userId;
		this.menuNo = menuNo;
		this.orderCount = orderCount;
		this.orderSum = orderSum;
		this.orderInfo = orderInfo;
		this.orderCheck = orderCheck;
		this.orderDate = orderDate;
		this.dvAddress = dvAddress;
		this.menuPrice = menuPrice;
		this.shopDvPrice = shopDvPrice;
		this.shopLogo = shopLogo;
		this.menuCode = menuCode;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getOrdergroup() {
		return ordergroup;
	}

	public void setOrdergroup(int ordergroup) {
		this.ordergroup = ordergroup;
	}

	public int getOrderno() {
		return orderno;
	}

	public void setOrderno(int orderno) {
		this.orderno = orderno;
	}

	public int getShopid() {
		return shopid;
	}

	public void setShopid(int shopid) {
		this.shopid = shopid;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}

	public int getOrderCount() {
		return orderCount;
	}

	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}

	public int getOrderSum() {
		return orderSum;
	}

	public void setOrderSum(int orderSum) {
		this.orderSum = orderSum;
	}

	public String getOrderInfo() {
		return orderInfo;
	}

	public void setOrderInfo(String orderInfo) {
		this.orderInfo = orderInfo;
	}

	public String getOrderCheck() {
		return orderCheck;
	}

	public void setOrderCheck(String orderCheck) {
		this.orderCheck = orderCheck;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getDvAddress() {
		return dvAddress;
	}

	public void setDvAddress(String dvAddress) {
		this.dvAddress = dvAddress;
	}

	public int getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}

	public int getShopDvPrice() {
		return shopDvPrice;
	}

	public void setShopDvPrice(int shopDvPrice) {
		this.shopDvPrice = shopDvPrice;
	}

	public String getShopLogo() {
		return shopLogo;
	}

	public void setShopLogo(String shopLogo) {
		this.shopLogo = shopLogo;
	}

	public String getMenuCode() {
		return menuCode;
	}

	public void setMenuCode(String menuCode) {
		this.menuCode = menuCode;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "OrderHistory [shopName=" + shopName + ", menuName=" + menuName + ", ordergroup=" + ordergroup
				+ ", orderno=" + orderno + ", shopid=" + shopid + ", userId=" + userId + ", menuNo=" + menuNo
				+ ", orderCount=" + orderCount + ", orderSum=" + orderSum + ", orderInfo=" + orderInfo + ", orderCheck="
				+ orderCheck + ", orderDate=" + orderDate + ", dvAddress=" + dvAddress + ", menuPrice=" + menuPrice
				+ ", shopDvPrice=" + shopDvPrice + ", shopLogo=" + shopLogo + ", menuCode=" + menuCode + "]";
	}


			
}