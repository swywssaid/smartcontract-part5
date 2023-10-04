// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;
contract A {
    function b() pure public {
        {
            uint x;
            x = 1;
        }

        {
            x = 3;
            uint x;
        }
    }

    function c() pure public returns (uint) {
        uint x = 1;
        {
            x = 2; 
            uint x;
        }
        return x; 
    }

    function d() pure public returns (uint) {
        x = 2;
        uint x;
        return x;
    }
}