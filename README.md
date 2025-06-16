# AutoSight DAO 

### 🔐 All decisions tied to on-chain digital twin NFTs

Every decision made by the DAO—whether it's a production pause, recall, or increased monitoring—is permanently linked to a specific, uniquely identifiable part via its Digital Twin NFT on the blockchain.

- Every part = NFT: Each physical component in the manufacturing line is represented by a Digital Twin NFT, containing its full history—anomalies, proposals, votes, and resolutions.
- Tamper-proof audit trail: When a decision is made (e.g. “Recall Part #F678”), that action is logged and anchored to the NFT representing that part. You can always look up its immutable decision log.
- Shared source of truth: Engineers, regulators, and suppliers don’t need to cross-reference spreadsheets or emails. The NFT itself is the source of truth—what happened, when, why, and who voted.
- Compliance by design: This is critical for ISO 26262, IATF 16949, and other safety standards—ensuring every decision is verifiable, auditable, and cryptographically linked to the exact part in question.





```
3percentclub-Hackathon-2025/
├── ai-models/
│   ├── part-a123-detection/
│   │   ├── model.json            # Teachable Machine model config
│   │   ├── metadata.json         # Labels, classnames, description
│   │   ├── weights.bin           # Neural network weights
│   │   └── README.md             # Summary of what the model detects (e.g. "Surface fractures in Part A123")
│   ├── chip-fault-detection/
│   │   ├── model.json
│   │   ├── metadata.json
│   │   ├── weights.bin
│   │   └── README.md             # Describes how the AI flags overheating in chips
│   └── motor-vibration-anomaly/
│       ├── model.json
│       ├── metadata.json
│       ├── weights.bin
│       └── README.md             # Covers detection of out-of-spec vibration patterns
│
├── frontend/
│   ├── bubble-ui-export/         # AutoSight DAO frontend (Bubble export or React wrapper)
│   │   └── index.html
│   └── assets/
│       └── hero-banner.png       # Generated preview banner for pitch/demo
│
├── web3/
│   ├── contracts/
│   │   ├── AutoSightDAO.sol      # Solidity DAO contract (proposal, vote, storage)
│   │   ├── Storage.sol           # Data storage layer for proposals/anomalies
│   │   ├── Ballot.sol            # Handles DAO voting mechanisms
│   │   └── Owner.sol             # Admin controls (summoner, shaman logic)
│   ├── abi/
│   │   └── AutoSightDAO.json     # ABI file for Web3.js or Ethers.js integration
│   ├── scripts/
│   │   └── deploy.js             # Deployment script (for Ganache or Sepolia)
│   └── README.md                 # Setup, Ganache usage, DAO invocation guide
│
├── public/
│   └── sample-logs/
│       ├── anomaly-001.json      # Simulated detection event
│       └── proposal-001.json     # Proposal linked to AI detection
│
├── README.md                     # Main project documentation (Problem, Solution, Stack, Demo, What’s Next)
└── LICENSE

```

# Artifical Intelligence Models

📦 From Teachable Machine: Downloaded Model Files
After opening a model (e.g. this one), click:

Export Model → TensorFlow.js → Download

You’ll get:

model.json — structure of the model

metadata.json — training info

weights.bin — the AI’s actual “brain”

Optional HTML + JS preview script



https://teachablemachine.withgoogle.com/models/N6pNG-n11/

https://teachablemachine.withgoogle.com/models/dZx-tr_9z/

https://teachablemachine.withgoogle.com/models/2R8itJ8ep/

https://teachablemachine.withgoogle.com/models/GSDHiFw9E/

https://teachablemachine.withgoogle.com/models/SctOqQ0h9/

# AI Integration

Each Teachable Machine model is used in the AutoSight DAO web/mobile app for real-time anomaly detection.

1. A webcam scans the part on the factory line.
2. The Teachable Machine model returns the most probable class (e.g., Cracked).
3. If anomaly detected → auto-generate DAO proposal.
4. Result + confidence score is written on-chain, tied to NFT of the part.

<!-- index.html -->
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs"></script>
<script src="https://cdn.jsdelivr.net/npm/@teachablemachine/image"></script>



