/*
Indexed is a keyword used in event parameters in Solidity. It allows these parameters to be logged and searchable, aiding in event filtering. Solidity permits up to three indexed parameters per event.

The indexed parameter in events is like attaching a label to specific envelopes, making it easier to quickly sort and retrieve relevant information when searching through a collection of messages.

Why should we index event parameters?

For example, as a NFT trading platform admin, we may want to index the NFT ID in the transaction event so users could search for all the trading information on a specific NFT.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FinTech {

  event LogReward(address indexed _a, uint reward);

  function changeReward(address _a, uint _r) public {

    emit LogReward(_a, _r);
  }

}

