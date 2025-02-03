/*
Your Goal: Self Destruct
When the donate function is called, trigger a selfdestruct in the contract!

*/







/*

Self Destruct
Contracts can destroy themselves by using the SELFDESTRUCT opcode on the EVM! This opcode actually refunds ether in order to incentivize cleaning up the blockchain of unused contracts.

contract Contract {
    uint _countdown = 10;

    constructor() payable { }

    function tick() public {
        _countdown--;
        if(_countdown == 0) {
            // NOTE: we must cast to address payable here
            // some solidity methods protect 
            // against accidentally sending ether
            selfdestruct(payable(msg.sender));
        }
    }
}

After 10 calls to the tick function the Contract will selfdestruct! 

So you might be wondering, why did we provide msg.sender as the argument to selfdestruct? 

The address provided to the selfdestruct function gets all of the ether remaining in the contract! Ether sent to the payable constructor will be refunded to the final caller of the tick function.

Let's see it in action:

When you call selfdestruct on a contract account, the bytecode is cleared. The contract will no longer be able to respond to ether transfers.

If you are going to use selfdestruct, you should be sure that nobody will accidentally send ether to your contract in the future. 
There may be no recourse for getting that ether back if they do. Future funds sent to this address could be locked forever! 


*/
