# AutoSight DAO 
"Reclaiming the Machine: A Future in Motion"

### AI-powered automotive issue detection and management platform with blockchain-based governance for manufacturing excellence.


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



# DAO: Decentrally coordinate and govern

🧠 Governance Philosophy
"Genres are a funny little concept, aren't they?" We mix industrial AI, on-chain governance, and human-centered design in a way that defies traditional categories, because the next revolution is computational.

AutoSight DAO blends AI, blockchain, and digital twins to expose the invisible systems of power and inefficiency in American industrial manufacturing—and rewrite them. The app puts automotive manufacturing quality in the hands of its ecosystem — powered by AI detection, secured by blockchain, and governed by decentralized stakeholders. Moloch v3 ensures proposals are fair, on-chain, and auditable. 

AutoSight DAO does not see boundaries—we see building blocks. By fusing industrial AI, Web3 governance, and human-centered design, we’re not just making machines smarter—we’re rewriting the rules of how innovation happens.



🔗 Token Utility Narrative
vSIGHT: Gives suppliers, manufacturers, and regulatory stakeholders voting power over anomaly-handling proposals (e.g., Pause Production, Issue Recall).
nvSIGHT: For observers like auditors, insurers, or academic reviewers who want transparent visibility without governance power.

A decentralized governance system for AI-detected anomalies in automotive manufacturing.
AI monitors digital twins and detects issues (e.g., overheating chip, misaligned rotor).
Blockchain immutably stores the detection, timestamp, and AI-generated proposal.
DAO enables manufacturers, suppliers, and regulators to vote on corrective actions like:
🛑 Pause Production
🚨 Issue Recall
🕒 Increase Monitoring
Every vote is transparent, timestamped, and tied to NFT-based part IDs.

DAO DAO Mechanics + Token Structure
Proposal Lifecycle:
AI flags Part #F678 as failing.
AutoSight generates Proposal: “Pause Line 4.”
Blockchain logs it.
DAO Members vote → decision enforced.

### Reclaiming the Assembly Line
DAO for decentralizing decision-making. our app gives voice to engineers, workers, and suppliers—turning passive machines into digital citizens with verifiable identities and histories, powered by AI and on-chain logic. Web3 by turning auto parts into on-chain identities (digital twins), and allowing a DAO to govern decisions—just like a new kind of union. No longer invisible nodes in a machine, these entities have agency, transparency, and collective oversight.


Governance Rules:
🗳️ Voting Period: 5 days
⏳ Grace Period: 1 day
✅ Quorum: 20% | Min Retention: 66%
🔐 Sponsor Threshold: 1
💰 ETH Per Proposal: 0.2 ETH

### 🔐 All decisions tied to on-chain digital twin NFTs

Every decision made by the DAO—whether it's a production pause, recall, or increased monitoring—is permanently linked to a specific, uniquely identifiable part via its Digital Twin NFT on the blockchain.

- Every part = NFT: Each physical component in the manufacturing line is represented by a Digital Twin NFT, containing its full history—anomalies, proposals, votes, and resolutions.
- Tamper-proof audit trail: When a decision is made (e.g. “Recall Part #F678”), that action is logged and anchored to the NFT representing that part. You can always look up its immutable decision log.
- Shared source of truth: Engineers, regulators, and suppliers don’t need to cross-reference spreadsheets or emails. The NFT itself is the source of truth—what happened, when, why, and who voted.
- Compliance by design: This is critical for ISO 26262, IATF 16949, and other safety standards—ensuring every decision is verifiable, auditable, and cryptographically linked to the exact part in question.

# IPFS

🛞 1. Electric Brake Actuator – Part #EB754

📦 Tier 1 Supplier: Continental AG (Braking Systems Division)
 🏭 Assembly Plant: Puebla, Mexico
 🔄 Supply Chain Flow:
Manufactured and pre-calibrated at Tier 1 factory.
Sent to OEM plant for integration into EV braking system.
Embedded with digital twin and sensor data stream.
🔍 Supply Chain Risk Flags:
Previous batch delays due to microchip shortage (2024 Q4).
AI anomaly revealed heat buildup likely caused by a Tier 2 actuator sensor from Shenzhen-based supplier.

Paused production for 36 hours.
DAO mandated dual-sourcing audit for actuator sensors.
Final decision logged on-chain, tied to NFT 0xBrake-EB754.



⚙️ 2. Power Inverter Module – Part #PI882

📦 Tier 1 Supplier: Bosch Powertrain Solutions
 🏭 Assembly Plant: Stuttgart, Germany
 🔄 Supply Chain Flow:
Assembled from multiple Tier 2 components (MOSFETs, capacitors, PCB).
Ships pre-configured and is software-updated on delivery.
Real-time telemetry via CAN bus monitored by AutoSight AI.
🔍 Supply Chain Risk Flags:
Repeated voltage drift in MOSFETs sourced from a Malaysian Tier 2 fab.
Potential environmental stress testing failure not caught upstream.

AutoSight flagged increased variance.
DAO proposal to increase monitoring + notify Bosch + log batch IDs.
Blockchain record (Proposal #71) tied to NFT 0xInverter-PI882.




🔋 3. Battery Cell Connector – Part #BC019

📦 Tier 1 Supplier: LG Energy Solution
 📦 Tier 2 Sub-supplier: Taiwanese precision stamping manufacturer
 🏭 Assembly Plant: Detroit, MI (Final pack integration)
 🔄 Supply Chain Flow:
Individual stamped connectors sourced from Tier 2 and sent to LG.
LG assembles connectors into battery modules → forwarded to OEM.
🔍 Supply Chain Risk Flags:
AI vision system caught 4 microscopic defects in 1000-unit inspection lot.
Defects consistent with a known issue in Tier 2’s punch-die calibration.

No immediate recall — “Monitor + Audit” proposal passed.
DAO mandated increased image resolution and metadata logging.
NFT 0xBattery-BC019 tied to connector lineage, shared with LG and regulators.



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



