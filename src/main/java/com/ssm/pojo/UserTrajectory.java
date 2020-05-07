package com.ssm.pojo;
import java.io.Serializable;
import java.util.Date;

/**
 * 用户行为轨迹
 */
public class UserTrajectory implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6117141804713146231L;
	
	private int id;
	private int trajectoryType;
	private String explaindetail;
	private Date createTime;
	private String appID;
	public UserTrajectory() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserTrajectory(int id, int trajectoryType, String explain, Date createTime, String appID) {
		super();
		this.id = id;
		this.trajectoryType = trajectoryType;
		this.explaindetail = explain;
		this.createTime = createTime;
		this.appID = appID;
	}
	public int getId() {
		return id;
	}
	public UserTrajectory setId(int id) {
		this.id = id;
		return this;
	}
	public int getTrajectoryType() {
		return trajectoryType;
	}
	public UserTrajectory setTrajectoryType(int trajectoryType) {
		this.trajectoryType = trajectoryType;
		return this;
	}
	public String getExplaindetail() {
		return explaindetail;
	}
	public UserTrajectory setExplaindetail(String explain) {
		this.explaindetail = explain;
		return this;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public UserTrajectory setCreateTime(Date createTime) {
		this.createTime = createTime;
		return this;
	}
	public String getAppID() {
		return appID;
	}
	public UserTrajectory setAppID(String appID) {
		this.appID = appID;
		return this;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "UserTrajectory [id=" + id + ", trajectoryType=" + trajectoryType + ", explaindetail=" + explaindetail
				+ ", createTime=" + createTime + ", appID=" + appID + "]";
	}
	
	
	
	
}
