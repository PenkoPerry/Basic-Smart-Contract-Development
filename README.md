# Basic-Smart-Contract-Development

Company Name : Codtech IT Solutions 
Name : kaushal Nilesh Waray 
Intern Id : CT08QWM 
Domain : Blockchain Technology 
Duration : 4 Weeks 
Mentor :

# Description of the Task

Objective
The goal of this task is to develop a basic ERC-20-like token called FomoToken (FOMO) using Solidity. This token allows users to perform essential token operations such as transferring tokens, approving spending, and checking balances. The smart contract is designed for simplicity and readability while ensuring secure token transactions.

Key Features of FomoToken Smart Contract
Token Properties:

Name: FomoToken
Symbol: FOMO
Decimals: 2 (To keep it simple and readable)
Total Supply: Defined at the time of contract deployment.
Functions Included:

balanceOf(address account): Returns the token balance of a given address.
transfer(address to, uint256 amount): Sends tokens from the sender to another address.
approve(address spender, uint256 amount): Allows a spender to use tokens on behalf of the owner.
allowance(address owner, address spender): Checks the remaining approved balance for a spender.
transferFrom(address from, address to, uint256 amount): Transfers tokens on behalf of another user if they have approval.
Security Measures:

Prevents transfers to the 0x0 address.
Ensures users cannot transfer more than their balance.
Requires proper approval before transferFrom() transactions.
Development Steps:
Write the Solidity Smart Contract:

Define state variables for balances, allowances, and total supply.
Implement the required functions for token transactions.
Include events to track transfers and approvals.
Compile & Deploy on Testnet:

Use Remix IDE or Hardhat to compile the contract.
Deploy on Goerli or Sepolia Testnet using MetaMask.
Interact with the Smart Contract:

Use Etherscan, Remix, or a simple Web3.js/React frontend to test transfers and approvals.
# Next Steps:
Extend the contract to support minting, burning, and staking features.
Implement an ERC-20 compliant version using OpenZeppelin for better security and compatibility.
Deploy it on a real network (Polygon, Ethereum, or Binance Smart Chain).



<img width="244" alt="Image" src="https://github.com/user-attachments/assets/c6392872-13f6-4ecf-b37f-3c84025d5de3" />


<img width="270" alt="Image" src="https://github.com/user-attachments/assets/add0b887-93c0-4e84-98df-e64394227736" />

<img width="268" alt="Image" src="https://github.com/user-attachments/assets/9f66fb4a-8561-4f57-aad4-535628d5653f" />

