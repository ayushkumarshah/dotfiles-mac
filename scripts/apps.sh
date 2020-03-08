#!/usr/bin/env zsh

# AWS
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "~/Downloads/awscli-bundle.zip"
unzip awscli-bundle.zip
sudo . ~/Downloads/awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

