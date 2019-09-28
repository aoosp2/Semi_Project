package model.vo;

import java.io.Serializable;

public class ShopOrder implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2095843090908870850L;

	private int orderId;		// 주문번호
	private int shopId;			// 식당번호
	private String userId;		// 사용자아이디
	private int menuNo;			// 메뉴코드
	private int orderCount;		// 주문 갯수
	private int orderSum;		// 주문 합계
	private String orderInfo;	// 요청사항
	private Boolean orderCheck;	// 결제 여부 (Y/N)

	public ShopOrder() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ShopOrder(int orderId, int shopId, String userId, int menuNo, int orderCount, int orderSum, String orderInfo,
			Boolean orderCheck) {
		super();
		this.orderId = orderId;
		this.shopId = shopId;
		this.userId = userId;
		this.menuNo = menuNo;
		this.orderCount = orderCount;
		this.orderSum = orderSum;
		this.orderInfo = orderInfo;
		this.orderCheck = orderCheck;
	}

	public ShopOrder(int orderId, int shopId, String userId, int menuNo, int orderCount, int orderSum,
			Boolean orderCheck) {
		super();
		this.orderId = orderId;
		this.shopId = shopId;
		this.userId = userId;
		this.menuNo = menuNo;
		this.orderCount = orderCount;
		this.orderSum = orderSum;
		this.orderCheck = orderCheck;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
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

	public Boolean getOrderCheck() {
		return orderCheck;
	}

	public void setOrderCheck(Boolean orderCheck) {
		this.orderCheck = orderCheck;
	}

	@Override
	public String toString() {
		return "ShopOrder [orderId=" + orderId + ", shopId=" + shopId + ", userId=" + userId + ", menuNo=" + menuNo
				+ ", orderCount=" + orderCount + ", orderSum=" + orderSum + ", orderInfo=" + orderInfo + ", orderCheck="
				+ orderCheck + "]";
	}

}
