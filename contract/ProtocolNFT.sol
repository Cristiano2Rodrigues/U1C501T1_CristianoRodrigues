// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ProtocolNFT is ERC721, Ownable {
    uint256 private _nextTokenId;

    constructor() ERC721("ProtocoloBadge", "PBADGE") Ownable(msg.sender) {}

    // Função de Mint para demonstração Web3 
    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
    }
}