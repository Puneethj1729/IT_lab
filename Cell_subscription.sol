pragma solidity ^0.5.10;

contract CellSubscription {
	uint256 monthlyCost;

    constructor(uint256 cost) public {
        monthlyCost = cost;
    }

    function makePayment() payable public {
    }

    function withdrawBalance() public {
        msg.sender.transfer(address(this).balance);
    }

    function isBalanceCurrent(uint256 monthsElapsed) public view returns (bool) {
        return monthlyCost * monthsElapsed == address(this).balance;
    }
}
