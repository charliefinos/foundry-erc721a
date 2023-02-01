// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "src/Nftest.sol";
import "forge-std/Test.sol";

contract ContractTest is Test {
    Nftest nftest;
    address juan;

    function setUp() public {
        nftest = new Nftest();
        juan = address(0x123);
    }

    function testMint() public {
        vm.startPrank(juan);
        nftest.mint(address(juan), 1);
        uint256 balance = nftest.balanceOf(juan);
        emit log_named_uint("balance", balance);
        assertEq(balance, 1);
        vm.stopPrank();
    }
}
