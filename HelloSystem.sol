pragma solidity 0.4.11;

/* We’re creating a new contract but we aren’t adding it to a mapping or other variable, 
instead we just create it and pass its address back to the called We need the deleteHS function 
because the creator of all the HelloSystem contracts is HelloFactory, which means that HelloFactory 
is the only contract (or account) that is allowed to remove them.
*/

contract HelloSystem{

	address owner;

	function HelloSystem(){
		if(msg.sender == owner){
			selfdestruct(owner);
		}
	}
}

contract HelloFactory {

	function createHS() returns (address hsAddr){
			return address(new HelloSystem());
	}
	function deleteHS(address hs){
		HelloSystem(hs).remove();
	}
}
