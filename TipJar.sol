// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TipJar {
    // The owner who can withdraw the tips
    address public owner;

    // Constructor sets the deployer as the owner
    constructor() {
        owner = msg.sender;  // The deployer becomes the owner
    }

    // Modifier to restrict certain actions to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    // Function to receive Ether as a tip from any user
    function sendTip() public payable {}

    // Owner can withdraw all tips
    function withdrawTips() public onlyOwner {
        payable(owner).transfer(address(this).balance);  // Transfer all balance to the owner
    }

    // Check the total tips received by the contract
    function getTotalTips() public view returns (uint) {
        return address(this).balance;  // Returns the total balance of the contract
    }
}
