// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Mustafa {

    /*
    In Solidity, immutable variables, similar to constants, have a fixed value. 
    However, unlike constants, immutables can also be assigned a value during
    the contract deployment. The values of these variables can be set inside 
    the constructor but cannot be modified afterward.

    1. Immutables can only be used for the definition of state variables.
    2. Immutables are typically represented in uppercase.
    */

    uint immutable finalBudgetUSD;

    constructor (uint _budget) {

        finalBudgetUSD = _budget;
    }

    function getBudget() public view returns (uint) {

        return finalBudgetUSD;
    }

}



  



  

