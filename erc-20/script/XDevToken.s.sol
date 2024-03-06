// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {XDevToken} from "../src/XDevToken.sol";

contract XDevTokenScript is Script {

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        new XDevToken();
        vm.stopBroadcast();
    
    }
}
