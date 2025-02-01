/*
Your Goal: Make Some Food!
In the enum provided you'll see there are four types of Foods 

Take the values and store them in food1, food2, food3, and food4
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    enum Foods { Apple, Pizza, Bagel, Banana }

	Foods public food1 = Foods.Apple;
	Foods public food2 = Foods.Pizza;
	Foods public food3 = Foods.Bagel;
	Foods public food4 = Foods.Banana;
}
