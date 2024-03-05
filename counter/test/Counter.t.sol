// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();        
    }

    function test_startWithZero() public {
        assertEq(counter.getValue(), 0);
    }

    function test_increateValue() public {
        counter.increase();
        assertEq(counter.getValue(), 1);
    }
    
    function test_decreateValue() public {
        counter.decrease();
        assertEq(counter.getValue(), -1);
    }
    
    function test_setAnyValue(int8 _newValue) public {
        counter.setAnyValue(_newValue);
        assertEq(counter.getValue(), _newValue);
    }
}
