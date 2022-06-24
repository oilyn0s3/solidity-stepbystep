// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

/*
    Variables can be decalared in 3 scopes:
        - local 
            + decalred inside a function
            + not stored on the blockchain
        - state 
            + decalred outside the function
            + stored on the blockchain
        - global
            + global is global, it mostly provides information about the blockchain eg. msg.sender .
*/

contract Variables {

    // state variables
    string public meSome = "aaaah"; // public variables = gas free 
    uint public meNum = 69;

    function doSomethingtoMe() public view { // kinky

        // variables with local scope
        uint magicNumber = 420; // notice there is no scope keywords like "public"

        // some known global variables 
        uint timestamp = block.timestamp; // current block timestamp
        address sender = msg.sender; // adress of the contract caller 

    }

}