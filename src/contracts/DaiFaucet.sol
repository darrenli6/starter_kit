pragma solidity ^0.5.0;

// Only functions you need
interface DaiToken {
    function transfer(address to, uint amount) external returns (bool);
}

contract DaiFaucet {
    DaiToken daiToken = DaiToken(0x6B175474E89094C44Da98b954EedeAC495271d0F);

    function requestDai() public {
        daiToken.transfer(msg.sender, 1000000000000000000);
    }
}
