// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

/*
    Arrays, mappings and structs are all reference types. Unlike value types (e.g. booleans or integers) 
    reference types don't store their value directly. Instead, they store the location where the value is being stored. 
    Multiple reference type variables could reference the same location, and a change in one variable would affect the others, 
    therefore they need to be handled carefully.

    In Solidity, an array stores an ordered list of values of the same type that are indexed numerically.

    There are two types of arrays, compile-time fixed-size and dynamic arrays. 
    For fixed-size arrays, we need to declare the size of the array before it is compiled. 
    The size of dynamic arrays can be changed after the contract has been compiled.

*/

contract Array {

    uint[] public array; // a dynamic array declaration
    uint[] public array2 = [1,2,3]; // a dynamic array with 3 elements
    uint[5] public array3; // a fixed size array or a static array with 10 elements all initialized with 0 i.e. default value of uint

    // getting data from an array
    function get(uint _index) public view returns (uint) {
        return array2[_index];
    }
    
    // solidity can also return the whole array
    // but arrays can be indefinitely long in length so it should be avoided
    function getArray() public view returns(uint[] memory) {
        return array;
    }

    // adding elements to an array and increasing the array's size by 1 
    function pushElement(uint _element) public {
        array2.push( _element ); // works as append in python
    }

    // removing an element from end and decreasing the array's size by 1 
    function popElement() public {
        array2.pop();
    }

    // removing an element by index, it does not increase the size of the array.
    // It just resets the value to it's default i.e. zero
    function removeElement(uint _index) public {
        delete array2[_index];
    }

    // getting array length 
    function getLength() public view returns (uint) {
        return array.length;
    }
}


