// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Flipper {

    bool actualValue;

    constructor() {
        actualValue = true;
    }
    
    function getValue() external view returns(bool) {
        return actualValue;
    }

    function flip() external {
        actualValue = !actualValue;
    }
}
