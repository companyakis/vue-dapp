/*
 Your Goal: Require 1 Ether
Add a payable constructor method that requires a 1 ether deposit.

If at least 1 ether is not sent to the constructor, revert the transaction.


*/





/*
Reverting Transactions

In the EVM the main opcode to revert a transaction is REVERT. There are three ways to invoke the REVERT opcode from Solidity are assert, require and revert.

We can revert a transaction in Solidity by using the require function and the revert statement.

A require statement has two forms:

require(someBooleanCondition);
require(someBooleanCondition, "Optional error message");

The revert keyword also has two forms:

// old syntax to revert with a string
revert("Some error message");
// new syntax to revert with a custom error
revert SomeCustomError(arg1, arg2, ...);

Notice that, either way, revert does not take a boolean condition. Revert will always revert, so you will usually see it wrapped in a conditional statement:

if(someCondition) {
     revert SomeCustomError(arg1, arg2, ...);
}

*/
