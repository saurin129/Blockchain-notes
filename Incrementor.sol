pragma solidity 0.4.11;

contract Incrementor{

	address creator;
	uint iteration;


//create a public functio, where the sender=creator and the iteration is 0
	function Incrementor()
	{
		creator = msg.sender;
		iteration = 0;
	}
//create an function that adds 1 onto increment and makes it the new increment
	function increment()
	{
		iteration= iteration+1;
	}
// create a function that gets and returns the Itereatin
	function getIteration() constant returns (uint){

		return iteration;
	}
//create a kill function to recover funds just in case
	function killIncrementor() returns (bool status){
		if(msg.sender == creator){
			selfdestruct(creator);
		}
		return false;
	}
} 