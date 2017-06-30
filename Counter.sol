pragma solidity 0.4.11 ; 

//Basic Counter including 2 while loops 

contract CounterSum {
	
	address creationist;
	uint[10] numbers;


	function CounterSum()
	{

		creationist = msg.sender;
		uint x; 
		while(x < numbers.length){

			numbers[x]=x;
			++x;

		}
	}


	function getSum() constant returns (uint)
	{
		uint sum = 0;
		uint x = 0;
		while(x < numbers.length){

			sum = sum + numbers[x];
			++x;
		}
	
		return sum; 
	}


//kill function as always
function killCounterSum() 
{
	if (msg.sender == creationist)
		selfdestruct(creationist);
	}
}

