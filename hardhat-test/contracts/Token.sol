// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0;

import "hardhat/console.sol";

//does not abide by the ERC20, simple test token
contract Token {
    string public name = "Best Token Ever";
    string public symbol = "BTE";

    uint256 public totalSupply = 100000;

    address public owner;

    mapping(address => uint256) balances;

    constructor() {
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }


    function transfer(address to, uint256 amount) external {
        console.log("Sender balance is %s tokens", balances[msg.sender]);
        console.log("Trying to send %s tokens to %s", amount, to);
        
        require(balances[msg.sender] >= amount, "Not enough tokens");

        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }

}