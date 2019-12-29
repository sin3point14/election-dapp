pragma solidity ^0.5.11;

contract Election{
    uint public cCount;
    struct Candidate {
        uint id;
        string name;
        uint votes;
    }
    mapping(uint => Candidate) public candidates;
    constructor () public {
        addCandidate("ChadRagi");
        addCandidate("NoobRagi");
    }
    function addCandidate(string memory _name) private {
        cCount++;
        candidates[cCount] = Candidate(cCount, _name, 0);
    }
}