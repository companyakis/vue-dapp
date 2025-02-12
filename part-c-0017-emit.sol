/*
A defined event remains dormant until it's broadcasted or emitted with all required information. 
Emitting an event triggers it, logging details on the blockchain for transaction tracking in client-side applications.

Using emit in Solidity is like lighting a beacon in the dark – it signals an event within a smart contract, making it visible and trackable to external observers, 
similar to how a lit beacon is easily noticeable and provides information to distant onlookers.

*/

contract FinTech {

  event LogReward(uint reward);

  function changeReward(uint _r) public {

    emit LogReward(_r);
  }

}
