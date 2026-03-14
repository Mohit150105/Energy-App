#!/bin/bash

echo "Starting backend..."

uvicorn backend.main:app --host 0.0.0.0 --port 8000 &

# API for frontend to call backend
export API_URL="http://127.0.0.1:8000"

echo "Starting Streamlit frontend..."

streamlit run frontend/app.py \
--server.port 7860 \
--server.address 0.0.0.0 \
--server.headless true
