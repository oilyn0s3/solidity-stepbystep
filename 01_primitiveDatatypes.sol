// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

/*
Well let's start with 4 basic data types,  
some are ccommon ones found in many other languages.

    - boolean 
    - uint 
    - int
    - address
    - string
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
    uint public uInt256 = 45667; // also, uint is an alias for uint256
    
    /* 
    Coming to int, it allows negative numbers as well.

    int8 ranges from -2**8 to 2**7 -1 
    ... etc ...
    int128 ranges from -2**128 to 2**127 -1 
    int256 ranges from -2**256 to 2**255 -1
    */

    int128 public Int128 = -12;
    int public Int256 = 324; // just like uint, int is an alias for int256

    // we also have a method to find min and max value of int or any data type
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    string public someName = "CrazyFox"; // string datatype

    // a new data type address 
    address public someAccountAddress =  0x29e18d29E70eBCdFCA3dBb5010Ce09c762D6aD30; 
    // this is a real address, send me some crypto currencies ;)

    //variables are given default values if they are left unassigned

    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000




}