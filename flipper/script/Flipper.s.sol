// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {Flipper} from "../src/Flipper.sol";

contract FlipperScript is Script {

    Flipper flipper;

    function setUp() public {}

    function run() public {
        vm.startBroadcast(0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80);

        flipper = new Flipper();

        // 0x34A1D3fff3958843C43aD80F30b94c510645C316
        console.log(address(flipper));

        console.log(flipper.getValue());
        flipper.flip();
        console.log(flipper.getValue());

        vm.stopBroadcast();
    }
}
