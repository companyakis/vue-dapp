// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Mustafa {

    mapping (uint => uint) public salary; // employee id and salary

    function setSalary(uint id, uint s) public {

        salary[id] = s;
    }

    function salaryIncrease(uint id, uint extra) public {

        salary[id] += extra;
    }

    function getSalary(uint id) public view returns (uint) {

        return salary[id];
    }  

}
