pragma solidity 0.4.11;

//This Contract will retrive and store the balance of its creator address.

contract BalanceChecker{

	address creator;
	uint creatorBalance;


	function BalanceChecker() public
	{
		creator = msg.sender;
		creatorBalance = creator.balance;


		}

		function getAddress() constant returns(address){
			return this;

			}

		function getBalance() constant returns(uint)
		{
			return creatorBalance;
			}
		function getCreatorBalance() constant returns(uint)
		{
			return creator.balance;
			}
//kill function 
	function killCreator() returns(bool status)
{
		if (msg.sender == creator){
		selfdestruct(creator);
		}
		return false;
}

	}