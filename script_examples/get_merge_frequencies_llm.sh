# Record all merge frequencies to apply our attack on commercial tokenizers.
model_name=gpt4o
experiment_dir=experiments/llm_tokenizers/$model_name
lang_code=en
corpus_dir=/gscratch/scrubbed/alisaliu/oscar-corpus/processed

python -m dump_frequencies \
    --experiment_dir $experiment_dir \
    --lang_code $lang_code \
    --corpus_dir $corpus_dir \
    --model_name $model_name


model_name=qwen3
experiment_dir=/Users/sabrinavan/Documents/Princeton/Spring2025/cos484/COS484_final_proj/experiments/llm/$model_name
corpus_dir=/Users/sabrinavan/Documents/Princeton/Spring2025/cos484/COS484_final_proj/RedPajama/domains

python -m dump_frequencies \
    --experiment_dir $experiment_dir \
    --lang_code $lang_code \
    --corpus_dir $corpus_dir \
    --model_name $model_name

lang_code=Batchfile

# 
