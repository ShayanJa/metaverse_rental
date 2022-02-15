//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract Vault{
  using SafeMath for uint256;

  IERC20 public rentToken;
  mapping(address => mapping(address => mapping(uint256 => bool ))) public balancesOf;
  mapping(address => uint256) public rentBalancesOf;
  
  function deposit(address token, uint256 tokenId ) public {
    IERC721(token).safeTransferFrom(msg.sender, address(this), tokenId);
    balancesOf[msg.sender][token][tokenId] = true;
  }
  
  function withdraw(address token, uint256 tokenId)public {
    require(balancesOf[msg.sender][token][tokenId] == true, "Does not have nft deposited");
    balancesOf[msg.sender][token][tokenId] = false;
    IERC721(token).safeTransferFrom(address(this), msg.sender, tokenId);
  }
    
}