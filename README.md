# -Module-1-ETH--AVAX(Functions and Errors)
This is basically a solidity program that consists of a contract that displays the basic fuction of the require(),revert()and assert() functions.

## Code Description
This contract on solidity shows an example of the three major error handling functions in solidity that are require(), revert(), and assert() functions.The program is based in a situation where we have to check the score of the user. 
If the score of the user i above 10, then the requested transaction of be done to their account, if not then the error will be handled using the functions.And it will handle divide by zero error.

## Lets Get Started
To run the program,you can use Remix platform, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar.
Save the file with a .sol extension (e.g., contract.sol). Copy and paste the following code into the file:

```
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
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar.

Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile contract.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the contract from the dropdown menu, and then click on the "Deploy" button.

After that you can put your credentials that will be your score, amount of tokens you want, and 2 integers to perform division.

After that go onto each fucntions RequireCheck(), RevertCheck() and AssertCheck() put the required inputs and press transact.

## Authors 
Aryaman Semta

21bcs3853@cuchd.in

## Lisence
This project is licensed under the MIT License - see the LICENSE.md file for details
