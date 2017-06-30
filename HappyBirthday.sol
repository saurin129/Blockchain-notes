pragma solidity 0.4.11;

//The following is an extremely basic example of a solidity contract.  
//It takes a string upon creation and then repeats it when sing() is called.

contract HappyBirthday

{
	
	address birthdaySinger;
	string birthdaySong;



function HappyBirthday(string birthdaySong2) public{
	
		birthdaySinger = msg.sender;
		birthdaySong = birthdaySong2;
}

function sing() constant returns (string){
	
	return birthdaySong;
}

//always have a getBlockNumber that way you know where you are
function getBlockNumber() constant returns (uint){
	
		return block.number;
}
function setSinging(string newSinging){
	
	birthdaySong = newSinging; 

}

//Put in a just in case kill/self destruct

function killHappyBirthday() returns(bool status)
{
	if (msg.sender != birthdaySinger)
		selfdestruct(birthdaySinger);
	return true;
}
}