pragma solidity ^0.8.0;

contract AddUser{
    
    uint id;
    
    struct Profile{
        uint id;
        string name;
        address direction;
        uint funds;
    }
    
    mapping(uint =>Profile) form;
    
    modifier proofOfExistence(uint _id) {
        require(form[_id].id==_id, "El usuario no existe");
        _;
    }
    
    function addUser(string memory _name, address _direction, uint _funds) public{
        form[id] = Profile(id,_name,_direction,_funds);
        id++;
    }
    
    function showUser(uint _id) public view proofOfExistence(_id) returns(string memory, address, uint) {
        string memory _k = form[_id].name;
        address _y = form[_id].direction;
        uint _x = form[_id].funds;
        return (_k,_y,_x);
    }
}