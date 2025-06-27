# Record all merge frequencies to apply our attack in controlled experiments.
test_id=0
experiment_dir=experiments/mixed_languages/n_112/$test_id
lang_code=en
corpus_dir=/gscratch/scrubbed/alisaliu/oscar-corpus/processed

python -m dump_frequencies \
    --experiment_dir $experiment_dir \
    --lang_code $lang_code \
    --corpus_dir $corpus_dir


test_id=0
experiment_dir=../../experiments/domains/n_6/$test_id 
corpus_dir=/Users/sabrinavan/Documents/Princeton/Spring2025/cos484/COS484_final_proj/RedPajama/domains

lang_code=arxiv50, books50, commoncrawl5, stackexchange200, wiki_texts30,