pragma solidity ^0.4.0;


contract IronDoers {
    address public trustee;
    mapping(address => bool) public doers;
    uint public doerCount;

    modifier onlyTrustee {
        if(msg.sender != trustee) throw;
        _;
    }

    function IronDoers(){
        doerCount = 0;
        trustee = msg.sender;
        addDoer(trustee);
    }

    function addDoer(address addr) onlyTrustee{
        doers[addr] = true;
        doerCount++;
    }

    function getDoerCount() constant returns (uint){
        return doerCount;
    }

    function isDoer(address addr) constant returns (bool){
        return doers[addr];
    }
}
