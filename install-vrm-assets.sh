#!/bin/bash
# SillyTavern VRM Setup - Asset Install Script
# Run from the SillyTavern root directory

set -e
echo "Installing VRM Assets..."

# Use local temp dir (avoids /tmp permission issues on Termux/Android)
INSTALL_TMP="$(pwd)/.vrm-install-tmp"
mkdir -p "$INSTALL_TMP"

# Create target directories
mkdir -p data/default-user/assets/vrm/model
mkdir -p data/default-user/assets/vrm/animation
mkdir -p public/scripts/extensions/third-party

# Clone VRM Assets Pack
echo "Cloning VRM Assets Pack..."
git clone --depth=1 https://github.com/test157t/VRM-Assets-Pack-For-Silly-Tavern "$INSTALL_TMP/vrm-assets"
cp "$INSTALL_TMP/vrm-assets/model/"*.vrm data/default-user/assets/vrm/model/
cp "$INSTALL_TMP/vrm-assets/animation/"*.bvh data/default-user/assets/vrm/animation/
echo "VRM Assets: $(ls data/default-user/assets/vrm/model/*.vrm | wc -l) models, $(ls data/default-user/assets/vrm/animation/*.bvh | wc -l) animations"

# Clone Spicy VRM Animations
echo "Cloning Spicy VRM Animations..."
git clone --depth=1 https://github.com/test157t/Spicy-VRM-Animations "$INSTALL_TMP/spicy-vrm"
cp "$INSTALL_TMP/spicy-vrm/animation/"*.bvh data/default-user/assets/vrm/animation/
echo "Total animations: $(ls data/default-user/assets/vrm/animation/*.bvh | wc -l)"

# Clone Voiceforge Extension
echo "Installing Voiceforge Extension..."
git clone --depth=1 https://github.com/test157t/Extension-Voiceforge public/scripts/extensions/third-party/Extension-Voiceforge
echo "Voiceforge installed"

# Cleanup
rm -rf "$INSTALL_TMP"
echo ""
echo "All done! Start SillyTavern and go to Extensions to enable VoiceForge."
