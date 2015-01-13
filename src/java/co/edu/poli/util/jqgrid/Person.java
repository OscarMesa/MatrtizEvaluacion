/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.util.jqgrid;

public class Person {
 private String firstName;
 private String lastName;
 private String address;
 
 public Person(String firstName, String lastName, String address) {
  this.firstName = firstName;
  this.lastName = lastName;
  this.address = address;
 }
 
 public String getFirstName() {
  return firstName;
 }
 
 public void setFirstName(String firstName) {
  this.firstName = firstName;
 }
 
 public String getLastName() {
  return lastName;
 }
 
 public void setLastName(String lastName) {
  this.lastName = lastName;
 }
 
 public String getAddress() {
  return address;
 }
 
 public void setAddress(String address) {
  this.address = address;
 }
  
 public String toString() {
        return "{\"firstName\":\"" + firstName + "\", \"lastName\":\"" + lastName + "\", \"address\":\""
                + address + "\"}";
    }
}