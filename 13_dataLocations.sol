// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.8

/* 
    In Solidity the place where values of the variables are stored matters a lot.
    Values can be stored in various data locations: memory, storage and calldata.

    Just a reminder - variables of the value type store an independent copy of a value,
    while variables of the reference type (array,struct,mapping) only store the location of the value

    If we use a reference type in a function, we have to specify in which data location their values 
    are stored. The price for the execution of the function is influenced by the data location; 
    creating copies from reference types costs gas.

*/


/*
    Types of data locations:
        - Storage: + Values stored in storage are stored permanently on the blockchain and, 
                     therefore, are expensive to use. 
                   + State variables are always stored in storage.
                   + 
        
        - Memory: + Values stored in memory are only stored temporarily and are not on the blockchain. 
                  + They only exist during the execution of an external function and are discarded afterward. 
                  + They are cheaper to use than values stored in storage. 
                  + Function parameters need to have the data location memory or calldata.
                  + Assignments from memory to memory create references instead of copies. If you change the value 
                    in one variable, the value of all other variables that reference the same data will be changed.
        
        - Calldata: Calldata stores function arguments. Like memory, calldata is only stored temporarily 
                    during the execution of an external function. In contrast to values stored in memory, 
                    values stored in calldata can not be changed. Calldata is the cheapest data location to use.
