#!/bin/bash
sudo dnf update -y
sudo dnf install docker -y
sudo systemctl enable --now docker
sudo usermod -aG docker ec2-user
sudo dnf install git -y
git clone