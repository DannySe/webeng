package de.karlsruhe.dhbw.webeng.addressbook;

import java.util.List;

/**
 * This class was provided by the lecturer
 */
public class AddressList {

    private final AddressBook addressBook;
    private String searchString;
    private String errorMessage;

    public AddressList() {
        addressBook = AddressBook.getInstance();
    }

    public void setSearchString(String searchString) {
        this.searchString = searchString;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public List<Address> getAddressList() {
        return addressBook.search(searchString);
    }

    public Address getAddress(String id) {
        return addressBook.readAddress(id);
    }

    public void deleteAddress(String id) {
        addressBook.deleteAddress(id);
    }

    public boolean containsAddress(String id) {
        return addressBook.containsId(id);
    }
}
