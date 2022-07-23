// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// There isn't much to the for and while in solidity, except for the fact that 
// running loop recklessely might use a lot of gas, so be careful out there out there

contract forAWhile {

   function loops() public pure {

        // for loop 
        for (uint i = 0; i < 10; i++) {
            if (i == 3){
                continue; // normal continue statement
            }
            if (i == 7) {
                break; // normal break statement
            }
        }
        
        uint j;
        while (j < 10) {
            j++;
        }
   } 
}