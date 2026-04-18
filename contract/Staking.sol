// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract Staking is ReentrancyGuard {
    IERC20 public stakingToken;
    AggregatorV3Interface internal priceFeed;

    mapping(address => uint256) public stakedAmount;

    constructor(address _token, address _priceFeed) {
        stakingToken = IERC20(_token);
        // Endereço do Oráculo na Sepolia (ETH/USD) 
        priceFeed = AggregatorV3Interface(_priceFeed); 
    }

    // Função para ler o preço do Oráculo 
    function getLatestPrice() public view returns (int) {
        ( , int price, , , ) = priceFeed.latestRoundData();
        return price;
    }

    function stake(uint256 amount) external nonReentrant {
        require(amount > 0, "Valor deve ser maior que zero");
        stakingToken.transferFrom(msg.sender, address(this), amount);
        stakedAmount[msg.sender] += amount;
    }
}