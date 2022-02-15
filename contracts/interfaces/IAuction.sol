//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

interface IAuction {
	function bid(address token, uint256 tokenId, uint256 amount) external;
  function updateBid(address token, uint256 tokenId, uint256 amount);
  function removeBid(address token) external;
}