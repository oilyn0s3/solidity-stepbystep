// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;


/*
    Enums are custom data types consisting of a limited set of constant values. 
    We use enums when our variables should only get assigned a value from a 
    predefined set of values.
*/

contract Enum {

    // defining a enum representing a amazon order status
    /*
        enum members are named when you define them, 
        they are stored as unsigned integers, not strings. 
        They are numbered in the order that they were defined, 
        the first member starting at 0. The initial value of status, 
        in this case, is 0.
    */

    enum OrderStutus {
        Processing,
        Confirmed, 
        Shipped,
        OutForDelivery,
        Delivered,
        Canceled
    } 
    /*
        Processing     - 0
        Confirmed      - 1
        Shipped        - 2
        OutForDelivery - 3
        Delivered      - 4
        Canceled       - 5
    */
    
    OrderStutus public myOrder; // by default it is set to the first element i.e Processing

    // accessing the order status
    function getStatus() public view returns(OrderStutus) {
        return myOrder;
    }

    // updating the order status
    function updateStatus(OrderStutus _newStatus) public {
        myOrder = _newStatus;
    }

    // we can also update the status by directly accessing the enum elements
    function cancelOrder() public {
        myOrder = OrderStutus.Canceled;
    }

    // deleting resets the enum to its first value i.e. 0
    function resetOrder() public {
        delete myOrder;
    }
}