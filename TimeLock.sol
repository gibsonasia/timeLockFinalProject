pragma solidity ^0.8.7;

contract Timer{

    uint _startTime;
    uint _endTime;
    uint _randomize;
    uint _timestamp;

    modifier timerOver{
        require(block.timestamp <= _endTime, "Time expired");
        _;
    }

    function start() public{

        _startTime = block.timestamp;
    }

    function end(uint randomTime) public{
        _endTime = randomTime + _startTime;
    }

    function getTimeLeft() public view returns(uint){
        return random() - block.timestamp;
    }

      function random() private view returns(uint){
        return uint(block.timestamp);
      }
       
}
