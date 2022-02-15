//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

interface IVault {
	function deposit(address token, uint256 tokenId, uint256 amount) external;

	function withdraw(address token, uint256 tokenId, uint256 amount) external returns (uint256);

	function borrow(address token,  uint256 tokenId, uint256 amount) external returns (uint256);

	function repay(address token, uint256 tokenId, uint256 amount) external returns (uint256);
	
	function forceRepay(address token,  uint256 tokenId, uint256 amount) external;
}