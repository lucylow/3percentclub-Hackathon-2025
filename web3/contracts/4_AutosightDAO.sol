// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title AutoSightDAO - A governance contract for AI-powered automotive anomaly resolution. 

contract AutoSightDAO {
    struct Proposal {
        uint256 id;
        string partId;
        string description; // e.g., "Recall Part A123"
        address proposer;
        uint256 voteYes;
        uint256 voteNo;
        uint256 createdAt;
        bool executed;
    }

    uint256 public proposalCount;
    mapping(uint256 => Proposal) public proposals;
    mapping(uint256 => mapping(address => bool)) public hasVoted;
    address public admin;
    uint256 public constant VOTING_PERIOD = 3 days;

    event ProposalCreated(uint256 indexed id, string partId, string description, address proposer);
    event Voted(uint256 indexed id, address voter, bool vote);
    event ProposalExecuted(uint256 indexed id);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call this");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    function createProposal(string memory _partId, string memory _description) external returns (uint256) {
        proposalCount++;
        proposals[proposalCount] = Proposal({
            id: proposalCount,
            partId: _partId,
            description: _description,
            proposer: msg.sender,
            voteYes: 0,
            voteNo: 0,
            createdAt: block.timestamp,
            executed: false
        });

        emit ProposalCreated(proposalCount, _partId, _description, msg.sender);
        return proposalCount;
    }

    function vote(uint256 _id, bool _support) external {
        Proposal storage proposal = proposals[_id];
        require(block.timestamp < proposal.createdAt + VOTING_PERIOD, "Voting has ended");
        require(!hasVoted[_id][msg.sender], "Already voted");

        hasVoted[_id][msg.sender] = true;
        if (_support) {
            proposal.voteYes += 1;
        } else {
            proposal.voteNo += 1;
        }

        emit Voted(_id, msg.sender, _support);
    }

    function executeProposal(uint256 _id) external onlyAdmin {
        Proposal storage proposal = proposals[_id];
        require(!proposal.executed, "Already executed");
        require(block.timestamp >= proposal.createdAt + VOTING_PERIOD, "Voting not ended");

        proposal.executed = true;

        // Logic for execution, e.g., sending signal to AI or production system
        // Can include external calls or event logging for DAO action broadcast

        emit ProposalExecuted(_id);
    }

    function getProposal(uint256 _id) external view returns (Proposal memory) {
        return proposals[_id];
    }
}
