/*
Events in Solidity allow you to log and monitor specific changes, such as contract function calls or transactions. 
This information can be used for client-side applications (dApps) to track transaction execution.
Events are like a radio broadcast. When something important happens, it sends out a message with specific details that others can tune into and listen for.

*/

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

contract FinTech {

  event LogReward(uint reward);
}
