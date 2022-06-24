// SPDX-License-Itdentifier: UNLICENSED
pragma solidity ^0.8.0;

/*
    As I've mentioned above interaction and deployment of a contract requires some ether.
    This amount is calculated by finding 
        gas spent * gas price
        + gas is the unit of computation
        + gas spent is the total amount of gas used in a transaction
        + gas price is how much ether you are willing to pay per gas 
        Higher the gas the higher the priority of being included in a block.

    But there is limit to the amount of gas you can spend :
        + gas limit -  max amount of gas you are willing to pay for the transaction (set by you)
        + block gas limit - max amount of gas allowed in a block (set by the network)
*/

contract GasComputation {

    uint public i = 0;
    /* 
        Something happens when you use up all the gas given by you.
        That thing is 
            - the transaction fails
            - state changes are undone
            - but the gas used up during the execution will not be refunded
    */
    function mrRunForever() public {
        // you know the drill of infinite loops, these will do the trick
        // and BOOM! transaction fails.... ;)
        while(true) {
            i += 1;
        }
    }
}