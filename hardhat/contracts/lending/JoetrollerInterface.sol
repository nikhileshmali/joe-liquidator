// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "./JTokenInterfaces.sol";

interface Joetroller {
    function enterMarkets(address[] calldata jTokens)
        external
        returns (uint256[] memory);

    function isMarketListed(address jTokenAddress) external view returns (bool);

    function checkMembership(address account, JToken jToken)
        external
        view
        returns (bool);

    function getAccountLiquidity(address account)
        external
        view
        returns (
            uint256,
            uint256,
            uint256
        );
}
