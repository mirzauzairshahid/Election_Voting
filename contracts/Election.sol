pragma solidity ^0.5.16;
//pragma solidity ^0.6.1;
contract Election {
    // Modal a candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
        //store candidate
        //Fetch Candidate
       mapping(uint => Candidate) public candidates;
       // store candidate count;
       uint public candidateCount;
      constructor() public {
            addCandidate("candidate 1");
            addCandidate("candidate 2");
       }
       function addCandidate (string memory _name) private {
        candidateCount ++;
        candidates[candidateCount] = Candidate(candidateCount, _name, 0);
    }
}
/*var app = Election.deployed(); initial vote value is 1*/