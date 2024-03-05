// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Counter {

    int8 counter;
    
    function getValue() external view returns(int) {
        return counter;
    }

    function increase() external payable {
        counter++;
    }
    
    function decrease() external payable {
        counter--;
    }

    function setAnyValue(int8 _newValue) external payable {
        counter = _newValue;
    }
}
