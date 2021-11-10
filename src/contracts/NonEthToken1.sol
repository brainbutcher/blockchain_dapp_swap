pragma solidity ^0.5.0;

// 2nd Smart Contract - for the non Eth crpyto-currency
// Eth allows you to create your own crypto-curreny without creating your own blockchain (ERC-20 token)
//   this means you can write a smart contract like (EthSwap.sol) to govern a crypto-currency (this file)
//     -- Maker is an ERC-20 token for example
//     -- Ocean Token is also a standard ERC-20 token 

//https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
	//balanceOf func
		//Returns the account balance of another account with address _owner.
		//function balanceOf(address _owner) public view returns (uint256 balance)

	//transfer func
		//Transfers _value amount of tokens to address _to, and MUST fire the Transfer event. The function SHOULD throw if the message caller's account balance does not have enough tokens to spend.
		//Note Transfers of 0 values MUST be treated as normal transfers and fire the Transfer event.
		//function transfer(address _to, uint256 _value) public returns (bool success)

contract Token {
    string  public name = "DApp Token";
    string  public symbol = "DAPP";
    uint256 public totalSupply = 21000000; // 21 million tokens
    uint8   public decimals = 18;

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    constructor() public {
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function approve(address _spender, uint256 _value) public returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value <= balanceOf[_from]);
        require(_value <= allowance[_from][msg.sender]);
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        allowance[_from][msg.sender] -= _value;
        emit Transfer(_from, _to, _value);
        return true;
    }
}