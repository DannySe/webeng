package de.karlsruhe.dhbw.webeng.addressbook;

/**
 * This class was provided by the lecturer
 */
public class Address {
    private String id;
    private String name;
    private String christianname;
    private String addressform;
    private String email;
    private String phone;
    private String mobile;
    private String street;
    private String number;
    private String city;
    private String postcode;
    private String country;
    private String birthday;

    private AddressBook addressBook = AddressBook.getInstance();
    private boolean isRead = false;

    public Address() {
    }

    public Address(String id, String name, String christianname, String addressform, String email, String phone,
                   String mobile, String street, String number, String city, String postcode, String country,
                   String birthday) {
        this.id = id;
        this.name = name;
        this.christianname = christianname;
        this.addressform = addressform;
        this.email = email;
        this.phone = phone;
        this.mobile = mobile;
        this.street = street;
        this.number = number;
        this.city = city;
        this.postcode = postcode;
        this.country = country;
        this.birthday = birthday;
        this.isRead = true;
    }

    public String getId() {
        return id;
    }

    public boolean isValidId() {
        return addressBook.containsId(id);
    }

    public void setId(String id) {
        this.id = id;
        isRead = false;
    }

    public String getChristianname() {
        if (!isRead)
            read();
        return christianname;
    }

    public void setChristianname(String christianname) {
        this.christianname = christianname;
    }

    public String getAddressform() {
        if (!isRead)
            read();
        return addressform;
    }

    public void setAddressform(String addressform) {
        this.addressform = addressform;
    }

    public String getEmail() {
        if (!isRead)
            read();
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        if (!isRead)
            read();
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMobile() {
        if (!isRead)
            read();
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getStreet() {
        if (!isRead)
            read();
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getNumber() {
        if (!isRead)
            read();
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getCity() {
        if (!isRead)
            read();
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPostcode() {
        if (!isRead)
            read();
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getCountry() {
        if (!isRead)
            read();
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getBirthday() {
        if (!isRead)
            read();
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        if (!isRead)
            read();
        return name;
    }

    public void read() {
        if (this.isValidId()) {
            Address address = addressBook.readAddress(id);
            this.id = address.id;
            this.name = address.name;
            this.christianname = address.christianname;
            this.addressform = address.addressform;
            this.email = address.email;
            this.phone = address.phone;
            this.mobile = address.mobile;
            this.street = address.street;
            this.number = address.number;
            this.city = address.city;
            this.postcode = address.postcode;
            this.country = address.country;
            this.birthday = address.birthday;
            this.isRead = true;
        }
    }

    public void save() {
        addressBook.saveAddress(this);
    }
}

