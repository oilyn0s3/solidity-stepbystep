// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

/*
    Mappings are like dictonaries having a key and value pair.
    Maps are created with syntax 
                                mapping(keyType => valueType) visibility varName
    The keyType can be any built-in value, bytes, strings and even contracts.
    valueType can be of any type including another mapping or array.
    Mappings are not iterablle.
*/

contract Mapping {

    mapping( address => uint ) public someMap; // mapping from an address to a uint 

    function get(address _someAddr) public view returns (uint) { // Getter Function  
        // when queried the mapping will always return a value, 
        // if the value is not set default value of that data type will be returned
        return someMap[_someAddr];
    }

    function set(address _someAddr, uint _someValue) public {  // Setter Function
        someMap[_someAddr] = _someValue; // update the value at address
    }

    function remove(address _someAddr) public {
        delete someMap[_someAddr]; // reset the value to the default value
    }

}

contract nestedMapping {

    mapping( address => mapping( uint=> bool ) ) public someNestedMap;

    function get(address _someAddr, uint _someValue) public view returns (bool) { 
        return someNestedMap[_someAddr][_someValue];
    }

    function set(address _someAddr, uint _someValue, bool _someBool) public {
        someNestedMap[_someAddr][_someValue] = _someBool;
    }

    function remove(address _someAddr, uint _someValue) public {
        delete someNestedMap[_someAddr][_someValue]; 
    }
}
