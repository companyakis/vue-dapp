/*
A function modifier in Solidity allows you to define reusable pre-conditions or post-conditions that can be applied to multiple functions within a contract, 
enhancing code readability and enforcing standardized behavior.

Function modifier can be regarded as a guard, checking constraints like whether a specific address can access a particular function and clean up after the execution.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {

  uint8 public age;

  address public voter;

  modifier checkAge() {

    require(age > 18, "Age must be bigger than 18!");
    _;
  }

  modifier onlyRelated() {

    require((msg.sender == voter), "Only the voter...");
    _;
  }

}


