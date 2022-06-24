// SPDX-License-Identifier: UNLICENSED
pragma solidity  ^0.8.0;

/*
    Every transaction we make through our contract or even deploying a contract requires
    some amount of ether. As the required amount is smaller so we kind of have a smaller value 
    called "wei", sort of similar to  1 rupees = 100 paise.

    Here 1 ether = 10^18 wei 

*/

contract EtherCostMumboJumbo{

    /*
         solidity also has some reserved units of ethers and date stuff
         for more info check out https://docs.soliditylang.org/en/v0.8.14/units-and-global-variables.html
    */
    uint public oneWei = 1 wei; // wei used here is the smallest and fundamental unit of ether 
    bool public isOneWei = 1 wei == 1; // this will be true

    uint public oneEther = 1 ether; // ether is also a unit and this will hold 1000000000000000000 as a value because 1 ether is made of 10^18 wei 
    bool public isOneEther = 1 ether == 1e18; // this would also be true 

}
