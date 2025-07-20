// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyBabyNFT is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("BabyNFT", "BABY") {}

    function mintNFT(address to) public returns (uint256) {
        _tokenIds.increment();
        uint256 newId = _tokenIds.current();
        _mint(to, newId);
        return newId;
    }
}
