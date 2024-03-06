// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract XDevToken {

    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;

    mapping(address => uint256) balanceOf;

    constructor() {
        name = "XDev Token";
        symbol = "XDEV";
        decimals = 8;
        totalSupply = 100000000;
    }
}
