pragma solidity 0.4.11;

//This is a demonstration of the various global variables available to contracts. 
//This list is probably not exhaustive, especially weeks and months from now. (9/2015)

contract InformationCaller{

	address creator;

//create a function to say that the creator is the mssg 
 function InformationCalle(){

 	   creator = msg.sender;
 	}
//create a functin that gets the miners address
	function getMinerAddress() constant returns (address){

		return block.coinbase; //this is the miners address 
		}
//create a function that gets the current difficulty of the block
	function getBlockDifficulty() constant returns (uint) {

			return block.difficulty;
		}
//create a function that gets the current gas limit
	function getGasLimit() constant returns (uint) {

			return block.gaslimit;

		}
//create a function that gets the block number we're in 
	function getBlockNumber() constant returns (uint) {

			return block.number;
		}
//create a function that gets the Time stamp of the block
	function getTimeStamp() constant returns (uint) {

			return block.timestamp;
		}
//create a function that gets the Message Data
	function getMessageData() constant returns (bytes) {

			return msg.data;
		}
// create a function that gets the Message sender
	function getMessageSender() constant returns(address){

			return msg.sender;
		}
//create a function that gets the message value
	function getMessageValue() payable returns (uint){
			return msg.value;
		}
//create a function that gets mthe message gas
	function getMessageGas() constant returns (uint){

			return msg.gas;
		}
//create a function that gets the Tax gas price
	function getTxGasPrice() constant returns (uint){

			return tx.gasprice;
		}
//create a function that gets the tax origin 
	function getTxOrigin() constant returns (address){

			return tx.origin;
		}
//create a function that gets the Contract address and returns the address and where this is
	function getContractAddress() constant returns(address){
			return this;
		}
//create a function that gets the contract balance, of this 
	function getBalance() payable returns(uint){

			return this.balance;
		}
//create a kill function 
	function killInfoCaller() returns (bool status){
		if(msg.sender == creator){
			selfdestruct(creator);
			}
		return true;
		}
	}