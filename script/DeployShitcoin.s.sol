// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
import {Script} from "forge-std/Script.sol";
import {Shitcoin} from "../src/Shitcoin.sol";

contract DeployShitcoin is Script {
    uint256 constant TOKEN_SUPPLY = 10000000 ether; // 10 Million token supplied
    uint256 public Default_Private_Key =
        0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80;

    function run() external returns (Shitcoin) {
        vm.startBroadcast(Default_Private_Key);
        Shitcoin shitcoin = new Shitcoin(TOKEN_SUPPLY);
        vm.stopBroadcast();
        return shitcoin;
    }
}
