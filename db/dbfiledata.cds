namespace demo.db;
//namespace is like in that we can we are creating one db in that which we want to create data ref 
using {my.reusuable as reuse } from './reusablecode';
using { cuid } from '@sap/cds/common';
//in asserts i have inbuilt things from there instaed of giving id i can pick from there already existing one i can take that id as cuid


entity Employee : cuid,reuse.persondetails
//for reuse.persondetails i am using fname name as reusable so instead of giving them here i am using reuse.aspectname
{ 
    //employee is like a database so to use that i am referring it as entity
   
    //here instead of id i am using cuid near entity 
    dob : Date;
    email :reuse.Email;
    // here we can use it by giving itsname.that type 
    phonenumber : reuse.PhoneNumber;
    address         : Composition of  Address
    // we are creating a folder to add the values to display to any customer as we are creating ref here 
    
//     entity Employee : cuid, managed {
//   fName           : String;
//   lName           : String;
//   gender          : String;
//   DOB             : Date;
//   contractStarted : Date;
//   email           : types.Email not null; // This Email has to follow the Format and shuld not be null
//   phone           : types.PhoneNumber not null;
//   address         : Composition of  Address; // <association or Composition name>_<key name>/address_ID will be generated once we add the Association
// }
}

entity Address {
  key ID       : UUID;
      city     : String not null;
      address  : String not null;
      pincode  : Integer not null;
      street   : String;
      landmark : String;
}


/**
 * Coposition: Tight Coupling
 * Association: Loose
 * Employee
 * EmployeeAddress
 * EmployeeSalary
 * Department
 */


// employee.details.EmployeeDetails-Address.csv
// context EmployeeDetails {
//   entity Address : cuid, managed {
//     city     : String not null;
//     address  : String not null;
//     pincode  : Integer not null;
//     street   : String;
//     landmark : String;
//   }

    


