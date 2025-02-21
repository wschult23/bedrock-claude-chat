#!/bin/bash

source .bedrock-chat/bin/activate

export TABLE_NAME=BedrockChatStack-DatabaseConversationTable03F3FD7A-6MRLRF9SJYCO
export ACCOUNT=318046664295
export REGION=us-east-1
export BEDROCK_REGION=us-east-1
export DOCUMENT_BUCKET=bedrockregionresourcessta-useast1documentbucket038-hr2wdpkdzi1j
export LARGE_MESSAGE_BUCKET=bedrockchatstack-largemessagebucketad0c9b6b-r0ac6d9stgiv
export USER_POOL_ID=us-east-1_D3RsHAoxz
export CLIENT_ID=52ao1roplfdkjg6imcsotocjc4

poetry run uvicorn app.main:app  --reload --host 0.0.0.0 --port 8000


#PATH=$PATH:$LAMBDA_TASK_ROOT/bin \
#    PYTHONPATH=$PYTHONPATH:/opt/python:$LAMBDA_RUNTIME_DIR \
#    exec python -m uvicorn --port=$PORT app.main:app
