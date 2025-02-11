// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CustomerMessageApp {

    string[] public customerMessages;

    event NewMessage();

    function getCustomerMessages() public view returns (string[] memory) {

        return customerMessages;
    }

    function addCustomerMessage(string memory _message) public {

        customerMessages.push(_message);

        emit NewMessage();
    }
}
