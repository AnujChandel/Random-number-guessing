pragma solidity ^0.8.4;
//"SPDX-License-Identifier: UNLICENSED"


// this program is just or fun
//generating and guessing random number in smart contract  
//is a waste of gas



contract Random_number_guessing{

 
    address owner= msg.sender;
   
        bytes32 RNH;            //Random_number_hash
        bytes32 GNH;            //Guessing_number_hash

    function RNG() external{            // Random_number_generation

        uint Time = block.timestamp % 100;
        RNH = keccak256(abi.encodePacked(Time));

    }


    function guessing_RNG() external returns(uint){             
        for(uint i=0; i<100; i++){
          GNH = keccak256(abi.encodePacked(i));
          if(RNH == GNH)
            return i;
        } 
            return 0;
    }
    function gas_cost() public view returns (uint){
         uint amount=owner.balance;
      return amount;   
    }
}