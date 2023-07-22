// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Shitcoin is ERC20 {
    constructor(uint256 IntialSupply) ERC20("Shitcoin", "SC") {
        _mint(msg.sender, IntialSupply);
    }
}
