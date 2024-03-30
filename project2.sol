pragma solidity ^0.8.0;

contract project2 {
    uint256 public totalSupply;
    mapping(address => uint256) public balances;

    constructor(uint256 _initialSupply) {
        require(_initialSupply > 0, "initial supply must be greater than zero");
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
    }

    function transfer(address _to, uint256 _amount) external {
        require(_to != address(0), "invalid recipient");
        require(balances[msg.sender] >= _amount, "insufficient balance, please try again.");
        
        balances[msg.sender] -= _amount;
        balances[_to] += _amount;
    }

    function assertExample() external {
        uint256 x = 1;
        uint256 y = 0;
        
        assert(x != y); 
    }

    function revertExample() external pure {
        require(false, "This will always revert");
    }
}
