pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Graincloud is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Graincloud(address _owner)  UpgradeableToken(_owner) {
    name = "Graincloud";
    symbol = "GCD";
    totalSupply = 554100000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}