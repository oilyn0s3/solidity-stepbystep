// SPDX-License_Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract SimpleStorage { // because it only reads and writes state variables

    // state variable to store the data through the function
    uint public magicNum; 

    /*

    The functions which change the value of a state variable are called 
    setter functions. Calling a setter function initiates a transaction,
    which costs gas or wei. More the cumputation inside a setter function more gas it consumes.

    */

    function set(uint _magicNum) public { //setter fn
        magicNum = _magicNum;

    }

    /*
    
    Getter functions just read the data from the blockchain, it does not edit the state of the 
    blockchain. It just read the state variables without sending transactions hence not consuming
    any gas or wei. The have "view" visibility.
    
    */

    function get() public view returns (uint) {
        return magicNum;
    }
}