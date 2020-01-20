#!/bin/bash

BASELINE_PATH=/home/ubuntu/
DEVSET_PATH=/home/ubuntu/

python /home/ubuntu/mybert/google-research/natural-questions/nq_eval.py \
  --logtostderr \
  --gold_path=$DEVSET_PATH/tiny-dev/nq-dev-sample.jsonl.gz \
  --predictions_path=bert_model_output/predictions.json
