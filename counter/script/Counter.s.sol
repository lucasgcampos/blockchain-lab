// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {

    Counter counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast(<your_private_key>);
        new Counter();
        vm.stopBroadcast();
    
    }
}
