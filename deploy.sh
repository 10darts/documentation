#!/usr/bin/env bash

# Variables
# ------------------------------------------------------------------------------
readonly AWS_S3_BUCKET="docs.10darts.com"

# Buld and upload
# ------------------------------------------------------------------------------
rm -rf _build && make html
aws --profile 10darts s3 sync _build/html/ s3://${AWS_S3_BUCKET}/ --acl public-read
