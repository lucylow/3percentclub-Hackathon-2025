# AutoSight DAO 
```
3percentclub-Hackathon-2025/
├── A.I./
│   ├── model-1-part-a123/
│   │   ├── model.json
│   │   ├── metadata.json
│   │   ├── weights.bin
│   │   └── README.md
│   ├── model-2-chip-fault/
│   │   └── ... (same files)
│   └── ...
├── web-app/
│   └── (your Bubble front-end export, or React wrapper if applicable)
├── web3/
│   └── autosightDAO.sol (or DAO .json ABI)
├── README.md
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


======================================================================
Github repo w/ documentation

what you did

how you did it

what challenges you faced

