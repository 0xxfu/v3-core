// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import '../libraries/LiquidityMath.sol';

contract LiquidityMathTest {
    function addDelta(uint128 x, int128 y) external pure returns (uint128 z) {
        return LiquidityMath.addDelta(x, y);
    }

    function getGasCostOfAddDelta(uint128 x, int128 y) external view returns (uint256) {
        uint256 gasBefore = gasleft();
        LiquidityMath.addDelta(x, y);
        return gasBefore - gasleft();
    }
}
