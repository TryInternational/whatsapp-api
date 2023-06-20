#!/usr/bin/env bash
set -e

# docker build -t gcr.io/bloco-267611/bloco-api:vh14 .

# docker push gcr.io/bloco-267611/bloco-api:vh14

# kubectl set image deployment/bloco-api bloco-api=gcr.io/bloco-267611/bloco-api:vh14

gcloud app deploy staging.yaml --configuration=default --stop-previous-version --version production --verbosity=debug
