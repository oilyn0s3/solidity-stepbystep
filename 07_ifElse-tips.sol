// SPDX-License-Identifier : UNLICENSED
pragma solidity ^0.8.0;

contract ifElse {
    uint public q = 3;
    /*
        Yes, Solidity is very much like a normal programming language.
        It has if, else if and else.
    */
    
    function allThat(uint _x) public pure returns (uint) {
        if ( _x < 6 ) {
            return 0;
        } else if ( _x < 9 ) {
            return 1;
        } else {
            return 2;
        }
    }

    function smartTernary(uint _x, uint _y) public pure returns (uint) {

        /*
            Consider the following if-else sequence for finding greatest of two numbers

            if ( _x < _y ) {
                return _y;
            } else {
                return _x;
            }

            and this can also be written in a single line using inline if-else or a ternary operator "?" 
        */
        return _x < _y ? _y : _x; // can be read as, if _x < _y then return _y else return _x

        /*  
            Let's take another example
                uint256 q;
                if ( _x < q ) {
                    q = _x;
                } else {
                    q = 0;
                }
                this code assigns value of _x to q if _x is completely divisible by 2, else assigns 0;

        */
        }


    function anotherFunction(uint x) public returns (uint) {

        /*  
            Let's take another example
                if ( x < q ) {
                    return q = x;
                } else {
                    return q = 0;
                }
        */
        return q = x < q ? x : 0 ; // this code assigns value of _x to q if _x is completely divisible by 2, else assigns 0;
                


    }
}
