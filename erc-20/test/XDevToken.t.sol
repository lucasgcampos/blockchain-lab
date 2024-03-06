// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {XDevToken} from "../src/XDevToken.sol";

contract CounterTest is Test {
    XDevToken public myToken;

    function setUp() public {
        myToken = new XDevToken();        
    }
}
