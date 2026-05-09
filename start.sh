#!/bin/bash

echo "Applying SKIN from panel..."

python3 - <<EOF
import json

with open("config.json", "r") as f:
    data = json.load(f)

data["skin"] = "${SKIN}"

with open("config.json", "w") as f:
    json.dump(data, f, indent=4)

print("Skin set to:", data["skin"])
EOF

echo "Launching bot..."
python3 main.py
