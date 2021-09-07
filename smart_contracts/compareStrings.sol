pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract StringComparison{
    function compareHash(string memory _x, string memory _y)public pure returns(bool){
        bytes32 firstHash = keccak256(abi.encodePacked(_x));
        bytes32 secondHash = keccak256(abi.encodePacked(_y));
        
        if(firstHash==secondHash){
            return true;
        } else {
            return false;
        }
    }
}