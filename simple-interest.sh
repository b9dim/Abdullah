#!/usr/bin/env bash
set -euo pipefail

read -p "Enter principal amount: " principal
read -p "Enter rate of interest (percent per year): " rate
read -p "Enter time period (years): " time

simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc -l)

echo "Simple Interest: $simple_interest"
