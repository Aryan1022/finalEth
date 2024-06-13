// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;
contract MyToken {
  // Public variables to store details about the coin
    string public tokenName = "NEW_TOKEN";
    string public tokenAbbrv = "NTK";
      uint public totalSupply = 0;

    // Mapping of addresses to balances
    mapping(address => uint) public balances;

    // Mint function to increase total supply and balance of a given address
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function to decrease total supply and balance of a given address
    function burn(address _address, uint _value) public {
        if(balances[_address] >= _value){
        totalSupply -= _value;
        balances[_address] -= _value;
    }
    }
}
