// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

/*
Well let's start with 4 basic data types,  
some are ccommon ones found in many other languages.

    - boolean 
    - uint 
    - int
    - address

let's not discuss them now :)
*/


contract primitiveDataTypes {

    bool public someBooleanData = true; // or false

    /*
    Hmmm now comes the Unsigned Integer or "uint" for short,
    which means it can only hold non-negative integers.
    An uint can have different sizes ranging from uint8 and
    all the way to uint256.

    uint8 ranges from 0 to 2**8 - 1
    ... etc ...
    uint256 ranges from 0 to 2**256 - 1
    
    alright onto the code
    */

    uint8 public uInt8 = 1;
    uint public uInt256 = 45667; // also uint is an alias for uint256
 




}