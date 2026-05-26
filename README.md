# On-Chain GuestBook

A simple Ethereum smart contract that lets anyone leave a permanent, 
on-chain message. Deployed and verified on the Sepolia testnet as my 
first hands-on exploration of Web3 development.

## What it does

- Anyone with a wallet can call `sign(message)` to leave a message
- All entries are stored permanently on the blockchain
- Each entry records the sender's address, message, and timestamp
- An event is emitted on each new entry for off-chain indexing

## Live deployment

- **Network:** Ethereum Sepolia Testnet
- **Contract address:** `0x9975b444...47Cc59487`
- **View on Etherscan:** [link to your contract on sepolia.etherscan.io]
- **Source verified:** ✅ via Sourcify and Blockscout

## What I learned building this

- Writing and compiling Solidity (0.8.x)
- Deploying contracts via Remix with MetaMask injection
- The transaction lifecycle: signing, gas, mempool, block inclusion
- Reading contract state vs. writing state (view functions vs. transactions)
- Source verification and why it matters for trust

## Stack

- Solidity ^0.8.20
- Remix IDE
- MetaMask
- Sepolia testnet

## What's next

- Building a Next.js + wagmi frontend so non-developers can interact 
  with the contract directly
- Adding a function to retrieve all entries in one call
- Considering deployment to Base Sepolia (L2) for cheaper interactions
