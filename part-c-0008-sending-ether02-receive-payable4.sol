/*
When you make a function call in a smart contract, you can also send Ether (ETH) at the same time. 
This lets you both transfer value (in the form of ETH) and interact with the contract in one step.

Paying ETH with a function call is like dropping coins into a vending machine to select a product – 
you initiate an action (calling the function) while also providing payment (sending Ether) to receive the desired outcome.

To send ETH while making the function call, we just need to add {} between the name of the function and its parameters.

Example: Call the myFunc function and pay 100 Wei.

myFunc{value: 100}();

The unit of Ether we transferred is represented in Wei, while 1 Ether = 10^18 Wei
*/
