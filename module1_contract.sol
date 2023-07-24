// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
//creating a contract
contract errorhandling{
    uint public coinbalance=0;
    uint public quotient=0;

    //creating a function with name RequireCheck and parameters score and coins
    function RequireCheck(uint score, uint coins) public payable  {
        coinbalance+=coins;
        //using require function and giving it a condition
        require(score>=10,"Sorry!! Score is less than 10. Transaction is not possible");
    }

    error Throw_error(string);
    //creating another function 
    function RevertCheck(uint score, uint coins)public payable  {
        coinbalance+=coins;
        //using if conditon and using revert function inside the if condition
        if(score<10)
            revert Throw_error("Score is less than 10. Transaction is not possible");
    }

    //creating a function and using an assert function inside it
    function AssertCheck(uint i, uint j) public {
        assert(j!=0);

        quotient=i/j;

    }
    

}