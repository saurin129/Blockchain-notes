pragma solidity 0.4.11 ; 

//Basic Counter including 2 while loops 

contract CounterSum {
	
	address creationist;
	uint[10] numbers;


	function CounterSum()
	{

		creationist = msg.sender;

		uint x = 0; 
		while(x < numbers.length){

			numbers[x]=x;
			++x;

		}
	}


	function getSum()  public constant returns (uint)
	{
		uint sum = 0;
		uint x = 0;
		while(x < numbers.length){

			sum = sum + numbers[x];
			++x;
		}
	
		return sum; 
	}

    function getValue() returns (uint){
        return numbers[9];
    }

//kill function as always
function killCounterSum() returns (bool status)
{
	if (msg.sender == creationist){
		selfdestruct(creationist);
	}
	return false;
}

}
