#!/bin/bash
pip install --upgrade pip setuptools wheel
pip install -r requirements.txt
curl -sL https://github.com/Gozargah/Marzban-scripts/raw/master/install_latest_xray.sh | bash
cp -n .env.example .env
alembic upgrade head
python3 main.py
