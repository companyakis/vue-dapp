/*
Your Goal: Return Memory Vote
Create an external, view function called createVote which takes Choices value as a parameter and returns an instance of type Vote.
This function should use the Choices value and the msg.sender as the values to create the vote.

*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {

	enum Choices { Yes, No }

	struct Vote {

		Choices choice;
		address voter;
	}
	
	function createVote(Choices c) external view returns (Vote memory) {

		return Vote(c, msg.sender);
	}


}
