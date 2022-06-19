// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ConstantsImmutable {

    // for the looks constants are often capatialized 
    address public constant MY_ADDRESS = 0x29e18d29E70eBCdFCA3dBb5010Ce09c762D6aD30;
    uint public constant MYNUM = 69420;

    // Unlike Constants, Immutable variables can be initialized after the declaration
    address public immutable MY_ADDRESS_1; // does not need a initialization at declaration
    uint public immutable MYMAGICNUM;

    constructor(uint _myNum) {
        MY_ADDRESS_1 = msg.sender;
        MYMAGICNUM = _myNum;
    }
}
