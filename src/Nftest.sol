// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

import "ERC721A/contracts/ERC721A.sol";

contract Nftest is ERC721A {
    constructor() ERC721A("Nftest", "NFT") {}

    function mint(address to, uint256 qty) public {
        _safeMint(to, qty);
    }
}
