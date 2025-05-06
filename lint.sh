#!/bin/sh

set -e

echo "Formatting..."
echo "--- Ruff ---"
ruff format timeseriesfeatures
echo "--- isort ---"
isort timeseriesfeatures

echo "Checking..."
echo "--- Flake8 ---"
flake8 timeseriesfeatures
echo "--- pylint ---"
pylint timeseriesfeatures
echo "--- mypy ---"
mypy timeseriesfeatures
echo "--- Ruff ---"
ruff check timeseriesfeatures
echo "--- pyright ---"
pyright timeseriesfeatures
