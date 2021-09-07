pragma solidity ^0.8.0;

contract MappingStuff{
    
    mapping(address=>uint) public chooseNumber;
    
    function choosingNumber(uint _k) public {
        chooseNumber [msg.sender] = _k;
    }
    
    function consultingNumber() public view returns (uint){
        return chooseNumber[msg.sender];
    }
}