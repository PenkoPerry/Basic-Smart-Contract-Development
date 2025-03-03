// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FomoToken {
    // State variables
    string public name = "FomoToken";
    string public symbol = "FOMO";
    uint8 public decimals = 2;  // 2 decimals for easier readability
    uint256 public totalSupply;

    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;

    // Events
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    // Constructor to initialize the token supply
    constructor(uint256 initialSupply) {
        require(initialSupply > 0, "Initial supply must be greater than 0");
        totalSupply = initialSupply * (10 ** decimals);  // Adjust for decimals
        _balances[msg.sender] = totalSupply;  // Assign initial tokens to the contract creator
        emit Transfer(address(0), msg.sender, totalSupply);  // Emit Transfer event
    }

    // Check balance of an address
    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }

    // Transfer function to send tokens from sender to recipient
    function transfer(address to, uint256 amount) public returns (bool) {
        require(to != address(0), "Invalid recipient address");  // Ensure valid recipient
        require(_balances[msg.sender] >= amount, "Insufficient balance");  // Ensure sender has enough balance

        // Perform the transfer securely
        _balances[msg.sender] -= amount;
        _balances[to] += amount;

        emit Transfer(msg.sender, to, amount);
        return true;
    }

    // Approve spender to spend tokens on behalf of the sender
    function approve(address spender, uint256 amount) public returns (bool) {
        require(spender != address(0), "Invalid spender address");  // Ensure valid spender
        _allowances[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    // Check allowance granted to spender
    function allowance(address owner, address spender) public view returns (uint256) {
        return _allowances[owner][spender];
    }

    // Transfer tokens on behalf of the owner (approved spending)
    function transferFrom(address from, address to, uint256 amount) public returns (bool) {
        require(to != address(0), "Invalid recipient address");  // Ensure valid recipient
        require(_balances[from] >= amount, "Insufficient balance");  // Ensure sender has enough balance
        require(_allowances[from][msg.sender] >= amount, "Allowance exceeded");  // Ensure allowance is available

        // Perform the transfer securely
        _balances[from] -= amount;
        _balances[to] += amount;
        _allowances[from][msg.sender] -= amount;

        emit Transfer(from, to, amount);
        return true;
    }

    // Prevent reentrancy attack by performing state changes before external calls
    function _safeTransfer(address from, address to, uint256 amount) internal {
        require(_balances[from] >= amount, "Insufficient balance");

        // Updates to balances before interaction with external addresses
        _balances[from] -= amount;
        _balances[to] += amount;
    }
}
