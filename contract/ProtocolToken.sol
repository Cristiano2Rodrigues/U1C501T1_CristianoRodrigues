// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract ProtocolToken is ERC20, Ownable, ReentrancyGuard {
    mapping(uint256 => uint256) public votes; // ID da proposta => Qtd votos

    constructor() ERC20("MeuProtocolo", "MPROC") Ownable(msg.sender) {
        _mint(msg.sender, 1000000 * 10 ** decimals()); // Mint inicial
    }

    // Mecanismo de Governança Simplificado 
    function vote(uint256 proposalId, uint256 amount) external nonReentrant {
        require(balanceOf(msg.sender) >= amount, "Saldo insuficiente");
        _burn(msg.sender, amount); // Queima tokens para votar (exemplo de lógica)
        votes[proposalId] += amount;
    }
}