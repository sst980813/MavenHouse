package com.ssm.pojo;

import java.io.Serializable;

public class Resourcepojo implements Serializable{
	private static final long serialVersionUID = 1548241812757106215L;
	int id;
	String title;
	String createday;
	String price;
	String renttype;
	String housetype;
	String floor;
	String area;
	String orient;
	String village;
	String location;
	String longitude;
	String latitude;
	String img;
	String introduce;
	String detailsrc;
	String subway;
	String ifgood;
	public Resourcepojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Resourcepojo(int id, String title, String createday, String price, String renttype, String housetype,
			String floor, String area, String orient, String village, String location, String longitude,
			String latitude, String img, String introduce, String detailsrc,String subway, String ifgood) {
		super();
		this.id = id;
		this.title = title;
		this.createday = createday;
		this.price = price;
		this.renttype = renttype;
		this.housetype = housetype;
		this.floor = floor;
		this.area = area;
		this.orient = orient;
		this.village = village;
		this.location = location;
		this.longitude = longitude;
		this.latitude = latitude;
		this.img = img;
		this.introduce = introduce;
		this.detailsrc=detailsrc;
		this.subway = subway;
		this.ifgood = ifgood;
	}
	public int getId() {
		return id;
	}
	public Resourcepojo setId(int id) {
		this.id = id;
		return this;
	}
	public String getTitle() {
		return title;
	}
	public Resourcepojo setTitle(String title) {
		this.title = title;
		return this;
	}
	public String getCreateday() {
		return createday;
	}
	public Resourcepojo setCreateday(String createday) {
		this.createday = createday;
		return this;
	}
	public String getPrice() {
		return price;
	}
	public Resourcepojo setPrice(String price) {
		this.price = price;
		return this;
	}
	public String getRenttype() {
		return renttype;
	}
	public Resourcepojo setRenttype(String renttype) {
		this.renttype = renttype;
		return this;
	}
	public String getHousetype() {
		return housetype;
	}
	public Resourcepojo setHousetype(String housetype) {
		this.housetype = housetype;
		return this;
	}
	public String getFloor() {
		return floor;
	}
	public Resourcepojo setFloor(String floor) {
		this.floor = floor;
		return this;
	}
	public String getArea() {
		return area;
	}
	public Resourcepojo setArea(String area) {
		this.area = area;
		return this;
	}
	public String getOrient() {
		return orient;
	}
	public Resourcepojo setOrient(String orient) {
		this.orient = orient;
		return this;
	}
	public String getVillage() {
		return village;
	}
	public Resourcepojo setVillage(String village) {
		this.village = village;
		return this;
	}
	public String getLocation() {
		return location;
	}
	public Resourcepojo setLocation(String location) {
		this.location = location;
		return this;
	}
	public String getLongitude() {
		return longitude;
	}
	public Resourcepojo setLongitude(String longitude) {
		this.longitude = longitude;
		return this;
	}
	public String getLatitude() {
		return latitude;
	}
	public Resourcepojo setLatitude(String latitude) {
		this.latitude = latitude;
		return this;
	}
	public String getImg() {
		return img;
	}
	public Resourcepojo setImg(String img) {
		this.img = img;
		return this;
	}
	public String getIntroduce() {
		return introduce;
	}
	public Resourcepojo setIntroduce(String introduce) {
		this.introduce = introduce;
		return this;
	}
	public String getSubway() {
		return subway;
	}
	public Resourcepojo setSubway(String subway) {
		this.subway = subway;
		return this;
	}
	public String getIfgood() {
		return ifgood;
	}
	public Resourcepojo setIfgood(String ifgood) {
		this.ifgood = ifgood;
		return this;
	}
	public String getDetailsrc() {
		return detailsrc;
	}
	public void setDetailsrc(String detailsrc) {
		this.detailsrc = detailsrc;
	}
	@Override
	public String toString() {
		return "Resourcepojo [id=" + id + ", title=" + title + ", createday=" + createday + ", price=" + price
				+ ", renttype=" + renttype + ", housetype=" + housetype + ", floor=" + floor + ", area=" + area
				+ ", orient=" + orient + ", village=" + village + ", location=" + location + ", longitude=" + longitude
				+ ", latitude=" + latitude + ", img=" + img + ", introduce=" + introduce + ", detailsrc=" + detailsrc
				+ ", subway=" + subway + ", ifgood=" + ifgood + "]";
	}
	
	
	
	
}
