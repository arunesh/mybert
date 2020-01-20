#!/bin/bash

BASELINE_PATH=/home/ubuntu/
DEVSET_PATH=/home/ubuntu/

python run_nq.py \
  --logtostderr \
  --bert_config_file=$BASELINE_PATH/bert-joint-baseline/bert_config.json \
  --vocab_file=$BASELINE_PATH/bert-joint-baseline/vocab-nq.txt \
  --predict_file=$DEVSET_PATH/kaggle-dev/simplified-nq-test.jsonl \
  --init_checkpoint=$BASELINE_PATH/bert-joint-baseline/bert_joint.ckpt \
  --do_predict \
  --output_dir=bert_model_output-k \
  --output_prediction_file=bert_model_output-k/predictions.json
