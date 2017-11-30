#!/usr/bin/env bash

# Variables
# ------------------------------------------------------------------------------
readonly AWS_S3_BUCKET="docs.10darts.com"
readonly CLOUDFRONT_DISTRIBUTION_ID="E13Y6ODRU3K68O"

# Buld and upload
# ------------------------------------------------------------------------------
rm -rf _build && make html && \
aws --profile 10darts s3 sync _build/html/ s3://${AWS_S3_BUCKET}/ --acl public-read 
