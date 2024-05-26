#!/bin/bash

# Paths to the original and target .tmux.conf files
ORIGIN_PATH="$HOME/.tmux.conf"
TARGET_PATH="~/.config/nvim/.tmux.conf"

# Copy the file
cp "$ORIGIN_PATH" "$TARGET_PATH"
