// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {Flipper} from "../src/Flipper.sol";

contract FlipperTest is Test {
    Flipper public flipper;

    function setUp() public {
        flipper = new Flipper();        
    }

    function test_InitialValue() public {
        assertEq(flipper.getValue(), true);
    }

    function testFlip_ChangeValue() public {
        flipper.flip();
        assertEq(flipper.getValue(), false);        
    }
}
