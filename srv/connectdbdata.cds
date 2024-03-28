using {demo.db as db  } from '../db/dbfiledata';
// we are referring  demo.db as db here .. tells us that internal filefoldere where we have created in ..  it comes out from data
// from where we have created that demo.db
@path:'/connectdbdatadisplay'
//@path we are writing our own name here to understand 
service myservice {
    //service to connect and to display to a customer 
    entity employeed as projection on db.Employee
    entity Address as projection on db.Address;
    
//employeed is the name which we have created a new one like databse on which db which we already written as ref in that employee which we have created the data 
   //  

}