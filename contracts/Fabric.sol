// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "contracts/SoulBoundToken.sol";

contract ERC721Factory {

    mapping(uint => address) public allSouldbond;

    event ERC721TokenCreated(address _souldBond);
    

    function create(string calldata name, string calldata symbol) external {
        SouldBond t = new SouldBond(name, symbol,msg.sender);
        emit ERC721TokenCreated(address(t));
    }
}