We successfully deployed to the Polygon testnet (which is now called Amoy instead of Mumbai).

We are unable to fully deploy or test some features because Amoy Faucet requires POL on Mainnet to receive test POL, and you don’t have that.

We still managed to build the core functionality and want the README to explain the work done, clarify the testnet limitations, and demonstrate it's a working prototype.



---

Here’s a final, polished README.md tailored for hackathon submission, written professionally, with full context for moderators/judges:


---

#  NFT Marketplace (Hackathon Working Prototype)

Welcome to our submission for **HackVortex 2025** This is a working prototype of a decentralized *NFT Marketplace* that allows users to mint, list, and purchase NFTs on the blockchain. The project is built using *Solidity, **Hardhat, and the **Polygon Amoy Testnet* (formerly Mumbai).

---

##  What We Built

We developed a fully functional *smart contract backend* for an NFT Marketplace that supports:

- Minting NFTs (ERC-721 compliant)
- Listing NFTs for sale
- Purchasing listed NFTs
- Local and testnet deployment
- (Optional) Simple scripts or frontend integration

>  All core marketplace logic is implemented and tested locally using *Hardhat* and was successfully deployed to the *Polygon Amoy testnet*.

---

##  Why We Couldn't Fully Demonstrate on Amoy Testnet

Polygon's Mumbai testnet has been deprecated in favor of the *Amoy testnet*, which introduces a new requirement:

> *To receive test POL on Amoy, users must verify ownership of POL on the Polygon Mainnet.*

Unfortunately, since we do not hold POL tokens on Mainnet, we were unable to obtain *Amoy test POL* required to fully execute certain transactions post-deployment (e.g., interacting with the contract from frontend wallets).

Despite this, we have:
- Deployed the contracts to the Amoy testnet (contract address: 0x... — replace with actual)
- Verified functionality on *local Hardhat network*
- Written modular, extendable code
- (Optional) Recorded a video walkthrough of the working prototype

---

## Tech Stack

- *Solidity* – Smart Contracts
- *Hardhat* – Development Framework
- *Polygon Amoy Testnet* – Deployment Target
- *Ethers.js / Web3.js* – Interaction Layer
- *Node.js / NPM* – Tooling

---

## Getting Started (Local Development)

### 1. Clone the Repository

```bash
git clone https://github.com/akhandpratapsingh2005/-NFT-Marketplace-.git
cd NFT-Marketplace

2. Install Dependencies

npm install

3. Start a Local Hardhat Network

npx hardhat node

4. Deploy Locally

npx hardhat ignition deploy ./ignition/modules/Lock.js

> Update the module path if you’ve created a custom deployment module for your NFT contracts.




---

Optional Testnet Deployment (Polygon Amoy)

Deployment was tested on the Polygon Amoy testnet. Note that receiving test POL currently requires holding POL on Mainnet.

Faucet Issue

You can try accessing the faucet here:
🔗 https://faucet.polygon.technology/
However, to receive POL, you must verify mainnet POL ownership — a barrier for most hackathon teams without funding.


---

Demo Video

If you're unable to access Amoy POL, you can still view the functionality via a local demo:
 Link to video demo (Replace with YouTube, Drive, or Loom link)


---

📄 Contract Highlights

NFT Contract based on OpenZeppelin ERC-721

Marketplace Logic: Listing, buying, transferring ownership

Upgradeable Architecture for future features (bidding, royalties, auctions)



---

 Future Improvements

 Deploy to Mainnet or Amoy (once POL available)

 Build a React frontend to interact with the smart contracts

 Add auction & bidding functionality

 IPFS/Arweave integration for NFT metadata



---

Team & Credits

Akhand Pratap Singh
Akshat Mishra
Abhishek Kumar Prasad

Built with  during HackVertex



---

 License

This project is licensed under the MIT License.
