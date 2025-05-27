// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Marketplace is Ownable {
    struct Broker {
        bool registered;
        uint256 commissionPercent; // e.g., 5 for 5%
    }

    mapping(address => Broker) public brokers;

    // Platform fee (optional)
    uint256 public platformFeePercent = 2;
    address public platformFeeRecipient;

    event BrokerRegistered(address broker, uint256 commissionPercent);
    event NFTSold(address buyer, address seller, uint256 tokenId, uint256 price, address broker);

    // ...existing code...
constructor(address _platformFeeRecipient) Ownable(msg.sender) {
    platformFeeRecipient = _platformFeeRecipient;
}
// ...existing code...

    function registerBroker(uint256 commissionPercent) external {
        require(!brokers[msg.sender].registered, "Already registered");
        require(commissionPercent <= 10, "Commission too high");

        brokers[msg.sender] = Broker(true, commissionPercent);

        emit BrokerRegistered(msg.sender, commissionPercent);
    }

    // Seller lists NFT for sale by approving Marketplace to transfer token

    function buyNFT(
        address nftContract,
        uint256 tokenId,
        address seller,
        address broker
    ) external payable {
        require(brokers[broker].registered, "Broker not registered");
        uint256 price = msg.value;

        // Calculate shares
        uint256 brokerCommission = (price * brokers[broker].commissionPercent) / 100;
        uint256 platformFee = (price * platformFeePercent) / 100;
        uint256 sellerAmount = price - brokerCommission - platformFee;

        // Transfer ETH
        payable(seller).transfer(sellerAmount);
        payable(broker).transfer(brokerCommission);
        payable(platformFeeRecipient).transfer(platformFee);

        // Transfer NFT to buyer
        IERC721(nftContract).safeTransferFrom(seller, msg.sender, tokenId);

        emit NFTSold(msg.sender, seller, tokenId, price, broker);
    }

    // Admin can update platform fee
    function setPlatformFeePercent(uint256 newFee) external onlyOwner {
        require(newFee <= 5, "Fee too high");
        platformFeePercent = newFee;
    }
}
