// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {Flipper} from "../src/Flipper.sol";

contract FlipperScript is Script {

    Flipper flipper;

    function setUp() public {}

    function run() public {
        vm.startBroadcast(<your_private_key>);

        flipper = new Flipper();
        
        console.log(address(flipper));

        console.log(flipper.getValue());
        flipper.flip();
        console.log(flipper.getValue());

        vm.stopBroadcast();
    }
}
