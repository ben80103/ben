package mvcdemo.bean;

public class CampingBean {
	String campingname;
	String campingdate;
	String campingcontent;
	String address;
	String people;

	public CampingBean() {
	}

	public CampingBean(String pCampingname, String pCampingdate, String pCampingcontent, String pAddress,
			String pPeople) {
		this.campingname = pCampingname;
		this.campingdate = pCampingdate;
		this.campingcontent = pCampingcontent;
		this.address = pAddress;
		this.people = pPeople;

	}

	public void setCampingname(String pCampingname) {
		this.campingname = pCampingname;
	}

	public String getCampingname() {
		return campingname;
	}

	public void setCampingdate(String pCampingdate) {
		this.campingdate = pCampingdate;
	}

	public String getCampingdate() {
		return campingdate;
	}

	public void setCampingcontent(String pCampingcontent) {
		this.campingcontent = pCampingcontent;
	}

	public String getCampingcontent() {
		return campingcontent;
	}

	public void setAddress(String pAddress) {
		this.address = pAddress;
	}

	public String getAddress() {
		return address;
	}

	public void setPeople(String pPeople) {
		this.people = pPeople;
	}

	public String getPeople() {
		return people;
	}

}