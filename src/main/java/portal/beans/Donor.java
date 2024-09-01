package portal.beans;

public class Donor {
	private String donor_id, password, name, email, phone, gender, bloodgroup, city, status, date;
private int age;
public Donor() {
	super();
	// TODO Auto-generated constructor stub
}
public Donor(String name, String email, String phone, String gender, String bloodgroup, String city, int age) {
	super();
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.gender = gender;
	this.bloodgroup = bloodgroup;
	this.city = city;
	this.age = age;
}
public String getDonor_id() {
	return donor_id;
}
public void setDonor_id(String donor_id) {
	this.donor_id = donor_id;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getBloodgroup() {
	return bloodgroup;
}
public void setBloodgroup(String bloodgroup) {
	this.bloodgroup = bloodgroup;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
}
