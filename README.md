# Basic-Smart-Contract-Development

Company Name : Codtech IT Solutions 
Name : kaushal Nilesh Waray
Intern Id : 
Domain : Blockchain Technology
Duration : 4 Weeks
Mentor :


# Steps to Deploy on an Ethereum Test Network (Sepolia)

Prerequisites:
Install Metamask extension and set it up.
Set up Remix IDE, a browser-based development environment.
Have some test ETH for gas fees on Sepolia. You can get Sepolia ETH from Sepolia Faucet.
Step-by-Step Guide to Deploy the Contract:
Open Remix IDE:

Go to Remix IDE.
Create a New Solidity File:

In Remix, click on the "File Explorer" section on the left.
Click on the "+" icon to create a new file.
Name the file SimpleToken.sol.
Copy and paste the Solidity code provided above into this new file.
Compile the Contract:

Click on the "Solidity Compiler" tab (the second tab from the left).
Select the appropriate Solidity version (0.8.17 or later).
Click on "Compile SimpleToken.sol".
Configure MetaMask for Sepolia:

Open MetaMask and ensure it is connected to the Sepolia test network.
If Sepolia is not listed, you can add it manually by going to MetaMask settings and adding a custom RPC.
Network Name: Sepolia Testnet
RPC URL: https://rpc.sepolia.org
Chain ID: 11155111
Currency Symbol: ETH
Block Explorer URL: https://sepolia.etherscan.io
Connect MetaMask to Remix:

In Remix, click on the "Deploy & Run" tab (the third tab on the left).
In the "Environment" dropdown, select Injected Web3. This will connect Remix to your MetaMask wallet.
Ensure you are connected to the Sepolia network in MetaMask.
Deploy the Contract:

In the "Deploy & Run" tab, select the SimpleToken contract.
In the "Deploy" section, enter an initial supply for the token (for example, 1000). Remember, this number will be multiplied by the number of decimals (e.g., 1000 * 100 = 100000).
Click on "Deploy".
MetaMask will prompt you to confirm the transaction. Ensure you have enough Sepolia ETH for gas fees.
Click Confirm to deploy the contract.
Interact with the Contract:

After the contract is deployed, you can interact with it in Remix.
You can see the contract’s deployed address under Deployed Contracts.
Use the provided functions like balanceOf(), transfer(), approve(), etc., to interact with your token.
For example, to check the balance of your MetaMask account, use the balanceOf() function by entering your MetaMask address.
Add the Token to MetaMask:

After deploying the contract, copy the contract address.
Go to MetaMask, click on "Assets", then "Import Tokens".
Select "Custom Token" and paste the contract address.
MetaMask should automatically detect the token symbol and decimal places. If not, manually input them.
Click Add Custom Token and then Import Tokens.


# Project Task Description: Deploying a Simple ERC-20 Token on Ethereum Test Network (Sepolia)
Objective:
The primary goal of this project is to create, deploy, and interact with a basic ERC-20 token on an Ethereum test network (Sepolia). The project involves writing a simple smart contract in Solidity to define an ERC-20 token, deploying it using Remix IDE, and managing token transfers between different Ethereum addresses.

Project Tasks:
Smart Contract Development:

Objective: Write a Solidity contract for a simple ERC-20 token with basic functionalities like:
Token name (SimpleToken)
Token symbol (SIM)
Decimal places (set to 2 for simplicity)
Total supply and balance tracking
Basic token transfer functionality
Approve and transferFrom functions for allowance-based token transfers.
Key Functionalities:
transfer: Allows users to send tokens to others.
approve: Allows a spender to spend tokens on behalf of the token owner.
transferFrom: Facilitates token transfer from one address to another on behalf of the owner.
balanceOf: Allows anyone to check the balance of a given address.
Events: Emit events to log token transfers and approvals for transparency and tracking.
Deploying the Contract on the Sepolia Test Network:

Objective: Deploy the created contract on the Sepolia test network using Remix IDE.
Steps:
Compile the Solidity Code in Remix IDE.
Set up MetaMask and connect it to the Sepolia test network.
Deploy the Contract: Use Remix’s "Deploy & Run" tab to deploy the contract, supplying an initial token amount (for example, 1000 tokens) upon deployment.
Confirm the transaction using MetaMask and ensure the deployment is successful.
Interacting with the Deployed Contract:

Objective: Interact with the deployed contract to ensure the functions are working as expected.
Steps:
Use the balanceOf() function to check the balance of the wallet that deployed the contract.
Use the transfer() function to send tokens from one wallet to another and verify the balance updates.
Implement the approve() and transferFrom() functions to demonstrate allowance-based transfers.
Adding Custom Token to MetaMask:

Objective: After deploying the contract, add the custom token to MetaMask for easier tracking and management.
Steps:
Copy the contract address after deployment.
Go to MetaMask, navigate to the "Assets" section, and select "Import Tokens."
Paste the contract address and add the token symbol (SIM), along with the decimal value (2).
Testing Token Transfers:

Objective: Verify that tokens can be successfully transferred between different Ethereum accounts.
Steps:
Using the transfer() function, send tokens from the deploying account to a secondary MetaMask account.
Check the balances of both accounts to ensure the transaction was successful.
Expected Outcome:
Functional Token: A fully functional ERC-20 token is created, with functionalities such as transferring, approving, and checking balances.
Successful Deployment: The token is successfully deployed on the Sepolia test network.
Transaction Verification: Token transfers and allowances work correctly, with the token appearing in MetaMask.
User-friendly Interface: The project demonstrates the process of deploying and interacting with an ERC-20 token using Remix and MetaMask.
Security Considerations:
The smart contract is designed with security best practices, ensuring that there are no obvious vulnerabilities such as reentrancy attacks or unvalidated inputs.
The contract includes checks to ensure valid transfers and approvals, ensuring users cannot perform transactions with invalid or insufficient funds.

# Output : 


<img width="950" alt="Image" src="https://github.com/user-attachments/assets/ee4203f4-54df-43b3-abc6-b7284201046d" />

<img width="268" alt="Image" src="https://github.com/user-attachments/assets/d3eb8735-aa91-413b-a5d0-4c8221811d2c" />

<img width="265" alt="Image" src="https://github.com/user-attachments/assets/8b0b17c6-787e-495b-9e57-5586c45ec7b7" />

