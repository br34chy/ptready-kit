#!/bin/bash
set -e

# One-time setup script for fresh Kali VM
# Install Neo4j + Bloodhound
# Intended to be run ONCE per VM

echo "[*] Updating System..."
sudo apt update

echo "[*] Installing Neo4j..."
sudo apt install -y neo4j

echo "[*] Installing Bloodhound..."
sudo apt -y bloodhound

echo "[*] Run bloodhound-setup...]"
yes | bloodhound

