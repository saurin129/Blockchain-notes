pragma solidity 0.4.11;

contract MoneyGetter{
	
	address creator;
	uint contractValue;


//create the person who gets the money, aka constructor with msg sender and make the contract value equal to msg value
	function MoneyGetter() 
	{
		creator=msg.sender;
		contractValue = msg.value;
	}
// create a function that gets the contract value
	function getcontractValue() constant returns (uint)
	{
		return contractValue;
	}
// create a function that sends Ether
	function getSendEther() public 
	{
		creator.send(1000000000000000000);
	}
// create the standard kill function 
	function killMoneyGetter() returns (bool status)
	{
			if(msg.sender == creator){
				selfdestruct(creator);
			}
			return false;
	}
}
